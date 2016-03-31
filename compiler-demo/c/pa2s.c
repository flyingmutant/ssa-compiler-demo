#include "pa2s.h"

void pa2s(const rgba_pa *restrict pa, rgba_s *restrict s, size_t n)
{
	for (size_t i = 0; i < n; i++) {
		s[i].r = pa->r[i];
		s[i].g = pa->g[i];
		s[i].b = pa->b[i];
		s[i].a = pa->a[i];
	}
}
