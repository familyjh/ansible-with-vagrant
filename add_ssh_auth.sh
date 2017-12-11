#! /usr/bin/env bash

#ssh key 생성
# StrictpingHostKeyChecking : ssh로 접속하게 되면 key를 한 번더 확인하라는 경고창을 확인하지 않겠다는 것으로 no를 사용한다.
# vagrant user로 ssh를 통해서 접속을 vagrant@node01 접속한다.
sshpass -pvagrant ssh -T -o StrictHostKeyChecking=no vagrant@node01
sshpass -pvagrant ssh -T -o StrictHostKeyChecking=no vagrant@node02
sshpass -pvagrant ssh -T -o StrictHostKeyChecking=no vagrant@node03
sshpass -pvagrant ssh -T -o StrictHostKeyChecking=no vagrant@node04