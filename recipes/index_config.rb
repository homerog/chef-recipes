


template "/var/www/html/index.html" do
    source "index.erb"
    mode "0755"
    variables(
        'estaMuyPincheRebuscadaLaSintaxisDeLasVariables': node['platform'],
        'topoto': node['role']
    )
end
