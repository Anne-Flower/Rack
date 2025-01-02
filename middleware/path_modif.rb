class PathModif
  def initialize(app)
    @app = app
  end

  def call(env)
    base_path = env["PATH_INFO"]
    puts "Base path : #{base_path}"
    env["PATH_INFO"] = "/new-path-here"
    puts "new path : #{env["PATH_INFO"]}"
    @app.call(env)
  end

end
