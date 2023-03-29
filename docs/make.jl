using MandelbrotFractal
using Documenter

DocMeta.setdocmeta!(MandelbrotFractal, :DocTestSetup, :(using MandelbrotFractal); recursive=true)

makedocs(;
    modules=[MandelbrotFractal],
    authors="Vladimir <dezem@bk.ru> and contributors",
    repo="https://github.com/vlmikheev/MandelbrotFractal.jl/blob/{commit}{path}#{line}",
    sitename="MandelbrotFractal.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://vlmikheev.github.io/MandelbrotFractal.jl",
        edit_link="master",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/vlmikheev/MandelbrotFractal.jl",
    devbranch="master",
)
