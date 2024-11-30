#include <pthread.h>
#include <stdio.h>

int N=10; // 10 pour hello + 1 pour done

void* hello(void* arg){
    printf("Hello wordl !\n");
    return NULL;
}

void* done(void* arg){
    printf("Done !\n");
    return NULL;
}

int main(){
    pthread_t thread_id[N+1];

    for(int i=0; i<N; i++){ // 0 -> 9 
        pthread_create(&thread_id[i], NULL, hello, NULL);
    }
    pthread_create(&thread_id[N], NULL, done, NULL); // 1 pour done

    for (int i = 0; i <= N; i++){ // 0 -> 10
        pthread_join(thread_id[i], NULL); // Attente de la fin des 11 threads
    }

    return 0;
}