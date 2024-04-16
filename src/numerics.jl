export numderiv
export tangent
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

"""
    tangent()

Returns the approximate tangent of ``f(x)''

"""
function tangent(f, x₀, ϵ=1e-12)
    slope = numderiv(f,x₀,ϵ)
    r(x) = slope * (x - x₀) + f(x₀)
    return r
end