cd
NPS_VERSION=1.11.33.2
wget https://github.com/pagespeed/ngx_pagespeed/archive/release-${NPS_VERSION}-beta.zip -O release-${NPS_VERSION}-beta.zip
unzip release-${NPS_VERSION}-beta.zip
cd ngx_pagespeed-release-${NPS_VERSION}-beta/
wget https://dl.google.com/dl/page-speed/psol/${NPS_VERSION}.tar.gz
tar -xzf ${NPS_VERSION}.tar.gz  # extracts to psol/

cd
# check http://nginx.org/en/download.html for the latest version
NGINX_VERSION=1.10.1
wget http://nginx.org/download/nginx-${NGINX_VERSION}.tar.gz
tar -xvf nginx-${NGINX_VERSION}.tar.gz
cd nginx-${NGINX_VERSION}/
./configure --add-module=$HOME/ngx_pagespeed-release-${NPS_VERSION}-beta ${PS_NGX_EXTRA_FLAGS}
make

checkinstall --install=no --default

mv ./nginx_${NGINX_VERSION}_amd64.deb /pkg