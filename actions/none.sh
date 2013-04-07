b:GET '/touchme' filer
b:GET '/bigger' bigger
b:GET '/test' asdf


filenotfound() {
	http::status 404
	echo $REQUEST_PATH could not be found...
}

filer() {
	pwd
	touch ./WORKED
	if [ -f ./WORKED ]; then
		http::status '200'
		http::content_type "text/html"
	else
		http::status '400'
		http::content_type "text/html"
	fi
}

bigger() {
	cat /dev/urandom | dd count=10240 bs=1024  2>/dev/null >> /tmp/jna696988w
	du -hs /tmp/jna696988w
}

asdf() {
	http::status '200'
	ls
}
