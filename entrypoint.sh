#!/bin/bash

git -C /repo rev-parse >/dev/null 2>&1
if [ "$?" != "0" ]; then
  echo "/repo is not a git repository"
  exit 1
fi

if [ "${GITHUB_TOKEN}" == "" ]; then
  echo "GITHUB_TOKEN is not set"
  exit 1
fi

if [ "${TAG}" == "" ]; then
  echo "TAG is not set"
  exit 1
fi

if [ ! -f "/repo/dist/installer.img" ]; then
  echo "/repo/dist/installer.img not found"
  exit 1
fi

if [ ! -f "/repo/dist/firmware.tgz" ]; then
  echo "/repo/dist/firmware.tgz not found"
  exit 1
fi

cd /repo
ghr -t ${GITHUB_TOKEN} -replace ${TAG} ./dist/installer.img
ghr -t ${GITHUB_TOKEN} -replace ${TAG} ./dist/firmware.tgz
