# the CI makefile for integrating changes to 
# deployment

all: installdeps build upload

installdeps:
	@echo 📦️ installing dependencies && \
 	yarn install

build:
	@echo 🏗️ building static site && \
 	yarn build

# target is the "solairaj.rf.gd"
upload:
	@echo "🥤️ uploading the files to server"
	ncftpput -R -v -u epiz_24158721 \
	-p xqLpzmp4o4bcrk ftpupload.net \
	/htdocs \
	out/*