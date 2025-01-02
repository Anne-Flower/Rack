require_relative 'app'
require_relative 'middleware/body_modif'


use BodyModif
run RackApp.new
