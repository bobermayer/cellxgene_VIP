#!/usr/bin/env bash
strPath="$(python -c 'import site; print(site.getsitepackages())')"
strPath=${strPath//"['"/}
strPath=${strPath//"']"/}
echo $strPath
cp biogenInterface.py $strPath/server/app/.
cp interface.html $strPath/server/common/web/static/.