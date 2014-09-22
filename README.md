# CredentialTraverser

This gem enables you to execute AWS API Action to each profile specified in ```~/.aws/credentials```

## Installation

Add this line to your application's Gemfile:

    gem 'credential_traverser'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install credential_traverser

## Usage

sample code using credential_traverser is below:

```ruby
require 'aws-sdk-v1'
require 'credential_traverser'

CredentialTraverser::traverse do |profile|
    ec2 = AWS::EC2.new
    puts "#{profile} : #{ec2.instances.count}"
end
```

Then you can see the following outputs:

```
default : 5
other_profile : 2
another_profile : 0
...
```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/credential_traverser/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
