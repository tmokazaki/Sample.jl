
using PackageCompiler
using Pkg

if in("GR",keys(Pkg.installed()))
    @eval using GR
else
    Pkg.add("GR")
    @eval using GR
end

if Sys.iswindows()
    s=joinpath(dirname(dirname(pathof(GR))),"deps","gr","bin")
    s*=';'
    if !endswith(ENV["PATH"],';')
        ENV["PATH"] *= ';'
    end
    ENV["PATH"] *= s
else
    s=joinpath(dirname(dirname(pathof(GR))),"deps","gr","lib")
    s*=':'
    if haskey(ENV, "LD_LIBRARY_PATH")
        ENV["LD_LIBRARY_PATH"] *= s
        if !endswith(ENV["LD_LIBRARY_PATH"],':')
            ENV["LD_LIBRARY_PATH"] *= ':'
        end
    else
        ENV["LD_LIBRARY_PATH"] = s
    end
end

build_executable("src/sample.jl", "sample")
