#require 'pry'

class Application
    def call(env)
        resp = Rack::Response.new
        t = Time.now
        #binding.pry
        if t.hour < 12
            resp.write "Good Morning!"
        else
            resp.write "Good Afternoon!"
        end
        resp.finish
    end
end

