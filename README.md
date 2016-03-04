# GoogleCloudVision

This is a very basic wrapper for the Google Cloud Vision API which can be found at https://cloud.google.com/vision/. This gem is not at all affiliated with Google. It is just a simple ruby interface to classify images and abstract a bit of the setup.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'google_cloud_vision'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install google_cloud_vision

## Usage
The three types of detecttion done by the Google Cloud Vision API are Label Detection, which tries to identify what is in the image, Face Detection, which detects the position and sentiment of faces, and Text Detection which will return the text found in the photo. You can pass in an array of images and the type of detection you want like so:

```
puts GoogleCloudVision::Classifier.new('[YOUR_API_KEY]',
  [
    {image: './text.png', detection: 'TEXT_DETECTION'},
    {image: './sushi.jpg', detection: 'LABEL_DETECTION'}
  ]).response
```

This should print:

```
{"responses"=>[{"textAnnotations"=>[{"locale"=>"en", "description"=>"Keep calm and carry on\n", "boundingPoly"=>{"vertices"=>[{"x"=>21, "y"=>20}, {"x"=>1598, "y"=>20}, {"x"=>1598, "y"=>215}, {"x"=>21, "y"=>215}]}}]}, {"labelAnnotations"=>[{"mid"=>"/m/02wbm", "description"=>"food", "score"=>0.99165088}]}]}
```
You can see that an object is returned for each image passed in.
## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/AirspaceTechnologies/google-cloud-vision.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

