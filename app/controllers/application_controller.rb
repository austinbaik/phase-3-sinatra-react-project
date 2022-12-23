class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/brands" do
    brands = Brand.all
    brands.to_json
  end


  post '/brands' do
    brand = Brand.create(
      name: params[:name],
      url: params[:url]
    )
  brand.to_json
  end 

  delete '/brands/:id' do
    brand = Brand.find(params[:id])
    brand.destroy
    brand.to_json
  end

  post '/brands/:id' do 
    brand = Brand.find(params[:id]) 
    new_watch = brand.watches.create(
      params[:name],
      params[:price],
      params[:url],
      params[:model_num]
    )
    new_watch.to_json
  end

end
