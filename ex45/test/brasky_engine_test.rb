require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/braskyengine'
require_relative '../lib/bar'
require_relative '../lib/bartable'
require_relative '../lib/funeral'
require_relative '../lib/waitress'

class BraskyEngineTest < MiniTest::Test

  def setup
    @game = BraskeyEngine.new
    @funeral = Funeral.new
    @bartable = BarTable.new
    @bar = Bar.new
    @waitress = Waitress.new
  end

end
