$LOAD_PATH.unshift(File.dirname(__FILE__) + '/../../lib')
require 'fast_stemmer'

require 'test/unit/assertions'

require 'test/unit/assertions'

World do |world|
  
  world.extend(Test::Unit::Assertions)
  
  world
end
