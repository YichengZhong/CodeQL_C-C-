#include"sort.h"
void bub_sort(){
    int *in;
    int i , j;
    in = malloc(N*sizeof(int));
    srand((unsigned)time(NULL));
    ins(i,0,N){
        in[i] = rand()%100;
    }
     
    ins(i,0,N){
        printf("%d%s",in[i],i == N-1 ? "\n" : "->");
    }
 
    ins(i,0,N-1){
        ins(j,i,N){
            if(in[i] > in[j]){
                swap(in[i] , in[j]);
            }
        }
    }
 
    ins(i,0,N){
        printf("%d%s" , in[i] , i == N-1 ? "\n" : "->");
    }
    free(in);
    in = NULL;
}