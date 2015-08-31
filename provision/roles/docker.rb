include_recipe "../cookbooks/docker/default.rb"

execute "add env for docker-compose" do
  command "echo 'COMPOSE_API_VERSION=1.18' >> /etc/environment"
  not_if "cat /etc/environment | grep COMPOSE_API_VERSION"
end

execute "add group docker for ec2-user" do
  command "gpasswd -a ec2-user docker"
  not_if "id ec2-user | grep docker"
end