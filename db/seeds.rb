puts "🌱 Seeding brands..."

# Seed your database here

Brand.create([
    
    {
        name: "Rolex",
        url: "https://en.wikipedia.org/wiki/Rolex#/media/File:Rolex_logo.svg"
    },

    {
        name: "Omega", 
        url: "https://upload.wikimedia.org/wikipedia/commons/f/fb/Omega_Logo.svg"
    },

    {
        name: "Cartier",
        url: "https://i0.wp.com/www.titanui.com/wp-content/uploads/2013/10/20/Vector-Cartier-Logo.jpg"
    }

])


puts "✅ Done seeding!"
