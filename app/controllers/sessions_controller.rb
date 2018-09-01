class SessionsController < ApplicationController
  skip_before_action :authenticate_user

  def create
    response = Faraday.post "https://github.com/login/oauth/access_token" do |req|
    req.body = { 'client_id': 'd718a7a9cda9d5a352d9', 'client_secret': '21f57f50f472038e36a43e7b8d5f410aefb2730d', 'code': code }
    req.headers['Accept'] = 'application/json'
    end
    body = JSON.parse(response.body)
  end
end
