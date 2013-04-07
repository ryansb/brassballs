b:GET '/touchme' filer
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

asdf() {
	http::status '200'
	ls
}
