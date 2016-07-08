# radon

**r** **ad**min **o**n \***n**ix: manage R packages

{install, install_github, install_local, install_prior, remove, test, update} R packages.

## Usage
```

  * install  * install_github  * install_local  * install_prior
  * remove  * test  * update

Usage: /Users/calexander/bin/radon [option...] [R packages]

  -h, --help          display help
  -g, --global        perform action globally
  -i, --install       install R pkg(s)
  --install_github    install R pkg(s) from github.com
  --install_local     install R pkg(s) from filesystem
  --install_prior     install prior version of R pkg
  -r, --remove        remove R pkg(s)
  -t, --test          test R pkg(s)
  -u, --update        update R pkg(s); if no pkg given update all pkgs

  By default performs action for the user and not globally.
```

## Assumptions
* If using `--global`, assumes ability to run sudo.
* If using `--install`, package(s) must be available on CRAN.
* If using `--install_github`, package(s) are of the form username/package.
* If using `--install_prior`, only installing a single package.
* If using `--install_prior`, package is of the form package,version.
* `devtools` package is required to install from github.
* `httr` and `purrr` are required to install a prior package version.
* R packages must be comma delimited without quotes; see examples below.

## Examples
```
radon --install dplyr,ggplot2            # install dplyr,ggplot2 pkgs for the user
radon --install_github hadley/rvest      # install hadley/rvest pkgs from github for the user
radon --install_local dir/pkg.tar.gz     # install pkg.tar.gz pkg within dir/ on the local filesystem for the user
radon --install_prior dplyr,0.4.3 -g     # install version 0.4.3 of the dplyr pkg globally
radon --remove dplyr,ggplot2             # remove dplyr,ggplot2 pkgs for the user
radon --test dplyr,ggplot2 -g            # test dplyr,ggplot2 pkgs globally
radon --update                           # update all pkgs for the user
```

## [Standing on the shoulders](https://en.wikipedia.org/wiki/Standing_on_the_shoulders_of_giants)
* Thanks to [Hadley Wickham](https://github.com/hadley) for his development of the [devtools](https://github.com/hadley/devtools) package.
* Thanks to [Jeff Allen](https://github.com/trestletech) for a StackOverflow [answer](http://stackoverflow.com/questions/22298187/r-shiny-shiny-server-issue-with-finding-packages?answertab=votes#tab-top) which gave me the base idea to begin developing `radon`.
