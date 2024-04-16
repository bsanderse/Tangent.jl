using Tangent
using Test

@testset "Numerical derivative" begin
    f(x) = 2x+1
    g(x) = x^3 - x
    @test numderiv(f,3,1) == 2
    @test numderiv(g,2) ≈ 11 atol = 1e-8

end

@testset "Tangents" begin
    f(x) = 2x + 1

    # linear function, so tangent will be same as original function:
    @test tangent(f,1,1)(2) == f(2)
    # 
    # @test 
end
