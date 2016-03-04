$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'google_cloud_vision'
require 'webmock/rspec'
WebMock.disable_net_connect!(allow_localhost: true)

RSpec.configure do |config|
  config.before(:each) do
    stub_request(:any, 'https://vision.googleapis.com/v1/images:annotate?key=1234567890')
      .to_return(body: { status: :success }.to_json)
  end
end
