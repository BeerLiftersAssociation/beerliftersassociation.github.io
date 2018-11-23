#/bin/bash
JEKYLL_ENV=production

git pull
jekyll build --destination ../beerliftersassociation.github.io/
cd ../beerliftersassociation.github.io/
git add -A
git commit -am "Deploy"
cd ../marketing-site-source
echo "Complete"