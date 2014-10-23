# MultiLogging

Log to multiple destinations.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'multi-logging'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install multi-logging

## Usage

```ruby
logger = MultiLogging.new(Logger.new('app.log'), Logger.new(STDOUT))

logger.info('log message')


tagged_logger = ActiveSupport::TaggedLogging.new(logger)

tagged_logger.tagged('foo') do
  tagged_logger.info('log message')
end
```

## Contributing

1. Fork it ( https://github.com/ydkn/multi-logging/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
