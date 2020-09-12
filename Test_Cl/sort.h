#ifndef SORT_H
#define SORT_H
 
#include<stdio.h>
#include<time.h>
#include<stdlib.h>
 
#define N 10
#define swap(a,b) {a^=b;b^=a;a^=b;}
#define ins(a,b,c) for( a = b ; a < c ; ++a)
 
void bub_sort();
 
#endif