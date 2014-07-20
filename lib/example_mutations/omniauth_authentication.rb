class OmniauthAuthentication < Mutations::Command
  required do
    model :auth_hash, class: OmniAuth::AuthHash
  end

  def execute
    auth_hash.class
  end
end
