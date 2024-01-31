# Lonzetorm_infra
Lonzetorm Infra repository

# 4 Задание

testapp_IP = 178.154.204.201
testapp_port = 9292

## Дополнительное задание
yc compute instance create `
--name reddit-app-test `
--zone ru-central1-a `
--hostname reddit-app-test `
--memory=2 `
--platform=standard-v3 `
--cores=2 `
--core-fraction 50 `
--create-boot-disk image-folder-id=standard-images,image-family=ubuntu-1604-lts,size=8 `
--network-interface subnet-name=default-ru-central1-a,nat-ip-version=ipv4 `
--metadata-from-file user-data=startup.yaml

# 3 Задание

bastion_IP = 158.160.108.12
someinternalhost_IP = 10.128.0.11

## Подключение к someinternalhost в одну команду с локальной машины
Команда:
```
ssh -J appuser@158.160.108.12  appuser@10.128.0.11
```

## Дополнительное задание (подключение командой ssh someinternalhost)
Прописать в файле ~/.ssh/config :
```
Host bastion
  user appuser
  IdentityFile ~/.ssh/appuser
  hostname 158.160.108.12

Host someinternalhost
  user appuser
  IdentityFile ~/.ssh/appuser
  hostname 10.128.0.11
  proxyjump bastion
```
Затем можно подключаться из консоли локальной машины командой ssh someinternalhost

## Дополнительное задание (nip.io)
Надо в Pritunl в Lets Encrypt Domain прописать 158.160.108.12.nip.io
Тогда можно будет обращаться к хосту bastion, избегая ошибки через https://158.160.108.12.nip.io/
