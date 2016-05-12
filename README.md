# radon

**r** **ad**min **o**n \***n**ix

{install,install_github,install_local,remove,test,update} R packages. By default performs action for the user and not globally.

## Usage
```
radon [option...] [R packages]

    -h, --help          display help
    -g, --global        perform action globally
    -i, --install       install R package(s)
    --install_github    install R package(s) from github.com
    --install_local     install R package(s) from filesystem
    -t, --test          test R package(s)
    -r, --remove        remove R package(s)
    -u, --update        update R package(s); if no package given update all packages
```

## Assumptions
* If using `--global`, assumes ability to run sudo.
* If using `--install`, package(s) must be available on CRAN.
* If using `--install_github`, package(s) are of the form username/package.
* `devtools` package is required to install from github.
* R packages must be comma delimited without quotes; see examples below.

## Examples
```
radon --install dplyr,ggplot2           # install dplyr,ggplot2 packages for the user
radon --install_github hadley/rvest     # install hadley/rvest package from github.com for the user
radon --install_local dir/pkg.tgz       # install pkg.tgz package within dir/ on the local filesystem
radon --remove dplyr,ggplot2            # remove dplyr,ggplot2 packages for the user
radon --test dplyr,ggplot2 -g           # test dplyr,ggplot2 packages globally
radon --update                          # update all packages for the user
```

## [Standing on the shoulders](https://en.wikipedia.org/wiki/Standing_on_the_shoulders_of_giants)
* Thanks to [Hadley Wickham](https://github.com/hadley) for his development of the [devtools](https://github.com/hadley/devtools) package.
* Thanks to [Jeff Allen](https://github.com/trestletech) for a StackOverflow [answer](http://stackoverflow.com/questions/22298187/r-shiny-shiny-server-issue-with-finding-packages?answertab=votes#tab-top) which gave me the base idea to begin developing `radon`.
