config = {
  consumer_key:    ENV['TW_KEY'],
  consumer_secret: ENV['TW_SECRET'],
}

TW_CLINET = Twitter::REST::Client.new(config)