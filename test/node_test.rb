require 'minitest/autorun'
require 'minitest/nyan_cat'
require './lib/node'

class NodeTest < MiniTest::Test

  def setup
    @node = Node.new("Burke")
  end

  def test_it_exists
    assert_instance_of Node, @node
  end

  def test_it_has_attrbutes
    assert_equal "Burke", @node.surname
    assert_nil nil, @node.next_node
  end

end
