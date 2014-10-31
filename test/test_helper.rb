
require 'minitest/autorun'
require 'minitest/unit'
require 'minitest/pride'

$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'exclusive_methods'


module Bar
  def fizz; end
  def self.buzz; end
end

class Foo
  include Bar

  def bar; end
  def self.baz; end
end

class MiniTest::Unit::TestCase
  def assert_change(block)
    before = block.call

    yield

    refute_equal before, block.call
  end

  def refute_change(block)
    before = block.call

    yield

    assert_equal before, block.call
  end
end