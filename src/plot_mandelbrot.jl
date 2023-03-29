using UnicodePlots
using MandelbrotFractal

y = -1:0.01:1
x = -2:0.01:0.5


A = zeros(length(x),length(y))

for ix = 1:length(x)
  for iy = 1:length(y)
    c = complex(x[ix],y[iy])
    A[ix,iy] = abs(mandelbrot(c))
  end
end


heatmap(A, width=100)

