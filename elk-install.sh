    1  rpm --import https://artifacts.elastic.co/GPG-KEY-elasticsearch
vi /etc/yum.repos.d/elastic.repo
cp elastic.repo kibana.repo logstash.repo /etc/yum.repos.d/
sudo yum install java-1.8.0-openjdk -y
sudo yum install --enablerepo=elasticsearch elasticsearch
sudo yum install kibana -y
sudo yum install logstash -y
sudo systemctl enable  elasticsearch.service
sudo systemctl start elasticsearch.service
sudo systemctl enable  logstash.service
sudo systemctl start logstash.service
sudo systemctl enable  kibana.service
sudo systemctl start kibana.service
