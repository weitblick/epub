#
# we assume you already cloned epub
#
quickstart:
	# git clone https://github.com/weitblick/epub.git
	# cd epub
	cd exampleSite
	mkdir themes
	cd themes
	git clone https://github.com/weitblick/epub.git
	cd epub
	rm -rf .git
	rm -rf exampleSite   # remove the example site in the theme
	cd ../..
	hugo
	bash ./deploy.sh
