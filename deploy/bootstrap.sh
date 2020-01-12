apt-get update
apt-get install -y git-core python-pip python-virtualenv nginx
#mkdir -p ~/.ssh
#chmod 700 ~/.ssh
#ssh-keyscan -H github.com >> ~/.ssh/known_hosts
#ssh -T git@github.com
#git clone https://$GITHUB_API_TOKEN@github.com/erolkeskiner/vagrant-playground.git
#cd vagrant-playground
pip install -r requirements.txt
cd app/
export FLASK_APP=hello.py
nohup flask run --host=0.0.0.0 &> $HOME/nohup.out&
