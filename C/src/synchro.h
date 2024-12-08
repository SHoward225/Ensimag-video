#ifndef SYNCHRO_H
#define SYNCHRO_H

#include "ensitheora.h"
#include <stdbool.h>
#include <pthread.h>

extern bool fini;

// ================================================================
/* Les extern des variables pour la synchro ici */

extern pthread_mutex_t mutex_window;   // Protéger la taille de la fenêtre
extern pthread_mutex_t mutex_texture; // Protéger les textures

extern pthread_cond_t cond_window_ready;  // Signal pour la fenêtre prête
extern pthread_cond_t cond_texture_ready; // Signal pour les textures prêtes


/* Fonctions de synchro à implanter */

// ================================================================

void envoiTailleFenetre(th_ycbcr_buffer buffer);
void attendreTailleFenetre();

void attendreFenetreTexture();
void signalerFenetreEtTexturePrete();

void debutConsommerTexture();
void finConsommerTexture();

void debutDeposerTexture();
void finDeposerTexture();

#endif
