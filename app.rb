class RackApp
  def call(env)
    [
      200, 
      {"content-type" => "text/html"},
      ["<html><head>Rack is here babe</head><body><h1>hohohooo</h1></body<html>"]
    ]
  end
end
