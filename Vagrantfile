VAGRANTFILE_API_VERSION = '2'.freeze

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = 'ubuntu/xenial64'

  config.vm.define 'vagranthost' do |vagranthost|
  end

  # Configure the virtual machine to use X GB of RAM
  config.vm.provider :virtualbox do |vb|
    vb.memory = '2048'
    vb.name = 'vagrant_ubuntu' # set VirtualBox GUI name
  end

  # Forward some ports to the host
  config.vm.network :forwarded_port, guest: 3000, host: 3000

  config.vm.provision 'bootstrap',
                      type: 'shell',
                      inline: <<-SHELL
      sudo apt-get update
      sudo apt-get install -y git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev python-software-properties libffi-dev
    SHELL

  config.vm.provision 'nvm',
                      type: 'shell',
                      privileged: false,
                      path: './scripts/nvm.sh'

  config.vm.provision 'rbenv',
                      type: 'shell',
                      privileged: false,
                      path: './scripts/rbenv.sh'

  config.vm.provision 'git',
                      type: 'shell',
                      privileged: false,
                      path: './scripts/git.sh'
end
