#
# we assume you already cloned epub
#
quickstart:
	# git clone https://github.com/weitblick/epub.git
	# cd epub
	mkdir -p exampleSite/themes

	cd exampleSite/themes; git clone https://github.com/weitblick/epub.git
	rm -rf exampleSite/themes/epub/.git
	rm -rf exampleSite/themes/epub/exampleSite

	cd exampleSite; hugo
	cd exampleSite; bash ./deploy.sh

	echo "Your example epub is generated at"
	echo
	echo "exampleSite/ebook.epub"
	echo


clean:
	rm -rf exampleSite/themes
	rm -rf exampleSite/*.epub