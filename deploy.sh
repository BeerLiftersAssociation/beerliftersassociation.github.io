#/bin/bash
JEKYLL_ENV=production

git pull
echo Enter commit message for source commit and push.  Enter when complete.
read varname
git add -A
git commit -am "$varname"

jekyll build --destination ../beerliftersassociation.github.io/
cd ../beerliftersassociation.github.io/
git add -A
git commit -am "Deploy"
git push
cd ../marketing-site-source
echo "Complete"
