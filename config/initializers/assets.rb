# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path.
# Rails.application.config.assets.paths << Emoji.images_path
# Add Yarn node_modules folder to the asset load path.
Rails.application.config.assets.paths << Rails.root.join('node_modules')

Rails.application.config.assets.precompile += %w(
  style.css bootstrap.min.css main.js
  jquery.min.js
  jquery-migrate.min.js
  bootstrap.bundle.min.js
  easing.min.js
  mobile-nav.js
  wow.min.js
  waypoints.min.js
  counterup.min.js
  owl.carousel.min.js
  isotope.pkgd.min.js
  lightbox.min.js
  )

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in the app/assets
# folder are already added.
# Rails.application.config.assets.precompile += %w( admin.js admin.css )
