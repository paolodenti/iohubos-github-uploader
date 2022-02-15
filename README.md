# IOhubOS GitHub version uploader

[![CircleCI Build Status](https://circleci.com/gh/paolodenti/iohubos-github-uploader/tree/master.svg?style=shield)](https://circleci.com/gh/paolodenti/iohubos-github-uploader/tree/master)

```bash
cd <iohubos repo, with dist folder built>
docker run --rm -v ${PWD}:/repo -e GITHUB_TOKEN="<your token>" -e TAG=<your tag> paolodenti/iohubos-github-uploader
```
