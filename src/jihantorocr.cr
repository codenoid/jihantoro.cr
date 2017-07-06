require "./jihantorocr/*"
require "kemal"

module Jihantorocr
  get "/" do
    article = File.open("db.txt", "r")
    render "src/views/index.ecr"
  end
  get "/read/:id" do |env|
    id = env.params.url["id"]
    article = File.open("db.txt", "r")
    render "src/views/post.ecr"
  end
  get "/404" do |env|
    error 404 do
      "Article / Page Not Found."
    end
  end
end

Kemal.run
