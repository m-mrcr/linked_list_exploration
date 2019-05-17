require 'minitest/autorun'
require 'minitest/nyan_cat'
require './lib/linked_list'
require './lib/node'
require 'pry'

class LinkedListTest < MiniTest::Test

  def setup
    @list = LinkedList.new
  end

  def test_it_exists
    assert_instance_of LinkedList, @list
  end

  def test_it_has_attributes
    assert_nil @list.head
  end

  def test_it_can_append_to_head
    @list.append("West")
    assert_instance_of Node, @list.head
  end

  def test_it_can_display_count_of_its_comprised_nodes
    @list.append("West")
    @list.append("North")
    @list.append("South")
    assert_equal 3, @list.count
  end

end
