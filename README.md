# docker-mysql-test

docker-compose up して、testdbにt_testテーブルが作成されない条件を探る。


## :x:mac(docker desktop 3.1.0)
```
$ docker -v
Docker version 20.10.2, build 2291f61
$ docker-compose -v
docker-compose version 1.27.4, build 40524192
```

## :x:windows(docker desktop 3.1.0)
```
$ docker -v
Docker version 20.10.2, build 2291f61
$ docker-compose -v
docker-compose version 1.27.4, build 40524192
```

## :o:GitHub codespace
```
$ docker -v
Docker version 19.03.14+azure, build fd3371eb7df1adeceff5935cf3ade0576a0f48d5
$ docker-compose -v
docker-compose version 1.27.4, build 40524192
```

## :o:GCP cloudshell
```
$ docker -v
Docker version 20.10.2, build 2291f61
$ docker-compose -v
docker-compose version 1.24.0, build 0aa59064
```

## :x:Gitpod
docker daemonが起動しておらず、sudo権限もないので動作確認できない。
```
$ docker -v
Docker version 19.03.14, build 5eb3275d40
$ docker-compose -v
docker-compose version 1.25.0, build unknown
```
