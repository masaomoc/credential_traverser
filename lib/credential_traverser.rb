require "credential_traverser/version"

module CredentialTraverser
  def self.traverse
    raise ArgumentError('CredentialTraverser#traverse must be used with block') unless block_given?
    profiles = AWS::Core::IniParser.parse(File.read(File.join(Dir.home, '.aws', 'credentials')))
    profiles.keys.map do |profile|
      AWS.config(credential_provider: AWS::Core::Providers::CredentialFileProvider.new(profile_name: profile))
      yield
    end
  end
end
