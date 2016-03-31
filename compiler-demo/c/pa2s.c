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

enum {
	ITEMS = 256
};

rgba_s s[ITEMS] = {0};

uint8_t r[ITEMS] = { [0 ... (ITEMS - 1)] = 'r' };
uint8_t g[ITEMS] = { [0 ... (ITEMS - 1)] = 'g' };
uint8_t b[ITEMS] = { [0 ... (ITEMS - 1)] = 'b' };
uint8_t a[ITEMS] = { [0 ... (ITEMS - 1)] = 'a' };

rgba_pa pa = { r, g, b, a };

static void pa2s(const rgba_pa *restrict pa, rgba_s *restrict s, size_t n)
{
	for (size_t x = 0; x < n; x++) {
		s[x].r = pa->r[x];
		s[x].g = pa->g[x];
		s[x].b = pa->b[x];
		s[x].a = pa->a[x];
	}
}

int main(void)
{
	for (size_t x = 0; x < (1000 * 1000); x++)
		for (size_t y = 0; y < 64; y++)
			pa2s(&pa, s, ITEMS);

	return 0;
}