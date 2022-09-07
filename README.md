"# docker_paddle_server" 

- linux
````shell
#cpu
docker run --rm -it -v $(pwd):/Serving hkccr.ccs.tencentyun.com/hula/paddle_serving /bin/bash
````
- windws
````shell
powershell -c "docker run --rm -it -v ${pwd}:/Serving hkccr.ccs.tencentyun.com/hula/paddle_serving /bin/bash"
````



- cmd
````shell
python -m paddle_serving_server.serve --model serving_server --port 9393
````