class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/brands" do
    brands = Brand.all
    brands.to_json(include: :watches)
  end


  post '/brands' do
    brand = Brand.create(
      name: params[:name],
      url: params[:url]
    )
  brand.to_json(include: :watches)
  end 


  # delete '/brands/:id' do
  #   brand = Brand.find(params[:id])
  #   watch = brand.watches.find(
  #     id: params[:id]
  #   )
  #   watch.destroy
  #   watch.to_json
  # end
  

  delete '/brands/:watchId' do
    watch = Watch.find(params[:watchId])
    puts watch
    # watch = brand.watches.find(
    #   id: params[:id]
    # )
    watch.destroy
    watch.to_json
  end



  post '/brands/:id' do 
    brand = Brand.find(params[:id])
    new_watch = brand.watches.create(

        # params
        name: params[:name],
        image_url: params[:image_url],
        price: params[:price], 
        model_num: params[:model_num],
        brand_id: params[:brandId]
        
    )
    new_watch.to_json
  end


patch '/brands/:watchId' do
  watch = Watch.find(params[:watchId])
  puts "watch"  
  watch.update(
    name: params[:name],
    image_url: params[:image_url],
    price: params[:price], 
    model_num: params[:model_num]
  )
  watch.to_json
end


end
