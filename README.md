# CentOS - Base PHP

This image is the parent for a number of downstream images that make use of PHP either as a commandline tool or for php-fpm. Based on CentOS 7 and CentOS 8, this image is meant to be minimal and aims to support the needs of a WordPress site. 

## Usage

This image, by itself, is not particularly useful. When run it passes arguments to PHP. 

## Building

This project takes advantage of custom build phase hooks as described at https://docs.docker.com/docker-hub/builds/advanced/. When setting up builds on docker hub create automated builds with rules to build for the master branch for each PHP version you want built. Currently this image is built with 7.2, 7.3 and 7.4.
