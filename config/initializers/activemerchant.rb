if Rails.env == "development"
  ActiveMerchant::Billing::FirstdataE4Gateway.wiredump_device = File.open(Rails.root.join("log","active_merchant.log"), "a+")  
  ActiveMerchant::Billing::FirstdataE4Gateway.wiredump_device.sync = true 
  ActiveMerchant::Billing::Base.mode = :test

  login = "LA6062-36"
  password="bcohutgy6693o4a0h60w54cpg71b64ma"
elsif Rails.env == "production"
  login = 'LA6062-36'
  password='bcohutgy6693o4a0h60w54cpg71b64ma'
end
GATEWAY = ActiveMerchant::Billing::FirstdataE4Gateway.new({
      login: login,
      password: password
})