# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path

# Precompile additional assets.
# application.js, application.css.scss, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )

Rails.application.config.assets.paths << Rails.root.join('vendor', 'assets', 'fonts')
#Rails.application.config.assets.precompile += %w( login.js footer.js login.css dashboard.js dashboard.css)
Rails.application.config.assets.precompile += %w(*.gif *.png *.jpg *.jpeg *.gif *.ttf *.eot *.svg *.woff)
Rails.application.config.assets.version = '1.0'
