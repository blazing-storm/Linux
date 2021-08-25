// Bottom up approch to build a min Heap
#include<stdio.h>
#include<stdlib.h>

struct minHeap {
    int size;
    unsigned capacity;
    int* array;
};

struct minHeap* createHeap(unsigned capacity) {
    struct minHeap* heap = (struct minHeap*) malloc(sizeof(struct minHeap));

    if(!heap)
	return NULL;

    heap->size = 0;
    heap->capacity = capacity;

    heap->array = (int*) malloc(sizeof(int)*capacity);

    return heap;
}

void insert(struct minHeap* heap, int x) {
    if(heap->size == heap->capacity) {
	printf("Heap Full!");
	return;
    }

    heap->array[heap->size] = x;
    
    // percolate up
    int currIndex = heap->size;

    while(currIndex > 0) {
	int parentIndex = (currIndex - 1) / 2;
	if(heap->array[currIndex] < heap->array[parentIndex]) {
	    int temp = heap->array[currIndex];
	    heap->array[currIndex] = heap->array[parentIndex];
	    heap->array[parentIndex] = temp;
	}
	else
	    break;

	currIndex = parentIndex;
    }

    heap->size += 1;
}

void percolate_down(struct minHeap* heap, int currIndex) {
    int child1 = 2 * currIndex + 1;
    int child2 = 2 * currIndex + 2;

    while(child2 < heap->size) {
	if(heap->array[child1] < heap->array[child2]) {
	    if(heap->array[child1] < heap->array[currIndex]) {
		int x = heap->array[child1];
		heap->array[child1] = heap->array[currIndex];
		heap->array[currIndex] = x;
		currIndex = child1;
	    }
	    else break;
	}
	else {
	    if(heap->array[child2] < heap->array[currIndex]) {
		int x = heap->array[child2];
		heap->array[child2] = heap->array[currIndex];
		heap->array[currIndex] = x;
		currIndex = child2;
	    }
	    else break;
	}
	child1 = 2 * currIndex + 1;
	child2 = 2 * currIndex + 2;
    }

    if(child1 < heap->size) {
	if(heap->array[child1] < heap->array[currIndex]) {
	    int x = heap->array[child1];
	    heap->array[child1] = heap->array[currIndex];
	    heap->array[currIndex] = x;
	}
    }
}

int delete(struct minHeap* heap) {
    if(heap->size == 0)
	return -1;

    int temp = heap->array[0];
    heap->array[0] = heap->array[heap->size-1];
    heap->array[heap->size-1] = temp;
    heap->size--;

    // percolate down
    percolate_down(heap, 0);

    return temp;
}

void display(struct minHeap* heap) {
    for(int i=0; i < heap->size; i++) {
	printf("%d ", heap->array[i]);
    }
    printf("\n");
}

void heapify(struct minHeap* heap) {
    int index = (heap->size / 2) - 1;

    for(int i=index; i>=0; i--) {
	percolate_down(heap, i);
    }
}

int main() {
    int n;
    scanf("%d", &n);

    struct minHeap* heap = createHeap(n);

    for(int i=0; i<n; i++) {
	scanf("%d", &heap->array[i]);
    }
    heap->size = n;

    heapify(heap);

    display(heap);
}
