class API::ApplicationAPI < Grape::API
  format :json
  
  mount API::V1::Base
  
  route :any, '*path' do
    error! "Access Denied"
  end 
end