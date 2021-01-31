ASSET=./assets/img

sync:
	gsutil cp ./index.html gs://hacoviva.jp
	gsutil cp -r ./assets gs://hacoviva.jp
	gsutil cp -r ./css gs://hacoviva.jp
.PHONY: sync

convert-webp:
	cwebp -lossless $(ASSET)/bg-header.jpg -o $(ASSET)/bg-header.webp
	cwebp -lossless $(ASSET)/bg-signup.jpg -o $(ASSET)/bg-signup.webp
	cwebp -lossless $(ASSET)/event00.jpg -o $(ASSET)/event00.webp
	cwebp -lossless $(ASSET)/event01.jpg -o $(ASSET)/event01.webp
	cwebp -lossless $(ASSET)/event02.jpg -o $(ASSET)/event02.webp
	cwebp -lossless $(ASSET)/about.png -o $(ASSET)/about.webp
.PHONY: convert-webp
