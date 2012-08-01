class API < Grape::API
  prefix "api"
  version 'v1', :using => :path

  resource "users" do
    desc "returns all users"
    get do
      User.all
    end

    desc "return a user"
    params do
      requires :id, type: Integer
    end
    get ':id' do
      User.find(params[:id])
    end
  end
end
