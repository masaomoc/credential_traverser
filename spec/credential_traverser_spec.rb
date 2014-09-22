require 'spec_helper'

describe CredentialTraverser do
  it 'has a version number' do
    expect(CredentialTraverser::VERSION).not_to be nil
  end

  it 'returns ArgumentError when block is not specified' do
    expect{ CredentialTraverser.traverse }.to raise_error(ArgumentError)
  end

end
