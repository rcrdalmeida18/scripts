git clone https://github.com/SpiderLabs/owasp-modsecurity-crs.git /home/jei/owasp
rm -rf /etc/httpd/modsecurity-crs/
sudo mkdir /etc/httpd/modsecurity-crs/

cd /home/jei/owasp
sudo cp crs-setup.conf.example /etc/httpd/modsecurity-crs/crs-setup.conf
sudo cp -r rules /etc/httpd/modsecurity-crs/

sudo vim /etc/httpd/conf.d/modsecurity.conf
