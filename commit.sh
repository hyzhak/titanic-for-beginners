set -e

if [ -z "${1}" ]; then
  echo "please define commit title: ./commit.sh 'title'"; 
  exit 1;
fi

mv -v ~/Downloads/notebook.ipynb ./notebook.ipynb
git add .
git commit -am "${1}"
git push -f
