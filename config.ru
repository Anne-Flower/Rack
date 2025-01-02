require_relative 'app'
require_relative 'middleware/body_modif'
require_relative 'middleware/inspect_request'
require_relative 'middleware/path_modif'

use PathModif
use RequestInspector
use BodyModif
run RackApp.new
