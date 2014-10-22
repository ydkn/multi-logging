require 'multi_logging/version'

class MultiLogging
  attr_accessor :loggers

  def initialize(*loggers)
    @loggers = loggers
  end

  def method_missing(method_name, *args, &block)
    result = nil

    @loggers.each do |logger|
      result = logger.send(method_name, *args, &block)
    end

    result
  end

  def respond_to_missing?(method_name, include_private = false)
    @loggers.first.respond_to?(method_name, include_private) || super
  end
end
