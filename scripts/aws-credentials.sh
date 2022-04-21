#!/bin/sh

if [ -z "$AWS_ACCESS_KEY_ID" -o -z "$AWS_SECRET_ACCESS_KEY" ]
then
    echo "AWS keys not in environment"
    echo "Bye"
    exit 1
fi

kubectl create secret generic tf-aws-keys \
    -n flux-system \
    --from-literal=access_key=$AWS_ACCESS_KEY_ID \
    --from-literal=secret_key=$AWS_SECRET_ACCESS_KEY
