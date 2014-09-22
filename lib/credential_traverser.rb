require "credential_traverser/version"
require "aws-sdk-v1"

module CredentialTraverser
  def self.traverse
    raise ArgumentError.new('CredentialTraverser#traverse expects block to be given.') unless block_given?
    profiles = AWS::Core::IniParser.parse(File.read(File.join(Dir.home, '.aws', 'credentials')))
    profiles.keys.map do |profile|
      AWS.config(credential_provider: AWS::Core::CredentialProviders::SharedCredentialFileProvider.new(profile_name: profile))
      yield profile
    end
  end
end
