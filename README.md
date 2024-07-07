# simu_server_docker
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
```
## 立ち上げ
```
$ docker-compose up -d
```
## やりたいこと
nettoolでいい感じに定期バックアップする。
お行儀が悪そうなところをよくする。

