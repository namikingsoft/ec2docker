include_recipe "../cookbooks/docker/default.rb"

file "/etc/environment" do
  action :edit
  block do |content|
    unless content.gsub! /^COMPOSE_API_VERSION/, "COMPOSE_API_VERSION=auto"
      content <<= "\nCOMPOSE_API_VERSION=auto\n"
    end
  end
end

execute "add group docker for ec2-user" do
  command "gpasswd -a ec2-user docker"
  not_if "id ec2-user | grep docker"
end
