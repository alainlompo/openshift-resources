#! /usr/bin/env bash

oc volume dc/elasticsearch-master --add \
--name=images \
--type=persistentVolumeClaim \
--mount-path=/data \
--claim-name=es-master-pvc \
--claim-size=6Gi \
--containers=elasticsearch-master \
--overwrite
