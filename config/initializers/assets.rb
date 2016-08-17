# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )


# Rails.application.config.assets.precompile += %w( polyfills.js admin.js search.js)
Rails.application.config.assets.precompile += %w( polyfills.js admin.js ckeditor/*   )
Rails.application.config.assets.precompile += ['vendor/*']

# Rails.application.config.assets.precompile += %w( utils/owl_carousel/owl.carousel.css )
# Rails.application.config.assets.precompile += %w( utils/owl_carousel/owl.theme.css )
# Rails.application.config.assets.precompile += %w( utils/owl_carousel/owl.transitions.css )

# Rails.application.config.assets.precompile += %w( utils/owl_carousel/owl.carousel.min.js )


Rails.application.config.assets.precompile += %w( pages/home/home.js )
Rails.application.config.assets.precompile += %w( products/show/wine_image_preview.js )

Rails.application.config.assets.precompile += %w( application/index.css )