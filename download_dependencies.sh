#!/usr/bin/env bash
set -xe

curl -O http://mirrors.ibiblio.org/apache//ctakes/ctakes-3.2.2/apache-ctakes-3.2.2-bin.tar.gz
curl -Lo ctakes-resources-3.2.1.1-bin.zip "http://downloads.sourceforge.net/project/ctakesresources/ctakes-resources-3.2.1.1-bin.zip?r=http%3A%2F%2Fsourceforge.net%2Fprojects%2Fctakesresources%2F%3Fsource%3Dtyp_redirect&ts=1433609725&use_mirror=softlayer-dal" 
curl -O https://downloads.apache.org/tika/tika-server-1.24.jar
