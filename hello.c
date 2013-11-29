#include <stdio.h>
#include <stdlib.h>

typedef struct nextnode nextnode;
typedef struct node node;

struct nextnode {
	int x;
	struct node* next;
};

struct node {
	int x;
	struct nextnode* next;
};

int main(){
	struct node root;

    //root->next = 0;
    //root->x = 5;
	int a = sizeof(int);
	int b = sizeof(int[5]);
	printf("Hello World! a = %d, b = %d\n", a, b);
	return 0;
}