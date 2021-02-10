#
# we assume you already cloned epub
#
quickstart:
	# git clone https://github.com/weitblick/epub.git
	# cd epub
	mkdir -p exampleSite/themes
	cd exampleSite/themes; git clone https://github.com/weitblick/epub.git
	cd exampleSite/themes/epub; rm -rf .git
	cd exampleSite/themes/epub; rm -rf exampleSite   # remove the example site in the theme
	cd exampleSite; hugo
	cd exampleSite; bash ./deploy.sh
	echo "Your example epub is generated at"
	echo
	echo "exampleSite/ebook.epub"
	echo



clean:
	rm -rf exexampleSite/themes
	rm -rf exexampleSite/*.epub