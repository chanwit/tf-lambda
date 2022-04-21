#!/bin/sh

flux create source git tf-lambda \
    --url=https://github.com/chanwit/tf-lambda \
    --branch=main \
    --interval=30s \
    --export
