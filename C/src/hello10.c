#include <pthread.h>
#include <stdio.h>
#include <stdlib.h>

int N=10; // 10 pour hello + 1 pour done

// ======================================= Création du Moniteur =======================================

typedef struct{
    int compteur; // Compteur partagé
    pthread_mutex_t mutex; // Mutex
    pthread_cond_t cond; // Variable de condition
} Moniteur;


// Initialisation du moniteur
void moniteur_init(Moniteur* m){
    m->compteur = 0;
    pthread_mutex_init(&m->mutex, NULL);
    pthread_cond_init(&m->cond, NULL);
}


// Detruire le moniteur
void moniteur_destroy(Moniteur* m){
    pthread_mutex_destroy(&m->mutex);
    pthread_cond_destroy(&m->cond);
}


// Incrementer cpt + reveiller threads en attente lorsqu'on atteint 10
void moniteur_incrementer(Moniteur* m){
    pthread_mutex_lock(&m->mutex);
    m->compteur++;
    printf("Hello wordl ! (Compteur = %d)\n", m->compteur);
    if (m->compteur == 10){
        pthread_cond_signal(&m->cond);
    }
    pthread_mutex_unlock(&m->mutex);
}


// Attend que le compteur soit a 10
void moniteur_attendre(Moniteur* m){
    pthread_mutex_lock(&m->mutex);
    while (m->compteur < 10){
        pthread_cond_wait(&m->cond, &m->mutex);
    }
    printf("Done !\n");
    pthread_mutex_unlock(&m->mutex);
}


// ============================= Variables globales et fonctions applicatives ==================================


// //======================= eXO1 =========================

// //Moniteur global
// Moniteur moniteur;


// // Fonction du thread "Hello"
// void* hello_thread(){
//     moniteur_incrementer(&moniteur);
//     return NULL;
// }

// // Fonction du thread "Done"
// void* done_thread(){
//     moniteur_decrementer(&moniteur);
//     return NULL;
// }

// =========================    EXO 2 ===========================

void* hello_thread(void* arg){
    Moniteur* m = (Moniteur*) arg;
    moniteur_incrementer(m);
    return NULL;
}

void* done_thread(void* arg){
    Moniteur* m = (Moniteur*) arg;
    moniteur_attendre(m);
    return NULL;
}


// ======================================= Test =======================================

int main(){

// //======================= eXO1 =========================
//     const int N = 10;
//     pthread_t thread_id[N+1]; // 10 Threads pour hello et 1 pour done

//     //INitialisation de notre moniteur global
//     moniteur_init(&moniteur);

//     //Créer les threads Hello
//     for(int i=0; i<N; i++){ // 0 -> 9 
//         pthread_create(&thread_id[i], NULL, hello_thread, NULL);
//     }

//     // Creer les threads Done
//     pthread_create(&thread_id[N], NULL, done_thread, NULL); // 1 pour done

//     // Attendre la fin de tous les threads
//     for (int i = 0; i <= N; i++){ // 0 -> 10
//         pthread_join(thread_id[i], NULL); // Attente de la fin des 11 threads
//     }

//     // Detruire le moniteur
//     moniteur_destroy(&moniteur);

// ========================= exo 2 ===========================

    pthread_t thread_id[N+1];

    Moniteur* moniteur = (Moniteur*)malloc(sizeof(Moniteur));
    if(moniteur == NULL){
        perror("Erreur d'allocation de memoire pour le moniteur");
        return EXIT_FAILURE;
    }

    moniteur_init(moniteur);

    for(int i=0; i<N; i++){
        pthread_create(&thread_id[i], NULL, hello_thread, (void*)moniteur);
    }

    pthread_create(&thread_id[N], NULL, done_thread, (void*)moniteur);

    for(int i=0; i<=N; i++){
        pthread_join(thread_id[i], NULL);
    }

    moniteur_destroy(moniteur);
    free(moniteur);


    return 0;
}