# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path.
# Rails.application.config.assets.paths << Emoji.images_path
# Add Yarn node_modules folder to the asset load path.
Rails.application.config.assets.paths << Rails.root.join('node_modules')

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in the app/assets
# folder are already added.
# Rails.application.config.assets.precompile += %w( admin.js admin.css )

# Opal compiler options
Rails.application.config.opal.method_missing           = true
Rails.application.config.opal.optimized_operators      = true
Rails.application.config.opal.arity_check              = !Rails.env.production?
Rails.application.config.opal.const_missing            = true
Rails.application.config.opal.dynamic_require_severity = :ignore

Rails.root.join('app', 'assets', 'javascripts').each_child do |path|
  next if path.directory?
  name = path.basename.to_s
  next unless name =~ /\.js\.rb$/

  name = name[0..-4]
  next if name == 'application.js'

  puts "path : #{name}"
  Rails.application.config.assets.precompile += [name]
end
