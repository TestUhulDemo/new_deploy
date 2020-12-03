#!/bin/sh
echo "starting deploy process"
git remote add gigalixir https://uhul.demo%40gmail.com:a8c43592-f298-43d2-b236-9cd89a45924d@git.gigalixir.com/new-deploy-something.git
BRANCH=$(if [ "$TRAVIS_PULL_REQUEST" == "false" ]; then echo $TRAVIS_BRANCH; else echo $TRAVIS_PULL_REQUEST_BRANCH; fi)
echo "TRAVIS_BRANCH=$TRAVIS_BRANCH, PR=$PR"
echo "------------------------------------"
echo "BRANCH=$BRANCH"
if [ "$BRANCH" == "master" ]; then
  echo "Pushing HEAD to master branch on Gigalixir."
  git push gigalixir HEAD:master
  echo "Deploy completed."
fi
echo "Exiting."

