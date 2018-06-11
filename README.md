### 설치방법

curl -L https://bootstrap.saltstack.com -o install_salt.sh
sudo sh install_salt.sh -M -A localhost
sudo salt-key -A

### execution 예제
```shell
sudo salt '*' test.ping 

sudo salt '*' cmd.run 'ls –al /'

sudo salt '*' disk.usage

sudo salt '*' network.interfaces

sudo salt '*' grains.items
```

### state 실행
```shell
git clone https://github.com/fanaticize/start-salt.git

sudo mv start-salt/salt /srv/salt

sudo salt '*' state.apply install-nginx
```
