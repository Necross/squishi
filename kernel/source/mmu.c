#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include "mmu.h"


/* Switch over once C lib is complete. 
   For now just alloc 16Mb of memory */
void* k_init_memory (void) {
    void *base_mem;

    base_mem = (void *)malloc(MAX_MEM);

    if (base_mem == NULL) {
        printf ("Unable to allocate 16MB of memory");
        return NULL;    
    }
    memset (base_mem, 0, MAX_MEM);

    // Initializing and setting up memory structure

    return (base_mem);   

}


