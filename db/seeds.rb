puts "🌱 Seeding spices..."

# Seed your database here

t.string :name
t.string :url

Brand.create([
    
    {
        name: "Rolex",
        url: "https://en.wikipedia.org/wiki/Rolex#/media/File:Rolex_logo.svg"
    }

    {
        name: "Omega", 
        url: "https://upload.wikimedia.org/wikipedia/commons/f/fb/Omega_Logo.svg"
    }

    {
        name: "Cartier",
        url: "https://i0.wp.com/www.titanui.com/wp-content/uploads/2013/10/20/Vector-Cartier-Logo.jpg"
    }

])

t.string :name
t.string :model_num
t.float :price
t.string :image_url
t.integer :brand_id 


Watch.create([

    {
        name: "",
        model_num: "",
        price: ,
        image_url: "", 
        brand_id: 


    }

])




puts "✅ Done seeding!"
