#!/bin/bash
output_dir="/root/development/the-peon-project.github.io"
cd ./manual/.
docker run --rm -it -v ${PWD}:/docs -v $output_dir:/docs/site squidfunk/mkdocs-material build
cp ./site/CNAME $output_dir/.
cp ./site/LICENSE $output_dir/.