# frozen_string_literal: true

class Application
  def call(_env)
    res = Rack::Response.new
    if Time.now.hour > 12
      res.write 'Good Afternoon!'
    else
      res.write 'Good Morning!'
    end
    res.finish
  end
end
