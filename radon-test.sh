#!/usr/bin/env bash

## radon tests

#############
## install ##
#############

# install pkgKitten for user
radon --install pkgKitten && radon --remove pkgKitten
# install pkgKitten globally
radon --install pkgKitten --global && radon --remove pkgKitten --global

####################
## install_github ##
####################

# install ropenscilabs/dirdf for user
radon --install_github ropenscilabs/dirdf && radon --remove dirdf
# install ropenscilabs/dirdf globally
radon --install_github ropenscilabs/dirdf --global && radon --remove dirdf --global

# remove devtools
radon --remove devtools && radon --remove devtools --global
# try to install ropenscilabs/dirdf with devtools missing
radon --install_github ropenscilabs/dirdf && radon --remove dirdf
# add back devtools
radon --install devtools --global
# try to install ropenscilabs/dirdf with HTTR_CAINFO missing from .Renviron
mv ~/.Renviron ~/.Renviron.old
radon --install_github ropenscilabs/dirdf && radon --remove dirdf
radon --install_github ropenscilabs/dirdf --global && radon --remove dirdf --global
mv ~/.Renviron.old ~/.Renviron

###################
## install_local ##
###################

# use gh-dl to download ropenscilabs/dirdf
gh-dl --user=ropenscilabs --pkg=dirdf --path=/tmp

# install ropenscilabs/dirdf for user
radon --install_local /tmp/dirdf.tar.gz && radon --remove dirdf
# install ropenscilabs/dirdf globally
radon --install_local /tmp/dirdf.tar.gz --global && radon --remove dirdf --global

# remove tempfile
rm /tmp/dirdf.tar.gz

###################
## install_prior ##
###################

# install pkgKitten 0.1.0 for user
radon --install_prior pkgKitten,0.1.0 && radon --remove pkgKitten
# install pkgKitten 0.1.0 globally
radon --install_prior pkgKitten,0.1.0 --global && radon --remove pkgKitten --global

# remove purrr and/or httr
radon --remove httr && radon --remove httr --global
# try to install ropenscilabs/dirdf with purrr and/or httr missing
radon --install_prior pkgKitten,0.1.0 && radon --remove pkgKitten
# try to install ropenscilabs/dirdf with HTTR_CAINFO missing from .Renviron
mv ~/.Renviron ~/.Renviron.old
radon --install_prior pkgKitten,0.1.0 && radon --remove pkgKitten
radon --install_prior pkgKitten,0.1.0 --global && radon --remove pkgKitten --global
mv ~/.Renviron.old ~/.Renviron

############
## remove ##
############

# remove pkgKitten for user
radon --remove pkgKitten
# remove pkgKitten globally
radon --remove pkgKitten --global

##########
## test ##
##########

# test pkgKitten for user
radon --test pkgKitten
# test pkgKitten globally
radon --test pkgKitten --global

############
## update ##
############

# install pkgKitten 0.1.0 for user; update just pkgKitten for user
radon --install_prior pkgKitten,0.1.0 && radon --update pkgKitten && radon --remove pkgKitten
# install pkgKitten 0.1.0 globally; update just pkgKitten globally
radon --install_prior pkgKitten,0.1.0 --global && radon --update pkgKitten --global && radon --remove pkgKitten --global
# update all packages for user
radon --install_prior pkgKitten,0.1.0 && radon --update && radon --remove pkgKitten
# update all packages globally
radon --install_prior pkgKitten,0.1.0 --global && radon --update --global && radon --remove --global