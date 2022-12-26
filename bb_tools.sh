#!/bin/bash
echo "Instalando pacote ferramentas"
# Amass
go install github.com/OWASP/Amass/v3/...@master

# AnalyticsRelationships
git -C ~/tools clone https://github.com/Josue87/AnalyticsRelationships.git
cd ~/tools/AnalyticsRelationships/ && go build -ldflags "-s -w"
mv ~/tools/AnalyticsRelationships/analyticsrelationships /usr/bin/

# Anew
go install github.com/tomnomnom/anew@latest

# Apktool
apt install -y apktool 

# Aquatone
wget https://github.com/michenriksen/aquatone/releases/download/v1.7.0/aquatone_linux_amd64_1.7.0.zip -O /root/tools/aquatone.zip
unzip /root/tools/aquatone.zip -d /root/tools/
rm /root/tools/README.md
rm /root/tools/LICENSE.txt
rm /root/tools/aquatone.zip
mv /root/tools/aquatone /usr/local/bin/

# Arjun
pip3 install arjun

# Assetfinder
go install github.com/tomnomnom/assetfinder@latest

# Atlas
git -C ~/tools/ clone https://github.com/m4ll0k/Atlas.git atlas
cd ~/tools/atlas
pip3 install humanfriendly

# AWS Credentials
pip install awscli
mkdir ~/.aws
echo "[default]" > ~/.aws/credentials
echo "aws_access_key_id = AKIAZUTSUQUJGOGGZXOI" >> ~/.aws/credentials
echo "aws_secret_access_key = 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" >> ~/.aws/credentials
echo "[default]" > ~/.aws/config
echo "region=us-west-2" >> ~/.aws/config
echo "output=json" >> ~/.aws/config

# Bypass Firewalls by DNS History
git -C ~/tools/ clone https://github.com/vincentcox/bypass-firewalls-by-DNS-history
chmod +x ~/tools/bypass-firewalls-by-DNS-history/bypass-firewalls-by-DNS-history.sh

# Cero
go install github.com/glebarez/cero@latest

# Chaos
go install -v github.com/projectdiscovery/chaos-client/cmd/chaos@latest

Concurl
go install github.com/tomnomnom/concurl@latest

# Crackmapexec
python3 -m pip install pipx
pipx ensurepath
apt install -y python3-venv
pipx install crackmapexec

# Credmap
pip3 install credmap

# CRLF Suite
git -C ~/tools/ clone https://github.com/Nefcore/CRLFsuite.git
cd ~/tools/CRLFsuite/
python3 setup.py install

# CTFR 
git -C ~/tools/ clone https://github.com/UnaPibaGeek/ctfr.git 
pip install -r ~/tools/ctfr/requirements.txt

# Dnsenum
apt install -y dnsenum

# Dnsmap
apt install -y dnsmap

# Dnsrecon
apt install -y dnsrecon

# Dns utils
apt install -y djbdns-utils
apt install -y dnss

# Dnsvalidator
git -C ~/tools clone https://github.com/vortexau/dnsvalidator
cd ~/tools/dnsvalidator && python3 setup.py install

# Dnsx
go install -v github.com/projectdiscovery/dnsx/cmd/dnsx@latest

# Docker
apt-get install -y ca-certificates curl gnupg lsb-release
mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
apt-get update -y
apt-get install -y docker-ce docker-ce-cli containerd.io docker-compose-plugin

# Docker-compose
apt-get install -y docker-compose

# Eyewitness
git -C ~/tools clone https://github.com/FortyNorthSecurity/EyeWitness
sh ~/tools/EyeWitness/Python/setup/setup.sh

# Feroxbuster
cd ~/tools
curl -sL https://raw.githubusercontent.com/epi052/feroxbuster/master/install-nix.sh | bash
mv ~/tools/feroxbuster /usr/bin/

# Ffuf
go install github.com/ffuf/ffuf@latest
git -C ~/tools clone https://github.com/ffuf/ffuf-scripts

# Fff
go install github.com/tomnomnom/fff@latest

# Findomain
cd ~/tools
curl -LO https://github.com/findomain/findomain/releases/latest/download/findomain-linux.zip
unzip findomain-linux.zip
rm findomain-linux.zip
chmod +x findomain
mv findomain /usr/bin/findomain

# Gau
go install github.com/lc/gau/v2/cmd/gau@latest

# Gauplus
go install github.com/bp0lr/gauplus@latest

# Gf
go install github.com/tomnomnom/gf@latest
git -C ~/tools clone https://github.com/tomnomnom/gf
cp -r ~/tools/gf/examples ~/.gf

# Gf-secrets
git -C ~/tools/ clone https://github.com/dwisiswant0/gf-secrets

# Ghunt 
git -C ~/tools clone https://github.com/mxrch/ghunt
pip3 install -r ~/tools/ghunt/requirements.txt

# Gitrecon
git -C ~/tools clone https://github.com/GONZOsint/gitrecon.git
cd ~/tools/gitrecon
python3 -m pip install -r requirements.txt

# Github-subdomains
go install github.com/gwen001/github-subdomains@latest

# Gobuster
go install github.com/OJ/gobuster/v3@latest

# Gospider
go install github.com/jaeles-project/gospider@latest

# Gotator
go install github.com/Josue87/gotator@latest

# Gowitness
go install github.com/sensepost/gowitness@latest

# Hosthunter
git -C ~/tools clone https://github.com/SpiderLabs/HostHunter
cd ~/tools/HostHunter
pip3 install -r requirements.txt

# Httprint 
wget -q https://net-square.com/_assets/httprint_linux_301.zip -O ~/tools/httprint_linux_301.zip
cd ~/tools
unzip httprint_linux_301.zip
rm httprint_linux_301.zip
cp ~/tools/httprint_301/linux/httprint /usr/bin

# Httprobe
go install github.com/tomnomnom/httprobe@latest

# Hydra
apt install -y hydra

# Httpx
go install github.com/projectdiscovery/httpx/cmd/httpx@latest

# Joomlascan
git -C ~/tools clone https://github.com/drego85/JoomlaScan
pip2 install requests bs4

# Kxss
go install github.com/Emoe/kxss@latest

# Mapcidr
go install -v github.com/projectdiscovery/mapcidr/cmd/mapcidr@latest

# Massdns
git -C ~/tools clone https://github.com/blechschmidt/massdns
cd ~/tools/massdns
make
make install

# Meg
go install github.com/tomnomnom/meg@latest

# MurMurHash
git -C ~/tools clone https://github.com/Viralmaniar/MurMurHash.git
pip3 install -r ~/tools/MurMurHash/requirements.txt

# Ngrok
curl -s https://ngrok-agent.s3.amazonaws.com/ngrok.asc | sudo tee /etc/apt/trusted.gpg.d/ngrok.asc >/dev/null && echo "deb https://ngrok-agent.s3.amazonaws.com buster main" | sudo tee /etc/apt/sources.list.d/ngrok.list && sudo apt update && sudo apt install ngrok
ngrok update 
ngrok authtoken 1dNkvI0gosEtRdLKHwEOx1JqxMB_3gyGKMUdFKem8B3oSm7WS 

# Nikto
apt install -y nikto

# Nmap
apt install -y nmap
git -C ~/tools clone https://github.com/ernw/nmap-parse-output

# nmap-bootstrap
mkdir -p ~/tools/nmap-bootstrap/
wget -q https://raw.githubusercontent.com/honze-net/nmap-bootstrap-xsl/master/nmap-bootstrap.xsl -O ~/tools/nmap-bootstrap/nmap-bootstrap.xsl

# nMap_Merge
mkdir -p ~/tools/nMap_Merge
wget -q https://raw.githubusercontent.com/CBHue/nMap_Merger/master/nMapMerge.py -O ~/tools/nMap_Merge/nMapMerge.py

# Notify
go install -v github.com/projectdiscovery/notify/cmd/notify@latest
touch $HOME/.config/notify/provider-config.yaml

# Nuclei
go install github.com/projectdiscovery/nuclei/v2/cmd/nuclei@latest
nuclei -ut

# Parallel
apt install -y parallel

# Proxychains
apt install -y proxychains

# Puredns
go install github.com/d3mondev/puredns/v2@latest
# Corrigir bug:
sed -i 's/\"A\"\,/\"A\"\, \"--root\"\,/g' /root/go/pkg/mod/github.com/d3mondev/puredns/v2@v2.0.1/pkg/massdns/runner.go
cd /root/go/pkg/mod/github.com/d3mondev/puredns/v2@v2.0.1 && go install

# Rdap
go install -v github.com/openrdap/rdap/cmd/rdap@latest

# S3 Bucket scanner (Python2)
git -C /opt/ clone https://github.com/GermanAizek/S3-Bucket-Scanner
cd /opt/S3-Bucket-Scanner && pip install -r requirements.txt

# Sherlock
git -C ~/tools clone https://github.com/sherlock-project/sherlock.git
cd ~/tools/sherlock
python3 -m pip install -r requirements.txt

# Shodan
easy_install shodan
pip2 install XlsxWriter click-plugins
shodan init I3JJqbNWm2nf05lUd0jOFxvKkkWrZPYY

# SMTPTester (Python2)
git -C ~/tools clone https://github.com/xFreed0m/SMTPTester
cd ~/tools/SMTPTester
pip install -r requirements.txt

# Smuggler
git -C ~/tools clone https://github.com/defparam/smuggler.git

# SonarSearch
go install github.com/cgboal/sonarsearch/cmd/crobat@latest

# Sqlmap
apt install -y sqlmap

# Sslscan
apt install -y sslscan

# Subfinder
go install -v github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest

# Sublist3r
git -C ~/tools clone https://github.com/aboul3la/Sublist3r.git

# Subbrute
git -C ~/tools clone https://github.com/TheRook/subbrute.git

# Subzy
go install github.com/lukasikic/subzy@latest

# Tor
apt install -y tor

# Unfurl
go install github.com/tomnomnom/unfurl@latest

# Unimap
git -C ~/tools clone https://github.com/Edu4rdSHL/unimap.git && cd ~/tools/unimap && cargo build --release
cp ~/tools/unimap/target/release/unimap /usr/local/bin

# Wpscan
apt install -y curl git libcurl4-openssl-dev make zlib1g-dev gawk g++ gcc libreadline6-dev libssl-dev libyaml-dev libsqlite3-dev sqlite3 autoconf libgdbm-dev libncurses5-dev automake libtool bison pkg-config ruby ruby-bundler ruby-dev
gem install wpscan

# WaybackMachine e CC para web crawlling
mkdir ~/tools/waybackMachine
wget -q https://raw.githubusercontent.com/ghostlulzhacks/waybackMachine/master/waybackMachine.py -O ~/tools/waybackMachine/waybackMachine.py

# Waybackurls
go install github.com/tomnomnom/waybackurls@latest

# Whois
apt install -y whois

# Wordlists
git -C ~/tools clone https://github.com/danielmiessler/SecLists.git seclists

wget -q https://gist.githubusercontent.com/six2dez/ffc2b14d283e8f8eff6ac83e20a3c4b4/raw -O ~/tools/seclists/Discovery/Web-Content/permutations.txt

wget -q https://gist.githubusercontent.com/jhaddix/b80ea67d85c13206125806f0828f4d10/raw/c81a34fe84731430741e0463eb6076129c20c4c0/content_discovery_all.txt -O ~/tools/seclists/Discovery/Web-Content/content_discovery_all.txt

wget -q https://gist.githubusercontent.com/jhaddix/86a06c5dc309d08580a018c66354a056/raw/96f4e51d96b2203f19f6381c8c545b278eaa0837/all.txt -O ~/tools/seclists/Discovery/Web-Content/jhaddix_all.txt

wget -q https://raw.githubusercontent.com/cujanovic/Virtual-host-wordlist/master/virtual-host-wordlist.txt -O ~/tools/seclists/Discovery/Web-Content/vhosts.txt
sed -i 's/.%s//g' ~/tools/seclists/Discovery/Web-Content/vhosts.txt

wget -q https://gist.githubusercontent.com/sidxparab/459fa5e733b5fd3dd6c3aac05008c21c/raw/4e203e89d7af2e1069be79f5978411328c0c1fdd/common_ports.txt -O ~/tools/seclists/Discovery/Infrastructure/common_ports.txt

wget -q https://raw.githubusercontent.com/danielmiessler/RobotsDisallowed/master/curated.txt -O ~/tools/seclists/Discovery/Web-Content/curated.txt

wget -q https://gist.githubusercontent.com/tomnomnom/57af04c3422aac8c6f04451a4c1daa51/raw/9f551e023ff17d093dcb9f8b355c3af55827cb34/short-wordlist.txt -O ~/tools/seclists/Discovery/Web-Content/short-wordlist.txt

git -C ~/tools/seclists/ clone https://github.com/six2dez/OneListForAll

# Xsltproc
apt install -y xsltproc

# Arquivos de configuração do Amass, Subfinder, Notify e Github-subdomains
cp amass_config.ini /root/.config/amass/config.ini 
cp subfinder_config.yaml /root/.config/subfinder/config.yaml 
cp git_tokens.txt ~/tools/git_tokens.txt
mkdir -p $HOME/.config/notify/
cp provider-config.yaml /root/.config/notify/provider-config.yaml

# Criar credenciais  
useradd -rm -d /home/drogas -s /bin/bash -u 1001 drogas
echo $(tr -dc A-Za-z0-9 < /dev/urandom | head -c44) > /tmp/.u 
echo drogas:$(cat /tmp/.u) | chpasswd 

# Criar diretórios 
mkdir -p /home/drogas/bounty

# Variáveis de Ambiente necessárias para recon
echo "export VT_API_KEY=e49538232058fc00631166e76460da395c870534feb78d091a961dfb63cef8db" >> ~/.bashrc
echo "export findomain_virustotal_token=e49538232058fc00631166e76460da395c870534feb78d091a961dfb63cef8db" >> ~/.bashrc
echo "export findomain_securitytrails_token=9T7iV57xXzea5ioL0cl0363ZyMkHqndh" >> ~/.bashrc
echo "export findomain_discord_webhook='https://discord.com/api/webhooks/1016486216801194065/_ktR3Ju2vkaRkOYXUpVU_AKtwSetEapUTsMD9if9HUIccuUWjSij_uA4b2Dbzcvln-dv'" >> ~/.bashrc
source ~/.bashrc

# Axiom
bash <(curl -s https://raw.githubusercontent.com/pry0cc/axiom/master/interact/axiom-configure)

# reconftw 
# git -C /opt clone https://github.com/six2dez/reconftw; cd /opt/reconftw/; sh install.sh 
