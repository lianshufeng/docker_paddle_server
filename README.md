"# docker_paddle_server" 

- linux
````shell
#cpu
docker run --rm -it -v $(pwd):/Serving hkccr.ccs.tencentyun.com/hula/paddle_serving /bin/bash
````

- tmp
````shell
cd /tmp
wget https://paddle-serving.bj.bcebos.com/test-dev/bin/serving-cpu-avx-mkl-0.9.0.tar.gz -O /tmp/serving-cpu-avx-mkl-0.9.0.tar.gz
tar -xvzf serving-cpu-avx-mkl-0.9.0.tar.gz

export SERVING_BIN=/tmp/serving-cpu-avx-mkl-0.9.0/serving


python3 -m paddle_serving_server.serve --model serving_server --port 9393




export SERVING_BIN=$PWD/serving-gpu-cuda11-0.0.0/serving
````