#
# Cookbook Name:: oh_my_zsh
# Recipe:: default
#
# Copyright 2014-2016, Xavier Dutreilh
#

include_recipe 'git'
include_recipe 'zsh'

node[:oh_my_zsh][:users].each do |user|
  home = Dir.home(user[:username])
  shell = '/usr/bin/zsh'

  user user[:username] do
    shell shell
    action :modify
  end

  remote_file "#{home}/oh-my-zsh.sh" do
    source 'http://install.ohmyz.sh'
    user user[:username]
    group user[:groupname]
    mode 0755
    action :create_if_missing
  end

  execute 'oh-my-zsh.sh' do
    command "#{shell} #{home}/oh-my-zsh.sh"
    user user[:username]
    group user[:groupname]
    environment 'HOME' => home,
                'SHELL' => shell
  end
end
