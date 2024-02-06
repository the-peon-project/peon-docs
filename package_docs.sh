#!/bin/bash
cd ./manual/.
docker run --rm -it -v ${PWD}:/docs -v /root/peon-project/the-peon-project.github.io:/docs/site squidfunk/mkdocs-material build