using MandelbrotFractal
using Test 

include("testInputs.jl")

@testset "sanity checks" begin
    @test mandelbrot(0) == 0

end

