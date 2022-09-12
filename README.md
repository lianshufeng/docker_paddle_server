"# docker_paddle_server" 

- linux
````shell
#cpu
docker run --rm -it -p 9393:9393 -v $(pwd):/Serving lianshufeng/paddle_serving /bin/bash

python -m paddle_serving_server.serve --model serving_server --port 9393

````
- windws
````shell
powershell -c "docker run --rm -it -v ${pwd}:/Serving hkccr.ccs.tencentyun.com/hula/paddle_serving /bin/bash"

#GPU
powershell -c "docker run --rm -it -v ${pwd}:/Serving lianshufeng/paddle_serving:gpu /bin/bash"
````



- cmd
````shell
python -m paddle_serving_server.serve --model serving_server --port 9393
````