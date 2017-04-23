#!/bin/bash

docker run -it --rm -v "$PWD":/app --network nics_default -w /app ruby:2.3 ruby send1.rb $*