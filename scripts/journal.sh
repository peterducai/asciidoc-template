#!/bin/bash

ctr1=$(buildah from "${1:-fedora}")

## Get all updates and install ruby
buildah run "$ctr1" -- dnf update -y
buildah run "$ctr1" -- dnf install -y rubygems liberation-fonts-common liberation-sans-fonts redhat-display-fonts redhat-text-fonts
buildah run "$ctr1" -- gem install asciidoctor
buildah run "$ctr1" -- gem install --pre asciidoctor-pdf
buildah run "$ctr1" -- gem install coderay pygments.rb rouge
buildah run "$ctr1" -- mkdir -p /workdir

## Include some buildtime annotations
buildah config --annotation "com.example.build.host=$(uname -n)" "$ctr1"

## Commit this container to an image name
buildah commit "$ctr1" "${2:-$USER/asciidoctor-journal}"



# sudo yum install redhat-display-fonts redhat-text-fonts
# Note that Red Hat Enterprise Linux/CentOS users will need to enable Fedora EPEL first.