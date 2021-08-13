# documenter-latex

[![][action-img]][action-url]

The docker container action to support PDF generation of JuliaZH.jl

Example configuration from [JuliaZH.jl]:

```yml
name: Compile PDF

on:
  push:
    tags: 'v*'

jobs:
  build_pdf:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v2
      - name: Build and deploy
        timeout-minutes: 90
        uses: JuliaCN/documenter-latex-action@master
        with:
          project_dir: 'doc'
          format: pdf # trigger the pdf compilation in our doc/make.jl
      - name: upload complied results
        uses: actions/upload-artifact@v2
        with:
          name: compiled contents
          path: doc/build/*.pdf
```


[JuliaZH.jl]: https://github.com/JuliaCN/JuliaZH.jl

[action-img]: https://github.com/JuliaCN/JuliaZH.jl/workflows/Compile%20PDF/badge.svg
[action-url]: https://github.com/JuliaCN/JuliaZH.jl/actions
