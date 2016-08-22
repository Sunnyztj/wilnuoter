# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )


# Rails.application.config.assets.precompile += %w( polyfills.js admin.js search.js)
Rails.application.config.assets.precompile += %w( polyfills.js )
# Rails.application.config.assets.precompile += ['vendor/*']

config.assets.precompile += %w( ckeditor/* )
Rails.application.config.assets.precompile += %w( products/show/wine_image_preview.js )
Rails.application.config.assets.precompile += %w( contact_us/contact_us.js )