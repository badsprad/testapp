#!/usr/bin/env bash

# usage: "sh ./theme-switcher ios  ...OR...  sh ./theme-switcher md"

LINE_MD=$(awk '/md/{print NR}' main.vue)
LINE_IOS=$(awk '/ios/{print NR}' main.vue)

# sh ./theme-switcher ios
if [ -n "$1" ] && [ $1 = "ios" ] && [ $LINE_MD = 3 ]
then
	# change to IOS
	sed -i '' -e "3s/md/ios/" main.vue
fi

# sh ./theme-switcher md
if [ -n "$1" ] && [ $1 = "md" ] && [ $LINE_IOS = 3 ]
then
	# change to MD
	sed -i '' -e "3s/ios/md/" main.vue
fi