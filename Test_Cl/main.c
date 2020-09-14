#include"sort.h"
 
int main(){
    bub_sort();
    int x = x; // BAD: undefined behavior occurs here
    x = 0;    
    return 0;

}
