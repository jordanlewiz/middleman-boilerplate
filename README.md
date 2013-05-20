# Middleman Boilerplate Template
------

## Intro

This is a feature-packed [Middleman](http://middlemanapp.com/) project template. Essentially it is an evolving collection or regularly used helpers, models, mixins, frameworks and examples to aid with rapid static site generation. 

[Middleman](http://middlemanapp.com/) is a static site generator based on Sinatra. Providing dozens of templating languages (Haml, Sass, Compass, Slim, CoffeeScript, and more). Makes minification, compression, cache busting, Yaml data (and more) an easy part of your development cycle.


## Usage

Download and install into ~/.middleman (you'll have to create this directory if it's not already there). You can then use it with the `--template` flag on `middleman init`. For example: `middleman init your-project --template=middleman-boilerplate`

For more help follow [Middleman's project template instructions](http://middlemanapp.com/getting-started/).

## Features
- Middleman 3.1 RC1
- [HTML5 Boilerplate](https://github.com/h5bp/html5-boilerplate)   
- [HAML](http://haml.info/)  
- [SASS](http://sass-lang.com/)  
- [Bourbon](http://thoughtbot.com/bourbon/) SASS CSS3 mixins  

- Middleman LiveReload
- Middleman Navigation
- Middleman Fjords
- Middleman Google Analytics

- Custom fonts


## Package Manager
1. `bower update` to update the assets in the `components/` directory to their latest versions.

I wish we didn't have to include the `components/` directory since bower can just fetch all the data from the repos, but unfortunately `middleman init` does not work with creating symlinks that point to files that don't exist yet. Oh well.

*Note: You can name the template whatever you like, so long as you call the same name in the `middleman init` command*


##Adding a package with bower
*This section just deals with adding bower packages to your middleman app.  The full bower documentation can be found [here](http://github.com/twitter/bower).*

I have included a few bower packages already in the component.json file, namely jquery, normalize, and modernizr, and have left the default components directory in the template's root. I did this because otherwise Middleman's build phase would copy *Everything* from each bower package into the build/ directory.

Also, middleman doesn't seem to support adding multiple asset paths at this time, so this is the easiest solution I could find for asset management without changing the source for [middleman-sprockets](http://github.com/middleman/middleman-sprockets).

In order to add a package, simply install the package with bower and symlink the files you want to use to the `source/assets/{css,js,img}/vendor` directory.

###Example
if I want to install jQuery, what I do is (from the project root):

    bower install jquery
    cd source/assets/js/vendor
    ln -s ../../../../components/jquery/jquery.min.js jquery.js

and include it wherever you like.

This tripped me up for a bit so I thought I'd say this:
If you wish to have a file concatenated into the main app.js or all.css, Sprockets requires you to prepend an underscore to the file, so it doesn't copy over the file *as well as* concatenate the contents.

If you do this for javascript, make sure to add the underscore again when you require the file, like so:

    //= require vendor/_jquery





## Whats missing?
[ ] Finish Model examples
[ ] Documentation  
[ ] Middleman Blog (https://github.com/virtusweb/middleman-sample)
[ ] Bower (Asset manager)
[ ] CSS Grid
[ ] SASS Structure
[ ] Coffeescript default JS
[ ] Javascript testing (https://github.com/joefiorini/middleman-cucumber)
[ ] Default template skin
[ ] Mobile first
[ ] Breakpoint
[ ] Enable Gzip
[ ] Fix frontmatter for custom Title + Description
[ ] Add normalise css
[ ] Update HTML5 Boilerplate
[ ] Add selectivizr (CSS3 selectors for IE)
[ ] CSS Styleguide
[ ] FAQs (https://github.com/coderoshi/middleman-faqml)
[ ] SMACCS
[ ] User-agent sniffer
[ ] Search (http://designbyjoel.com/blog/2012-11-23-middleman-search/)