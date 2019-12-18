#!/bin/bash



#sudo dnf install redhat-text-fonts redhat-display-fonts -y
#sudo dnf install rubygem-asciidoctor* rubygem-asciidoctor* rubygem-syntax rubygem-coderay rubygem-rouge   THESE ARE NO MORE IN F31
sudo dnf install rubygems -y
gem install asciidoctor
gem install --pre asciidoctor-pdf
gem install coderay pygments.rb
gem install rouge