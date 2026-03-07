#!/bin/bash
output_dir="/home/richard/development/the-peon-project.github.io"
cd ./manual/.
docker run --rm -it -v ${PWD}:/docs zensical/zensical build
cp -r ./site/* $output_dir/