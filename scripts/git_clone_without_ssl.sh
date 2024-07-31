if [ $# -ne 1 ]; then
    echo "Usage: $0 <repository_https_url>"
    exit 1
fi

repository_url="$1"

# Extract repository name from URL
repository_name=$(basename "$repository_url" .git)

# Clone the repository with SSL verification disabled
git -c http.sslVerify=false clone "$repository_url"
cd "$repository_name"
git config --local http.sslVerify false
git config --local user.email 'xyz@abc.com'