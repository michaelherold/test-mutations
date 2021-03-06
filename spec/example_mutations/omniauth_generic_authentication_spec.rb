require 'spec_helper'

describe OmniauthGenericAuthentication do
  let(:auth_hash) { OmniAuth.config.mock_auth[:facebook] }

  subject(:authentication) { OmniauthGenericAuthentication.run(auth_hash: auth_hash) }

  it { should be_a_success }

  describe '#result' do
    subject { authentication.result }

    it { should eq(OmniAuth::AuthHash) }
  end
end
