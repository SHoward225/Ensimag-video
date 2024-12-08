#include <SDL2/SDL.h>
#include <assert.h>
#include <stdio.h>
#include <unistd.h>

#include "oggstream.h"
#include "stream_common.h"

// // --------- Inclusion du fichier pthread.h pour mes threads
#include <pthread.h>

//// --------- Declaration de mes threads
pthread_t theora_th, vorbis_th, theora2sdl_th;

// ================================================================

int main(int argc, char *argv[]) {
  int res;

  if (argc != 2) {
    fprintf(stderr, "Usage: %s FILE", argv[0]);
    exit(EXIT_FAILURE);
  }
  assert(argc == 2);

  printf("Argument reçu : %s\n", argv[1]); // Vérifier l'argument
  printf("Initialisation de la SDL...\n");

  // Initialisation de la SDL
  res = SDL_Init(SDL_INIT_VIDEO | SDL_INIT_AUDIO | SDL_INIT_EVENTS);
  atexit(SDL_Quit);
  assert(res == 0);

   printf("SDL initialisée avec succès.\n");

// ================================================================
  // Your code HERE
  // start the two stream readers (theoraStreamReader and vorbisStreamReader)
  // each in a thread

  printf("Lancement des threads pour Theora et Vorbis...\n");
  //--------- Creation de mes threads
  pthread_create(&theora_th, NULL, theoraStreamReader,(void*)argv[1]);
  pthread_create(&vorbis_th, NULL, vorbisStreamReader, (void*)argv[1]);
  
  // wait for vorbis thread

  //--------- Attente de la terminaison de vorbis
  pthread_join(vorbis_th, NULL);


  // 1 seconde of sound in advance, thus wait 1 seconde
  // before leaving
  sleep(1);

  // Wait for theora and theora2sdl threads
  // TODO
  /* liberer des choses ? */

  // --------- Tuer les 2 threads
  pthread_cancel(theora_th);
  pthread_cancel(theora2sdl_th);

  // --------- Apres les avoir tuer, attendre leur terminaison
  pthread_join(theora_th, NULL);
  pthread_join(theora2sdl_th, NULL);

  printf("Fin du programme principal.\n");

  exit(EXIT_SUCCESS);
}
