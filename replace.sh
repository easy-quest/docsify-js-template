#!/usr/bin/env bash
# Replacement utility script.
#
# Следуйте инструкциям в README.md чтобы использовать этот скрипт, а затем удалить его, когда вы закончите.

set -e
cd docs

## ИЗМЕНИТЕ ИХ С ПОМОЩЬЮ ВАШИХ ЗНАЧЕНИЙ

MY_TITLE='my-site-docs'
MY_SUBTITLE='My first repo docs by docsify'
MY_USERNAME='easy-quest'
MY_PROJECT_SLUG=${MY_TITLE}

## НЕ ИЗМЕНЯТЬ ПОСЛЕ СТРОКИ ВЫШЕ

MY_REPO="$MY_USERNAME\/$MY_PROJECT_SLUG"
MY_GETTING_STARTED="$MY_PROJECT_SLUG"

ORIGINAL_TITLE='DocsifyJS Template'
ORIGINAL_SUBTITLE='Начальный шаблон для сайта документов на основе markdown'
ORIGINAL_REPO='easy-quest\/docsify-js-template'
ORIGINAL_GETTING_STARTED='docsifyjs-template'

PATTERN="s/$ORIGINAL_TITLE/$MY_TITLE/g
s/$ORIGINAL_REPO/$MY_REPO/g
s/$MY_GETTING_STARTED/$ORIGINAL_GETTING_STARTED/g
s/$ORIGINAL_SUBTITLE/$MY_SUBTITLE/g"

echo 'PATTERN'
echo "$PATTERN"

sed -i'' "$PATTERN" *

echo "Done!"
