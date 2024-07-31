git add .
git commit -a -m "$1"
git push || git push --set-upstream origin `git rev-parse --abbrev-ref HEAD`