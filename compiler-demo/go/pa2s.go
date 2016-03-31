package main

type (
	rgba_s struct {
		r uint8
		g uint8
		b uint8
		a uint8
	}

	rgba_pa struct {
		r []uint8
		g []uint8
		b []uint8
		a []uint8
	}
)

const (
	ITEMS = 256
	N     = 32 * 1000 * 1000
)

var (
	s [ITEMS]rgba_s

	r, g, b, a [ITEMS]uint8

	pa = rgba_pa{r[:], g[:], b[:], a[:]}
)

func pa2s(pa rgba_pa, s []rgba_s, n int) {
	for i := 0; i < n; i++ {
		s[i].r = pa.r[i]
		s[i].g = pa.g[i]
		s[i].b = pa.b[i]
		s[i].a = pa.a[i]
	}
}

func main() {
	for i := 0; i < N; i++ {
		pa2s(pa, s[:], ITEMS)
	}
}
