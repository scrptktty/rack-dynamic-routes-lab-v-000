require 'pry'
class Application

  @@items = [Item.new("Figs", 3.42), Item.new("Pears", 0.99)]

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if @@items.include?(/items/)

    else
      resp.write "Route not found"
      resp.status = 404
    end
  resp.finish
  end


end # Application
