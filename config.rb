Dir[File.join(File.dirname(__FILE__), 'models', '*.rb')].each{ |file| require file }
require 'config/routes'

module Haml::Filters::Markdown
  include Haml::Filters::Base
  lazy_require "redcarpet"

  def render(text)
    Redcarpet::Markdown.new(Redcarpet::Render::HTML).render(text)
  end
end

#Livereload
activate :livereload

# Automatic image dimensions on image_tag helper
#activate :automatic_image_sizes

# Methods defined in the helpers block are available in templates
helpers do
  include RouteHelpers

  def navigation_class_for_path(path)
    request_path = request.path.gsub(/index\.html(.*?)$/, "")
    "active" if (path == request_path) || (path != "/" && request_path =~ /^#{path}/i)
  end

  def navigation_item(label, path, optional_class = nil)
    content_tag(:li, link_to(label, path), :class => "#{navigation_class_for_path(path)} #{optional_class if optional_class}")
  end
end

# Load data
# Event.load_all(data.events)
# Speaker.load_all(data.speakers)


###############################
# Pages
page "*" do
  #@speakers = Speaker.all
  #@person = nil

  #@events = Event.all
  #@speaker_breakfasts = Event.all.find_all{|event| event.event_type == :speaker_breakfast}
  #@focus_dinners = Event.all.find_all{|event| event.event_type == :focus_dinner}
  #@angel_dinners = Event.all.find_all{|event| event.event_type == :angel_dinner}
  #@upcoming_events = Event.all[0...5]
end

#Speaker.all.each do |person|
#  page "/member-events/#{person.slug}.html", :proxy => "/templates/past-speaker.html" do
#    @person = person
#  end
#end


set :markdown_engine, :redcarpet
set :markdown, :fenced_code_blocks => true,
               :autolink => true, 
               :smartypants => true

set :css_dir, 'stylesheets'

set :js_dir, 'javascripts'

set :images_dir, 'images'


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
