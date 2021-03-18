ASSET=./assets/img

sync:
	gsutil cp ./index.html gs://hacoviva.jp
	gsutil cp -r ./assets gs://hacoviva.jp
	gsutil cp -r ./css gs://hacoviva.jp
.PHONY: sync

convert-webp:
	-cwebp -lossless $(ASSET)/bg-header.jpg -o $(ASSET)/bg-header.webp
	-cwebp -lossless $(ASSET)/bg-signup.jpg -o $(ASSET)/bg-signup.webp
	-cwebp -lossless $(ASSET)/event00.jpg -o $(ASSET)/event00.webp
	-cwebp -lossless $(ASSET)/event01.jpg -o $(ASSET)/event01.webp
	-cwebp -lossless $(ASSET)/event02.jpg -o $(ASSET)/event02.webp
	-cwebp -lossless $(ASSET)/about.png -o $(ASSET)/about.webp
	-cwebp -lossless $(ASSET)/logo-light.png -o $(ASSET)/logo-light.webp
	-cwebp -lossless $(ASSET)/logo-dark.png -o $(ASSET)/logo-dark.webp

	-cwebp -lossless $(ASSET)/20210320/howto.png -o $(ASSET)/20210320/howto.webp
	-cwebp -lossless $(ASSET)/20210320/howto_01.png -o $(ASSET)/20210320/howto_01.webp
	-cwebp -lossless $(ASSET)/20210320/howto_02.png -o $(ASSET)/20210320/howto_02.webp
	-cwebp -lossless $(ASSET)/20210320/howto_03.png -o $(ASSET)/20210320/howto_03.webp

	-cwebp -lossless $(ASSET)/20210320/01_lido.png -o $(ASSET)/20210320/01_lido.webp
	-cwebp -lossless $(ASSET)/20210320/02_reeight.jpg -o $(ASSET)/20210320/02_reeight.webp
	-cwebp -lossless $(ASSET)/20210320/03_affidamento.jpg -o $(ASSET)/20210320/03_affidamento.webp
	-cwebp -lossless $(ASSET)/20210320/04_sion.png -o $(ASSET)/20210320/04_sion.webp
	-cwebp -lossless $(ASSET)/20210320/05_butchers.jpg -o $(ASSET)/20210320/05_butchers.webp
	-cwebp -lossless $(ASSET)/20210320/06_sunnyheart.png -o $(ASSET)/20210320/06_sunnyheart.webp
	-cwebp -lossless $(ASSET)/20210320/07_madre.png -o $(ASSET)/20210320/07_madre.webp
	-cwebp -lossless $(ASSET)/20210320/08_suzu.png -o $(ASSET)/20210320/08_suzu.webp
	-cwebp -lossless $(ASSET)/20210320/09_tamasen.jpg -o $(ASSET)/20210320/09_tamasen.webp
	-cwebp -lossless $(ASSET)/20210320/10_tamaneko.jpg -o $(ASSET)/20210320/10_tamaneko.webp
	-cwebp -lossless $(ASSET)/20210320/11_orangecafe.jpg -o $(ASSET)/20210320/11_orangecafe.webp
	-cwebp -lossless $(ASSET)/20210320/12_sumire.jpg -o $(ASSET)/20210320/12_sumire.webp
	-cwebp -lossless $(ASSET)/20210320/13_bestselect.png -o $(ASSET)/20210320/13_bestselect.webp

.PHONY: convert-webp
