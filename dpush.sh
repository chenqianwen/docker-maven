#!/bin/bash

BUILD_TAG="test1001"
REGISTRY_URL="registry-internal.cn-hangzhou.aliyuncs.com"
NAME_SPACE="c-wms"

if [ "$2" != "" ];
    then
    BUILD_TAG="$2"
fi

# build_push_tag
push_tag()
{
    set -e
    # push server
    cd $WORKSPACE
    docker build -t server:$BUILD_TAG .
    docker tag server:$BUILD_TAG $REGISTRY_URL/$NAME_SPACE/server:$BUILD_TAG
    docker push $REGISTRY_URL/$NAME_SPACE/server:$BUILD_TAG
    docker rmi server:$BUILD_TAG
    docker rmi $REGISTRY_URL/$NAME_SPACE/server:$BUILD_TAG
}

if [ "$1" = "dev" ];
    then
    # login
    REGISTRY_URL="registry.cn-hangzhou.aliyuncs.com"
    NAME_SPACE="yangguoliang"
    docker login --username=19951761632 $REGISTRY_URL --password=19931203ygl
    push_tag
    else
    echo '测试环境参考命令:dpush.sh test test1001'
    echo '生产环境参考命令:dpush.sh prod prod1001'
fi

