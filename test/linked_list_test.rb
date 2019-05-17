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

  def test_it_can_display_count_of_single_appended_node
    @list.append("West")
    assert_equal 1, @list.count
  end

  def test_it_can_display_attribute_of_single_node_as_part_of_string
    @list.append("West")
    assert_equal "The West family", @list.to_string
  end

  def test_it_can_append_more_than_one_node
    @list.append("Rhodes")
    @list.append("Hardy")
    assert_equal 2, @list.count
  end

  def test_it_can_add_multiple_surnames_to_string
    @list.append("Rhodes")
    @list.append("Hardy")

    expected = "The Rhodes family, followed by the Hardy family"

    assert_equal expected, @list.to_string
  end

end
