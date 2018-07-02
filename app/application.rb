require 'pry'

class Application

  @@items = [Item.new("Figs",3.42), Item.new("Pears",0.99)]

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if @@items.include? (/items/)
      binding.pry
      search = req.params["item"]
      if
      item_name = req.path.match.split("items").last
      item = @@items.find { |i| i.name == item_name }

      resp.write item.price
    else
      resp.write "Route not found"
      resp.status = 404
    end
  resp.finish
  end


end # Application
