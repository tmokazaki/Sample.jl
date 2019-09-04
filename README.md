# Content

This will generate simple line chart by using unicodeplot.
```
$ julia --project=. src/sample.jl
```

In addition, this can generate executable binary with [PackageCompiler](https://github.com/JuliaLang/PackageCompiler.jl)
```
$ julia --project=. build/gen_executable.jl
```

This will make executable under builddir. You can get same kind results as the colling script directly.
```
$ ./builddir/sample
```
