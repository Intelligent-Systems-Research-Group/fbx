FROM nvidia/cuda:9.2-base
ADD . /fbxsdk
WORKDIR /fbxsdk/
RUN apt-get update && apt-get install -y g++ && \
mkdir ../install
RUN printf 'y\nyes\nn\n' > params && ./fbx20181_1_fbxsdk_linux < "params"
#MKDIR build
#WORKDIR build
