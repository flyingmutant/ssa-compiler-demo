#include "pa2s.h"

enum {
	ITEMS = 256,
	N = 32 * 1000 * 1000,
};


rgba_s s[ITEMS];

uint8_t r[ITEMS], g[ITEMS], b[ITEMS], a[ITEMS];

rgba_pa pa = { r, g, b, a };


int main(void)
{
	for (size_t i = 0; i < N; i++)
		pa2s(&pa, s, ITEMS);

	return 0;
}