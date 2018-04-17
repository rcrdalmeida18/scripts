cd ~

git clone git clone https://github.com/SpiderLabs/owasp-modsecurity-crs.git

sudo mkdir /etc/httpd/modsecurity-crs/

cd owasp-modsecurity-crs
sudo cp owasp-modsecurity-crs/crs-setup.conf.example /etc/httpd/modsecurity-crs/crs-setup.conf
sudo cp -r owasp-modsecurity-crs/rules /etc/httpd/modsecurity-crs/

