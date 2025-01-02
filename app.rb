class RackApp
  def call(env)
    [
      200, 
      {"content-type" => "text/html"},
      [
        <<~HTML
          <!DOCTYPE html>
          <html>
            <head>
              <title>Rack is here babe</title>  
            </head>
            <body>
              <h1>hohohooo</h1>
            </body>
          </html>
        HTML
        ]
    ]
  end
end
