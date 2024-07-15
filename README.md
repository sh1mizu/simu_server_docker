# simu_server_docker
## できること
- simutransのサーバーを立てる。
- 毎時0分にセーブする。
## メモ
```
.
├── .env
├── Dockerfile
├── docker-compose.yml
└── simutrans
    ├── config
    ├── font
    ├── pak
    ├── text
    ├── server13353-network.sve
    └── server13353-pwdhash.sve
```
.env
```
SERVER_ADMIN_PW=mypassword
#docker-composeでそのまま使うならsimu-server
SERVER_ADDRESS=simu-server
```
### 立ち上げ
```
$ docker-compose up -d
```
## やりたいこと
- お行儀が悪そうなところをよくする。

