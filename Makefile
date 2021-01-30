

sync:
	gsutil cp ./index.html gs://hacoviva.jp
	gsutil cp -r ./assets gs://hacoviva.jp
	gsutil cp -r ./css gs://hacoviva.jp
