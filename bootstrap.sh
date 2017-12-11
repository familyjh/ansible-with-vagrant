#! /usr/bin/env bash
# bash라고 표시함.

# Ansible 설치
yum install epel-release -y
yum install ansible -y

# 환경설정 초기 파일 구성 for vagrant only
# vagrant 계정의 하위 vim의 autoload와 bundle 디렉토리를 생성한다. (Plugin이 설치되고 load되는 디렉토리)
mkdir -p /home/vagrant/.vim/autoload /home/vagrant/.vim/bundle
# vagrant 사용자 밑에 vim과 bash의 환경설정 파일을 생성한다.
touch /home/vagrant/.vimrc
touch /home/vagrant/.bashrc