using Tangent
using Test

@testset "Numerical derivative" begin
    f(x) = 2x+1
    g(x) = x^3 - x
    @test numderiv(f,3,1) == 2
    @test numderiv(g,2) ≈ 11 atol = 1e-8

end
