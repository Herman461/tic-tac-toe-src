#!/usr/bin/env sh

set -e

# сборка
npm run build

# переход в каталог сборки
cd dist

# если вы публикуете на пользовательский домен
# echo 'www.example.com' > CNAME

git add -A
git commit -m 'v0.2'
git push -f git@github.com:Herman461/tic-tac-toe.git master:gh-pages

cd -