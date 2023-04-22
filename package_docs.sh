#!/bin/bash
cd ./manual/.
docker run --rm -it -v ${PWD}:/docs squidfunk/mkdocs-material build