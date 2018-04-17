
# Instalação de pré-requisitos
yum install gcc make httpd-devel libxml2 pcre-devel libxml2-devel curl-devel wget

cd /opt

# Transferência do módulo
wget https://www.modsecurity.org/tarball/2.9.2/modsecurity-2.9.2.tar.gz

# Descompactação do ficheiro
tar xzfv modsecurity-2.9.2.tar.gz

cd modsecurity-2.9.2

# Script de configuração do módulo
./configure

# Instalação do módulo
make install

# Cópia dos ficheiros de configuração para o diretório do Apache
sudo cp modsecurity.conf-recommended /etc/httpd/conf.d/modsecurity.conf
sudo cp unicode.mapping /etc/httpd/conf.d/

# Adicionar o modulo ao ficheiro de configuração
# LoadModule security2_module modules/mod_security2.so
sudo vim /etc/httpd/conf.modules.d/00-base.conf
