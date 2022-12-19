#!/bin/bash


useradd -r -m -d /home/relayer -s /bin/bash relayer 



version=v2.0.0-rc3
git_repo=https://github.com/cosmos/relayer.git

git clone $git_repo
cd relayer && git checkout $version
make install

su relayer && cd ~
rly config init


