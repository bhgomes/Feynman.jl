using Documenter, Feynman

makedocs(
    modules = [Feynman],
    sitename = "Feynman.jl",
    pages = Any[
        "Home" => "index.md",
        "API" => "api.md",
    ],
)

deploydocs(
    repo = "github.com/bhgomes/Feynman.jl.git",
    target = "build",
)
