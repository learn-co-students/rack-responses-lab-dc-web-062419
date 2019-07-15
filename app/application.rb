class Application

    def call(env)
      resp = Rack::Response.new
      if Time.now.hour <12 
        resp.write "Good Morning!"
      elsif Time.now.hour >12 
        resp.write "Good Afternoon!"
      else
        resp.write "Wow, right between the two halves!"
      end
      resp.finish
    end
  
  end
  