# -*- mode: ruby -*-
# vi: set ft=ruby :

# 꼭 필요한 것은 아니나 Vagrant API Version을 좀 더 명확하게 하기위해 변수로 뺀 것.
Vagrant_API_Version = "2"

# do ~ end
Vagrant.configure(Vagrant_API_Version) do |config|

  ########################################################################
  # Ansible-Node01
  ########################################################################
  # vm.define 는 vagrant에서 ssh로 접속 할 때 불러주는 호스트의 이름
  config.vm.define:"ansible-node01" do |cfg|
    # vm.define의 하위로 들어가야함
    cfg.vm.box = "centos/7"
    # vm.provider로 virtualbox의 일부 설정을 변경한다.
    cfg.vm.provider:virtualbox do |vb|
      # virtualbox에서 보여지는 가상머신의 이름을 "Ansible-Node01 (IB)"로 변경한다.
      vb.name="Ansible-Node01 (IB)"
      # vm의 cpu와 memory를 변경한다.
      vb.customize ["modifyvm", :id, "--cpus", 1]
      vb.customize ["modifyvm", :id, "--memory", 512]
    end
    # 설치하는 가상머신의 호스트이름
    cfg.vm.host_name="ansible-node01"
    # 호스트와 가상머신간의 공유디렉토리 (사용하지않게설정)
    cfg.vm.synced_folder ".", "/vagrant", disabled: true
    # 인터넷연결에 필요한 설정 (bridge network으로 설정, 사용할 ip 지정)
    #cfg.vm.network "public_network", ip: "192.168.33.1"
    cfg.vm.network "private_network", ip: "172.16.0.11"
    # port 설정
    cfg.vm.network "forwarded_port", guest: 22, host: 17211, auto_correct: false, id: "ssh"
    # ubuntu에서는 아래 명령어를 실행하지 않아도 됨
    cfg.vm.provision "shell", path: "bash_ssh_conf_4_CentOS.sh"
  end
  ########################################################################

  ########################################################################
  # Ansible-Node02
  ########################################################################
  # vm.define 는 vagrant에서 ssh로 접속 할 때 불러주는 호스트의 이름
  config.vm.define:"ansible-node02" do |cfg|
    # vm.define의 하위로 들어가야함
    cfg.vm.box = "centos/7"
    # vm.provider로 virtualbox의 일부 설정을 변경한다.
    cfg.vm.provider:virtualbox do |vb|
      # virtualbox에서 보여지는 가상머신의 이름을 "Ansible-Node02 (IB)"로 변경한다.
      vb.name="Ansible-Node02 (IB)"
      # vm의 cpu와 memory를 변경한다.
      vb.customize ["modifyvm", :id, "--cpus", 1]
      vb.customize ["modifyvm", :id, "--memory", 512]
    end
    # 설치하는 가상머신의 호스트이름
    cfg.vm.host_name="ansible-node02"
    # 호스트와 가상머신간의 공유디렉토리 (사용하지않게설정)
    cfg.vm.synced_folder ".", "/vagrant", disabled: true
    # 인터넷연결에 필요한 설정 (bridge network으로 설정, 사용할 ip 지정)
    #cfg.vm.network "public_network", ip: "192.168.99.1"
    cfg.vm.network "private_network", ip: "172.16.0.12"
    # port 설정
    cfg.vm.network "forwarded_port", guest: 22, host: 17212, auto_correct: false, id: "ssh"
    # ubuntu에서는 아래 명령어를 실행하지 않아도 됨
    cfg.vm.provision "shell", path: "bash_ssh_conf_4_CentOS.sh"
  end  
  ########################################################################

  ########################################################################
  # Ansible-Node03
  ########################################################################
  # vm.define 는 vagrant에서 ssh로 접속 할 때 불러주는 호스트의 이름
  config.vm.define:"ansible-node03" do |cfg|
    # vm.define의 하위로 들어가야함
    cfg.vm.box = "ubuntu/trusty64"
    # vm.provider로 virtualbox의 일부 설정을 변경한다.
    cfg.vm.provider:virtualbox do |vb|
      # virtualbox에서 보여지는 가상머신의 이름을 "Ansible-Node01 (IB)"로 변경한다.
      vb.name="Ansible-Node03 (IB)"
      # vm의 cpu와 memory를 변경한다.
      vb.customize ["modifyvm", :id, "--cpus", 1]
      vb.customize ["modifyvm", :id, "--memory", 512]
    end
    # 설치하는 가상머신의 호스트이름
    cfg.vm.host_name="ansible-node03"
    # 호스트와 가상머신간의 공유디렉토리 (사용하지않게설정)
    cfg.vm.synced_folder ".", "/vagrant", disabled: true
    # 인터넷연결에 필요한 설정 (bridge network으로 설정, 사용할 ip 지정)
    #cfg.vm.network "public_network", ip: "192.168.33.1"
    cfg.vm.network "private_network", ip: "172.16.0.13"
    # port 설정
    cfg.vm.network "forwarded_port", guest: 22, host: 17213, auto_correct: false, id: "ssh"
  end
  ########################################################################

########################################################################
  # Ansible-Node04
  ########################################################################
  # vm.define 는 vagrant에서 ssh로 접속 할 때 불러주는 호스트의 이름
  config.vm.define:"ansible-node04" do |cfg|
    # vm.define의 하위로 들어가야함
    cfg.vm.box = "ubuntu/trusty64"
    # vm.provider로 virtualbox의 일부 설정을 변경한다.
    cfg.vm.provider:virtualbox do |vb|
      # virtualbox에서 보여지는 가상머신의 이름을 "Ansible-Node01 (IB)"로 변경한다.
      vb.name="Ansible-Node04 (IB)"
      # vm의 cpu와 memory를 변경한다.
      vb.customize ["modifyvm", :id, "--cpus", 1]
      vb.customize ["modifyvm", :id, "--memory", 512]
    end
    # 설치하는 가상머신의 호스트이름
    cfg.vm.host_name="ansible-node04"
    # 호스트와 가상머신간의 공유디렉토리 (사용하지않게설정)
    cfg.vm.synced_folder ".", "/vagrant", disabled: true
    # 인터넷연결에 필요한 설정 (bridge network으로 설정, 사용할 ip 지정)
    #cfg.vm.network "public_network", ip: "192.168.33.1"
    cfg.vm.network "private_network", ip: "172.16.0.14"
    # port 설정
    cfg.vm.network "forwarded_port", guest: 22, host: 17214, auto_correct: false, id: "ssh"
  end
  ########################################################################

########################################################################
  # Ansible-Node05 (Windows2012R2)
  ########################################################################
  # vm.define 는 vagrant에서 ssh로 접속 할 때 불러주는 호스트의 이름
  config.vm.define:"ansible-node05" do |cfg|
    # vm.define의 하위로 들어가야함
    cfg.vm.box = "opentable/win-2012r2-standard-amd64-nocm"
    # vm.provider로 virtualbox의 일부 설정을 변경한다.
    cfg.vm.provider:virtualbox do |vb|
      # virtualbox에서 보여지는 가상머신의 이름을 "Ansible-Node01 (IB)"로 변경한다.
      vb.name="Ansible-Node05 (IB)"
      # vm의 cpu와 memory를 변경한다.
      vb.customize ["modifyvm", :id, "--cpus", 2]
      vb.customize ["modifyvm", :id, "--memory", 2048]
    end
    # 설치하는 가상머신의 호스트이름
    cfg.vm.host_name="ansible-node05"
    # 호스트와 가상머신간의 공유디렉토리 (사용하지않게설정)
    cfg.vm.synced_folder ".", "/vagrant", disabled: true
    # 인터넷연결에 필요한 설정 (bridge network으로 설정, 사용할 ip 지정)
    #cfg.vm.network "public_network", ip: "192.168.33.1"
    cfg.vm.network "private_network", ip: "172.16.0.15"
    # port 설정
    cfg.vm.network "forwarded_port", guest: 22, host: 17215, auto_correct: false, id: "ssh"
    # 방화벽 비활성화
    cfg.vm.provision "shell", inline: "netsh firewall set opmode disable"
  end
  ########################################################################

  ########################################################################
  # Ansible-Server
  ########################################################################
  # vm.define 는 vagrant에서 ssh로 접속 할 때 불러주는 호스트의 이름
  config.vm.define:"ansible-server" do |cfg|
    # vm.define의 하위로 들어가야함
    cfg.vm.box = "centos/7"
    # vm.provider로 virtualbox의 일부 설정을 변경한다.
    cfg.vm.provider:virtualbox do |vb|
      # virtualbox에서 보여지는 가상머신의 이름을 "Ansible-Server(IB)"로 변경한다.
      vb.name="Ansible-Server (IB)"
    end
    # 설치하는 가상머신의 호스트이름
    cfg.vm.host_name="ansible-server"
    # 호스트와 가상머신간의 공유디렉토리 (사용하지않게설정)
    cfg.vm.synced_folder ".", "/vagrant", disabled: true
    # 인터넷연결에 필요한 설정 (bridge network으로 설정, 사용할 ip 지정)
    #cfg.vm.network "public_network", ip: "192.168.56.1"
    cfg.vm.network "private_network", ip: "172.16.0.10"

    # port 설정
    cfg.vm.network "forwarded_port", guest: 22, host: 17210, auto_correct: false, id: "ssh"
    # shell을 호출하여 bootstrap.sh를 호출하겠다.
    # 옵션중 path는 해당 파일을 전송하고 실행까지 하지만 inline은 실행만 한다.
    cfg.vm.provision "shell", path: "bootstrap.sh"
    # source : 현재 디렉토리, destination : 원격지 디렉토리

    cfg.vm.provision "file", source: "Ansible_env_ready.yml", destination: "Ansible_env_ready.yml"
    # 옵션중 path는 해당 파일을 전송하고 실행까지 하지만 inline은 실행만 한다.
    # ansible-playbook 명령어 실행
    cfg.vm.provision "shell", inline: "ansible-playbook Ansible_env_ready.yml"

    # sshauth를 추가하기 위해 사용되는 root권한이 아닌 직접 접속하는 vagrant user권한으로 하기 위해서 
    # privileged 즉 권한을 획득하는 것을 하지 않겠다.
    cfg.vm.provision "shell", path: "add_ssh_auth.sh", privileged: false

    cfg.vm.provision "file", source: "Ansible_ssh_conf_4_CentOS.yml", destination: "Ansible_ssh_conf_4_CentOS.yml"
    cfg.vm.provision "shell", inline: "ansible-playbook Ansible_ssh_conf_4_CentOS.yml"
  end
  ########################################################################

end