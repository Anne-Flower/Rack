class BodyModif
  def initialize(app)
    @app = app
  end

  def call(env)
    status, headers, body = @app.call(env)
    new_body = ["<html><head><title>New raaaack is here babe</title><h1>New raaaack is here babe, with some crunchies middlewares</h1></head><body><h4>hohohoooooouuu</h4><p>Path : #{env["PATH_INFO"]}</p></body<html>"]
    [ status, headers, new_body ]
  end
end
