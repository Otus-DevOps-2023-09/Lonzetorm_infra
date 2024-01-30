# Lonzetorm_infra
Lonzetorm Infra repository

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
