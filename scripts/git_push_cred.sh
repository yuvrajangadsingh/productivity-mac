git config --global user.name "Yuvraj Angad Singh"
git config --global user.email "yuvrajangad.s@gmail.com"

git add .
git commit -a -m "$1"
git push || git push --set-upstream origin `git rev-parse --abbrev-ref HEAD`

git config --global --unset user.name
git config --global --unset user.email