

push: verify
	scp *.json hsc.io:/var/www/encJson/.

verify:
	jsonlint *.json > /dev/null

fetchdesc:
	rm -rf MPA ; mkdir MPA ;
	for i in {1..147} ; do \
		curl "https://s3.amazonaws.com/oceanalert/MPA_ca/$$i.html" > "MPA/$$i.html" ; \
	done
