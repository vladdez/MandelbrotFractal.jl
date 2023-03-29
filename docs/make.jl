using MandelbrotFractal
using Documenter

DocMeta.setdocmeta!(MandelbrotFractal, :DocTestSetup, :(using MandelbrotFractal); recursive=true)

makedocs(;
    modules=[MandelbrotFractal],
    authors="Vladimir <dezem@bk.ru> and contributors",
    repo="https://github.com/vladdez/MandelbrotFractal.jl/blob/{commit}{path}#{line}",
    sitename="MandelbrotFractal.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://vladdez.github.io/MandelbrotFractal.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/vladdez/MandelbrotFractal.jl",
    devbranch="main",
)
