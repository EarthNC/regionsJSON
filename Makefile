

push: verify
	scp *.json hsc.io:/var/www/encJson/.

verify:
	jsonlint *.json > /dev/null

