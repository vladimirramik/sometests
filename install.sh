sudo yum -y update

# To speed up iterations
sudo yum install -y deltarpm

sudo yum install -y ca-certificates git nodejs build-essential
sudo yum install -y gcc-c++ make

sudo curl --silent --location https://rpm.nodesource.com/setup_6.x | bash -
sudo yum install -y nodejs
sudo npm install pm2@latest -g

sudo yum -y install epel-release
sudo yum -y install redis

# systemctl start redis.service
# systemctl enable redis.service

# sudo pm2 stop /opt/app/app.js
# sudo export HOME=/root

cd /opt/app
sudo npm install

useradd -m -d /home/nodeapp nodeapp
chown -R nodeapp:nodeapp /opt/app

sudo npm start


# sudo pm2 start /opt/app/app.js
# sudo pm2 restart /opt/app/app.js
