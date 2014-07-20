OmniAuth.config.mock_auth[:facebook] = OmniAuth::AuthHash.new(
  provider: 'facebook',
  uid: '123456789123',
  info: {
    email: 'test@example.com',
    name: 'Test User',
    first_name: 'Test',
    last_name: 'User',
    image: 'http://example.com/123456789123/picture',
    urls: {
      Facebook: 'https://www.facebook.com/app_scoped_user_id/123456789123/'
    },
    verified: true
  },
  credentials: {
    token: 'f2ca1bb6c7e907d06dafe4687e579fce76b37e4e93b7605022da52e6ccc26fd2',
    expires_at: 1_410_301_000,
    expires: true
  }
)
