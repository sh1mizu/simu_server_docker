# simu_server_docker
## ビルド時
```
.
├── Dockerfile
└── data
    ├── font(directory)
    └── text(directory)
```
```
$ docker build -t simu-server .
```
## サーバー実行時
```
.
├── docker-compose.yml
└── simutrans
    ├── config(directory)
    ├── pak(directory)
    ├── server13353-network.sve
    └── server13353-pwdhash.sve
```
```
$ docker-compose up -d
```

