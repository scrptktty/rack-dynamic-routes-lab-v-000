require 'pry'

class Application

  @@items = Item.new

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path.match(items)
      item_name = req.path.match.split("items").last
      binding.pry
      # resp.write item.price
    else
      resp.write "Item not found"
    end
  resp.finish
  end

  
end # Application
