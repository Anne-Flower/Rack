require_relative 'app'
require_relative 'middleware/body_modif'
require_relative 'middleware/inspect_request'

use RequestInspector
use BodyModif
run RackApp.new
