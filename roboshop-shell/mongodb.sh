script_location=$(pwd)

yum install mongodb-org -y

systemctl enable mongod
systemctl start mongod
cp ${script_location}/files/mongodb.repo /etc/yum.repos.d/mongo.repo

systemctl restart mongod