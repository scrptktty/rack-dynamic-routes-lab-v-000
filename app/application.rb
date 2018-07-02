require 'pry'
class Application

  @@items = [Item.new("Figs", 3.42), Item.new("Pears", 0.99)]

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path.match(/items/)

      items = req.path.split("/items/")

      search_item = req.params["item"]
      if items.include?(item_name)
        item = @@items.find{ |i| i.name == item_name}
        resp.write item.name
      else
        resp.write "Item not found"
      end

    else
      resp.write "Route not found"
      resp.status = 404
    end
  resp.finish
  end


end # Application
