#include "ensitheora.h"
#include "synchro.h"


// ================================================================
/* les variables pour la synchro, ici */

/* Variables pour la synchronisation */
pthread_mutex_t mutex_window = PTHREAD_MUTEX_INITIALIZER;      // Protège la fenêtre
pthread_cond_t condition_window = PTHREAD_COND_INITIALIZER;   // Signal pour la fenêtre prête
bool cond_window = false;                                     // Indique si la fenêtre est prête

pthread_mutex_t mutex_texture = PTHREAD_MUTEX_INITIALIZER;    // Protège les textures
pthread_cond_t condition_texture = PTHREAD_COND_INITIALIZER;  // Signal pour la texture prête
bool cond_texture = false;                                    // Indique si une texture est prête

pthread_mutex_t mutex_prod_cons_text = PTHREAD_MUTEX_INITIALIZER; // Protège le producteur-consommateur
pthread_cond_t condition_full = PTHREAD_COND_INITIALIZER;         // Signal quand la file est pleine
pthread_cond_t condition_empty = PTHREAD_COND_INITIALIZER;        // Signal quand la file est vide
int texture_count = 0; // Nombre de textures disponibles dans la file


// ================================================================

/* l'implantation des fonctions de synchro ici */


void envoiTailleFenetre(th_ycbcr_buffer buffer) {
    pthread_mutex_lock(&mutex_window);

    windowsx = buffer[0].width;  // Définir la largeur
    windowsy = buffer[0].height; // Définir la hauteur

    cond_window = true; // Indiquer que la fenêtre est prête
    pthread_cond_signal(&condition_window); // Signaler aux threads en attente

    pthread_mutex_unlock(&mutex_window);
}


void attendreTailleFenetre() {
    pthread_mutex_lock(&mutex_window);

    // Attendre que la fenêtre soit définie
    while (!cond_window) {
        pthread_cond_wait(&condition_window, &mutex_window);
    }

    pthread_mutex_unlock(&mutex_window);
}


void signalerFenetreEtTexturePrete() {
    pthread_mutex_lock(&mutex_texture);

    cond_texture = true; // Indiquer qu'une texture est prête
    pthread_cond_signal(&condition_texture); // Signaler aux threads en attente

    pthread_mutex_unlock(&mutex_texture);
}


void attendreFenetreTexture() {
    pthread_mutex_lock(&mutex_texture);

    // Attendre que la texture soit prête
    while (!cond_texture) {
        pthread_cond_wait(&condition_texture, &mutex_texture);
    }

    pthread_mutex_unlock(&mutex_texture);
}


void debutConsommerTexture() {
    pthread_mutex_lock(&mutex_prod_cons_text);

    // Attendre qu'il y ait au moins une texture disponible
    while (texture_count == 0) {
        pthread_cond_wait(&condition_empty, &mutex_prod_cons_text);
    }

    pthread_mutex_unlock(&mutex_prod_cons_text);
}


void finConsommerTexture() {
    pthread_mutex_lock(&mutex_prod_cons_text);

    texture_count--; // Réduire le compteur de textures

    // Signaler qu'une place est disponible pour un producteur
    pthread_cond_signal(&condition_full);

    pthread_mutex_unlock(&mutex_prod_cons_text);
}


void debutDeposerTexture() {
    pthread_mutex_lock(&mutex_prod_cons_text);

    // Attendre que la file ne soit pas pleine
    while (texture_count == NBTEX) {
        pthread_cond_wait(&condition_full, &mutex_prod_cons_text);
    }

    pthread_mutex_unlock(&mutex_prod_cons_text);
}


void finDeposerTexture() {
    pthread_mutex_lock(&mutex_prod_cons_text);

    texture_count++; // Augmenter le compteur de textures

    // Signaler qu'une texture est disponible pour un consommateur
    pthread_cond_signal(&condition_empty);

    pthread_mutex_unlock(&mutex_prod_cons_text);
}
