#!/bin/bash

VERSION=2.8.4


TAG_VERSION=xiangquan/codiad:${VERSION}
TAG_LATEST=xiangquan/codiad:latest
docker tag codiad ${TAG_VERSION}
docker tag codiad ${TAG_LATEST}
docker push ${TAG_VERSION}
docker push ${TAG_LATEST}
