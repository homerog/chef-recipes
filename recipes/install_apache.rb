
# Cookbook:: apache
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.



package "Apache install" do
    case node["platform"]
        when "debian", "ubuntu"
            package_name "apache2"
        when "redhat", "centos", "fedora"
            package_name "httpd"         
    end
    action :install
end


service "WebServer" do
    case node["platform"]
        when "centos", "redhat", "fedora"
            service_name "httpd"
        when "debian", "ubuntu"
            service_name "apache2"
    end
    action [ :enable, :start ]
end
