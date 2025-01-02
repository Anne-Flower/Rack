class BodyModif
  def initialize(app)
    @app = app
  end

  def call(env)
    status, headers, body = @app.call(env)
    new_body = ["<html><head>New raaaack is here babe</head><body><h1>hohohoooooo</h1></body<html>"]
    [ status, headers, new_body ]
  end
end
