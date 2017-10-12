## u4bi/dockerfile

### build
```
./build.sh
```

### run
```
./run.sh

컨테이너 명을 입력해주세요
    server
포워딩 포트를 입력해주세요
    7777
인스턴스 컨테이너입니까? (y / n)
    y
```

### apache-php7

#### build
```
./build.sh
```

#### run
```
./run.sh

$ apachectl start

http://localhost:7799/
```


### mysql

#### build
```
./build.sh
```

> #### startup
> ```sql
>  ./getpass.sh
> 
> [Entrypoint] > GENERATED ROOT PASSWORD: { onetime access password }
> 
> ./exec.sh
> 
> Enter password : { onetime access password }
> 
> 
> ALTER USER 
>     'root'@'172.17.0.1'
> IDENTIFIED BY 
>     'your_password';
> 
> SHOW databases;
> ```

### exec
```
./exec.sh
```