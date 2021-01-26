# docker-mysql-test

docker-compose up して、testdbにt_testテーブルが作成されない条件を探る。

ダメな時のログ。`docker_process_sql`がないといわれる。
```
mysql_1  | 2021-01-26 08:11:48+00:00 [Note] [Entrypoint]: /usr/local/bin/docker-entrypoint.sh: running /docker-entrypoint-initdb.d/010_createtest.sh
mysql_1  | + cd docker-entrypoint-initdb.d
mysql_1  | + cat 002_createtable.sql
mysql_1  | + docker_process_sql --database=testdb
mysql_1  | /docker-entrypoint-initdb.d/010_createtest.sh: line 6: docker_process_sql: command not found
docker-mysql-test_mysql_1 exited with code 127
```
`docker_process_sql`は https://github.com/docker-library/mysql/blob/master/5.7/docker-entrypoint.sh#L200 で定義されている。

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

## :x:windows(docker desktop 2.5.0.1)
古いバージョンをインストールしなおしてみた。
```
$ docker -v
Docker version 19.03.13, build 4484c46d9d
$ docker-compose -v
docker-compose version 1.27.4, build 40524192
$ docker image ls mysql
REPOSITORY          TAG                 IMAGE ID            CREATED             SIZE
mysql               5.7                 a70d36bc331a        7 days ago          449MB
```

## :x:AWS CloudShell
dockerがインストールされていなかった。

## :o:AWS Cloud9
docker-compose が入っていなかったのでマニュアルインストールした。
```
$ docker -v
Docker version 19.03.13-ce, build 4484c46
$ docker-compose -v
docker-compose version 1.16.1, build 6d1ac21
$ docker image ls mysql
REPOSITORY          TAG                 IMAGE ID            CREATED             SIZE
mysql               5.7                 a70d36bc331a        8 days ago          449MB
```
docker-composeを最新の1.28.2にしても問題なく動いた。
