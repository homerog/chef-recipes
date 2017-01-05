
# Cookbook:: apache
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.



package "Tomcat install" do
    case node["platform"]
        when "debian", "ubuntu"
            package_name "tomcat"
        when "redhat", "centos", "fedora"
            package_name "tomcat7"         
    end
    action :install
end


service "WebServer" do
    case node["platform"]
        when "centos", "redhat", "fedora"
            service_name "tomcat"
        when "debian", "ubuntu"
            service_name "tomcat7"
    end
    action [ :enable, :start ]
end
