curl -u $1 https://api.github.com/user/repos -d "{\"name\":\"$2\"}"
git init
git add .
git commit -a -m "added all"
git remote rm origin
git remote add origin "ssh://git@github.com/$1/$2.git"
git remote -v
git push -u origin master
