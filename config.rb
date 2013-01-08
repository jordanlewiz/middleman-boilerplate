##############################
# Load data
Dir[File.join(File.dirname(__FILE__), 'models', '*.rb')].each{ |file| require file }
#Navigation.load_all(data.navigation)

##############################
# Helpers
require 'config/routes'
require 'config/helpers'
require 'builder'

helpers do
  include RouteHelpers
  include ApplicationHelpers
end

##############################
# Initalise

# Markdown config
module Haml::Filters::Markdown
  include Haml::Filters::Base
  lazy_require "redcarpet"

  def render(text)
    Redcarpet::Markdown.new(Redcarpet::Render::HTML).render(text)
  end
end

# Livereload
activate :livereload

# Automatic image dimensions on image_tag helper
activate :automatic_image_sizes


##############################
# Pages
page "*", :layout => "application"


##############################
# Dynamically Generated Pages
activate :directory_indexes  #Removes .html from file



##############################
## Settings
set :markdown_engine, :redcarpet
set :markdown, :fenced_code_blocks => true,
               :autolink => true, 
               :smartypants => true

set :css_dir, 'stylesheets'

set :js_dir, 'javascripts'

set :images_dir, 'images'


# Build-specific configuration
configure :build do

  # Clean 'Build' folder clean
  ignore "/javascripts/application/*"
  ignore "/javascripts/vendor/lib/*"
  ignore "/stylesheets/vendor/*"
  ignore "*.rb"

  activate :minify_css
  
  # Minify Javascript on build
  activate :minify_javascript
  
  # Enable cache buster
  activate :cache_buster
  
  # Use relative URLs
  # activate :relative_assets
  
  # Compress PNGs after build
  # First: gem install middleman-smusher
  # require "middleman-smusher"
  # activate :smusher
  
  # Or use a different image path
  # set :http_path, "/Content/images/"
end