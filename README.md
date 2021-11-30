# IOhubOS GitHub version uploader

```bash
cd <iohubos repo, with dist folder built>
docker run --rm -v ${PWD}:/repo -e GITHUB_TOKEN="<your token>" -e TAG=<your tag> paolodenti/iohubos-github-uploader
```
