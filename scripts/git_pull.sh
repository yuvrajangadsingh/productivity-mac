parse_git_branch() {
    git branch 2> /dev/null | sed -n -e 's/^\* \(.*\)/[\1]/p'
}

git fetch
git pull ${parse_git_branch}
git pull