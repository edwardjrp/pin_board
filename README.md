# Rails 4 Pin Board Webapp
This is a full rails 4 webapp that shows pins same as pinterest. Built to test the gem act_as_votable and paperclip on models using rails 4, sqllite3, bootstrap3, haml, devise, paperclip and masonry-rails.

### Image Processor

[ImageMagick](http://www.imagemagick.org/) must be installed and Paperclip must have access to it. To ensure that it does, on your command line, run `which convert` (one of the ImageMagick utilities). This will give you the path where that utility is installed. For example, it might return `/usr/local/bin/convert`.

Then, in your environment config file, let Paperclip know to look there by adding that directory to its path.

In development mode, you might add this line to `config/environments/development.rb)`:
	
	Paperclip.options[:command_path] = "/usr/local/bin/"
	

If you're on Mac OS X, you'll want to run the following with [Homebrew](http://brew.sh/):
	
	sudo brew install gs

	