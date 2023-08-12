# For Ubuntu 22.04 jammy

execute "curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -"
execute "sudo add-apt-repository -y \"deb [arch=amd64] https://download.docker.com/linux/ubuntu jammy stable\""
package "docker-ce"
package "docker-compose"

user "u" do
  shell "/bin/bash"
end
directory "/home/u" do
  owner "u"
  group "u"
  mode "755"
end
execute "sudo gpasswd -a u docker" do
  not_if "groups u | grep -q docker"
end
