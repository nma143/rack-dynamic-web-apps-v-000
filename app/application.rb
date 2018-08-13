class Application

  def call(env)
    resp = Rack::Response.new

    num_1 = Kernel.rand(1..20)
    num_2 = Kernel.rand(1..20)
    num_3 = Kernel.rand(1..20)

    if num_1==num_2 && num_2==num_3
      resp.write "You Win" #instead of puts
    else
      resp.write "You Lose" #instead of puts
    end

    resp.finish
  end

end
