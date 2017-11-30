#!/usr/bin/sh

if [ $# -lt 1 ]; then
  echo 1>&2 "$0: not enough arguments. Please pass the WAR file name !!!"
  exit 2
elif [ $# -gt 1 ]; then
  echo 1>&2 "$0: too many arguments. Please only pass the WAR file name !!!"
  exit 2
fi

echo $1
echo "Pankaj"
war_file_name=$1
file_name=$(basename "$war_file_name")
extension="${war_file_name##*.}"
file_name="${file_name%.*}"

if [ $extension != "war" ]; then
  echo 1>&2 "$0: Invalid arguments. Please pass valid WAR file with version name !!!"
  exit 2 
fi

echo "Cleaning up the deploy folder ..."
/usr/bin/rm -rf ./deploy/*
/usr/bin/unzip $war_file_name -d ./deploy/$file_name
/usr/bin/cp -f Application.settings ./deploy/$file_name/config/Application.settings
/usr/local/java/latest/bin/jar -cvf ./deploy/$war_file_name -C ./deploy/$file_name .
exit 0
