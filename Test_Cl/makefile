OBJS = main.o sort.o
main: $(OBJS)
	gcc $(OBJS) -o main
main.o: main.c sort.h
	gcc -c main.c -o main.o
sort.o: sort.c sort.h
	gcc -c sort.c -o sort.o
clean:
	rm -rf *.o main