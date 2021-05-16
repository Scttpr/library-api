#!/bin/sh


displayDone() {
  echo 'done !'
}

echo 'Checking if NodeJS is installed'
if which node > /dev/null
  then
    echo 'Node is correctly installed'
  else
    echo 'Installing NodeJS...'
    apt install nodejs npm
    displayDone
  fi

echo 'Moving to project directory...'
cd data/library/api || exit
displayDone

echo 'Installing dependencies...'
npm install
displayDone

echo 'Building project'
npm run build
displayDone
