### 
# Compass
###

# Susy grids in Compass
# First: gem install compass-susy-plugin
# require 'susy'

# Change Compass configuration
# compass_config do |config|
#   config.output_style = :compact
# end

###
# Haml
###

# CodeRay syntax highlighting in Haml
# First: gem install haml-coderay
# require 'haml-coderay'

# CoffeeScript filters in Haml
# First: gem install coffee-filter
# require 'coffee-filter'

# Automatic image dimensions on image_tag helper
# activate :automatic_image_sizes

###
# Page command
###

# Per-page layout changes:
# 
# With no layout
# page "/path/to/file.html", :layout => false
# 
# With alternative layout
# page "/path/to/file.html", :layout => :otherlayout
# 
# A path which all have the same layout
# with_layout :admin do
#   page "/admin/*"
# end

# Proxy (fake) files
# page "/this-page-has-no-template.html", :proxy => "/template-file.html" do
#   @which_fake_page = "Rendering a fake page with a variable"
# end

###
# Helpers
###

# Methods defined in the helpers block are available in templates
helpers do
  def navigation_class_for_path(path)
    request_path = "/" + request.path_info.gsub(/index\.html(.*?)$/, "")
    "active" if (path == request_path) || (path != "/" && request_path =~ /^#{path}/i)
  end

  def navigation_item(label, path, optional_class)
    content_tag(:li, link_to(label, path), :class => "#{navigation_class_for_path(path)} #{optional_class if optional_class}")
  end

  def title(page_title, page_subtitle = nil)
    content_for(:title) { page_title }
  end 

  def body_class(body_class)
    content_for(:body_class){ body_class }
  end

  def root_path
    "/"
  end

  def section_path(page)
    "/section/#{page}"
  end

  def is_home?
    request_path = "/" + request.path_info.gsub(/index\.html(.*?)$/, "")
    return true if request_path == root_path
  end

  #def book_path(title)
  # "/my-books/#{title}"
  #end

end

# Change the CSS directory
# set :css_dir, "alternative_css_directory"

# Change the JS directory
# set :js_dir, "alternative_js_directory"

# Change the images directory
# set :images_dir, "alternative_image_directory"

# Build-specific configuration
configure :build do
  # For example, change the Compass output style for deployment
  # activate :minify_css
  
  # Minify Javascript on build
  # activate :minify_javascript
  
  # Enable cache buster
  # activate :cache_buster
  
  # Use relative URLs
  # activate :relative_assets
  
  # Compress PNGs after build
  # First: gem install middleman-smusher
  # require "middleman-smusher"
  # activate :smusher
  
  # Or use a different image path
  # set :http_path, "/Content/images/"
end