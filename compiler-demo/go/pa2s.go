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
)

var (
	s [ITEMS]rgba_s

	r [ITEMS]uint8
	g [ITEMS]uint8
	b [ITEMS]uint8
	a [ITEMS]uint8

	pa = rgba_pa{r[:], g[:], b[:], a[:]}
)

func pa2s(pa rgba_pa, s []rgba_s, n int) {
	for x := 0; x < n; x++ {
		s[x].r = pa.r[x]
		s[x].g = pa.g[x]
		s[x].b = pa.b[x]
		s[x].a = pa.a[x]
	}
}

func main() {
	for x := 0; x < (1000 * 1000); x++ {
		for y := 0; y < 64; y++ {
			pa2s(pa, s[:], ITEMS)
		}
	}
}
