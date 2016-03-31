#ifndef PA2S_H
#define PA2S_H


#include <stdint.h>
#include <stdlib.h>


typedef struct {  
	uint8_t r;
	uint8_t g;
	uint8_t b;
	uint8_t a;
} rgba_s;


typedef struct {  
	uint8_t *restrict r;
	uint8_t *restrict g;
	uint8_t *restrict b;
	uint8_t *restrict a;
} rgba_pa;


void pa2s(const rgba_pa *restrict pa, rgba_s *restrict s, size_t n);


#endif