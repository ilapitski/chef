# See https://docs.getchef.com/config_rb_knife.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "ivanlap"
client_key               "#{current_dir}/ivanlap.pem"
validation_client_name   "ivlap-validator"
validation_key           "#{current_dir}/ivlap-validator.pem"
chef_server_url          "https://chef-server/organizations/ivlap"
cookbook_path            ["#{current_dir}/../cookbooks"]
