export numderiv
"""
    numderiv(f,x₀,ϵ=1e-7)

    returns approximate derivative of ``f(x)'' at ``x_0'' using finite difference approximation

```julia-repl
julia> f(x) = x^2
'''
"""
function numderiv(f, x₀, ϵ=1e-7)
    df = f(x₀+ϵ) - f(x₀-ϵ)
    return df/(2*ϵ)
end
