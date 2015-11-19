# radon

**r** **ad**min **o**n \***n**ix

{install,remove,test,update} R packages. By default performs action for the user and not globally.

## Usage
```
radon [option...] [R packages]

    -h, --help          display help
    -g, --global        perform action globally
    -i, --install       install R package(s)
    -t, --test          test R package(s)
    -r, --remove        remove R package(s)
    -u, --update        update R package(s); if no package given update all packages
```

## Assumptions
* If using global option, assumes ability to run sudo.
* R packages must be comma delimited without quotes; see examples below.
* Assumes package is available on CRAN; cannot install from github ([yet](https://github.com/curtisalexander/radon/issues/1))

## Examples
```
radon --install dplyr,ggplot2 # install dplyr,ggplot2 packages for the user

radon --remove dplyr,ggplot2 # remove dplyr,ggplot2 packages for the user

radon --test dplyr,ggplot2 -g # test dplyr,ggplot2 packages globally

radon --update # update all packages for the user
```
