class OmniauthGenericAuthentication < Mutations::Command
  required do
    model :auth_hash, class: Hash
  end

  def execute
    auth_hash.class
  end
end
