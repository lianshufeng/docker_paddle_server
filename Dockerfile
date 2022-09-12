FROM paddlepaddle/paddle:2.3.2 as builder
MAINTAINER lianshufeng <251708339@qq.com>


# 下载二进制文件
# https://github.com/PaddlePaddle/Serving/blob/develop/doc/Latest_Packages_CN.md
#下载二进制文件
RUN wget https://paddle-serving.bj.bcebos.com/test-dev/bin/serving-cpu-avx-mkl-0.9.0.tar.gz -O /tmp/servin.tar.gz
RUN cd /tmp/ ; tar -xvzf /tmp/servin.tar.gz


FROM paddlepaddle/paddle:2.3.2 as runtime

#编译中拷贝文件
COPY --from=builder /tmp/serving-cpu-avx-mkl-0.9.0 /opt/serving

#声明
ENV SERVING_BIN=/opt/serving/serving

# 添加依赖
Add ./ /infer

# 安装依赖 (cpu)
RUN pip install -r /infer/requirements.txt


# 工作目录
WORKDIR /Serving 


# 运行服务
CMD ["python","-m","paddle_serving_server.serve","--model","serving_server","--port","9393"]