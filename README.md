EC2 Docker Provisioning
==============================

Install docker and compose service to AWS EC2.

* Docker  
  https://www.docker.com/


Quick Start
------------------------------

``` bash
git clone https://github.com/namikingsoft/ec2docker.git
cd ec2docker

bundle install

cp .env.sample .env
vim .env

### edit .env
AWS_SSH_USERNAME="ec2-user"
AWS_SSH_KEY=${HOME}/.ssh/vagrant.pem
AWS_ACCESS_KEY_ID="REPLACE_ME"
AWS_SECRET_ACCESS_KEY="REPLACE_ME"
AWS_KEYPAIR_NAME="REPLACE_ME"
AWS_SECURITY_GROUP="REPLACE_ME"
###

vagrant plugin install vagrant-aws
vagrant plugin install dotenv

vagrant up && bundle exec rake
```


Other Command
------------------------------

#### provisioning and serverspec

```bash
bundle exec rake
```
#### provisioning

```bash
bundle exec rake provision
```

#### serverspec 

```bash
bundle exec rake spec
```


License
------------------------------

[MIT License](LICENSE.txt)
