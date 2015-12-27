# radon

**r** **ad**min **o**n \***n**ix

{install,install_github,remove,test,update} R packages. By default performs action for the user and not globally.

## Usage
```
radon [option...] [R packages]

    -h, --help          display help
    -g, --global        perform action globally
    -i, --install       install R package(s)
    --install_github    install R package(s) from github.com
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
radon --install dplyr,ggplot2 # install dplyr,ggplot2 packages for the user

radon --install_github hadley/rvest # install hadley/rvest package from github.com for the user

radon --remove dplyr,ggplot2 # remove dplyr,ggplot2 packages for the user

radon --test dplyr,ggplot2 -g # test dplyr,ggplot2 packages globally

radon --update # update all packages for the user
```
