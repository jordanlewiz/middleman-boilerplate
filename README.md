Middleman 3.0 Boilerplate
- [Twitter Bootstrap](http://twitter.github.com/bootstrap/) 2.1.1  
- [HTML5 Boilerplate](https://github.com/h5bp/html5-boilerplate)   
- [HAML](http://haml.info/)  
- [SASS](http://sass-lang.com/)  
- [Bourbon](http://thoughtbot.com/bourbon/) SASS mixins  
- and more  




##Models

####Slug

`hotel.slug = hotel.name.downcase.parameterize`
instead of 
`hotel.slug  = yaml[:slug]  || hotel.name.downcase.strip.gsub(' ', '-').gsub(/[^\w-]/, '')`



