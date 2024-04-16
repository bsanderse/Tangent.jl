using Tangent
using Documenter

DocMeta.setdocmeta!(Tangent, :DocTestSetup, :(using Tangent); recursive=true)

makedocs(;
    modules=[Tangent],
    authors="Benjamin Sanderse <bsanderse@gmail.com> and contributors",
    sitename="Tangent.jl",
    format=Documenter.HTML(;
        canonical="https://bsanderse.github.io/Tangent.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/bsanderse/Tangent.jl",
    devbranch="main",
)
