#!/bin/bash

# Actualiza el README con los archivos que tenga el proyecto, para facilitar su acceso.
REPO_URL="`git remote -v | grep fetch | tr "\t" ' ' | tr -s ' ' | cut -d ' ' -f 2 | sed 's/\.git$//'`/blob/master"

echo -e "# Tesina\n\nArchivos:\n" > README.md
for file in `find * -type f -name '*.md'`; do
  echo "* [$file]($REPO_URL/$file)" >> README.md
done
