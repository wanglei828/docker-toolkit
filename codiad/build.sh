#!/bin/bash

wget https://github.com/Codiad/Codiad/archive/v.2.8.4.zip && \
unzip v.2.8.4.zip && \
docker build -t codiad .
