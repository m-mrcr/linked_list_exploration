class LinkedList

  attr_reader :head

  def initialize
    @head = nil
  end

  def append(node)
  #   case
  #     when @head == nil
        @head = Node.new(node)
  #     when @head != nil
  #       current_node = @head
  #         while current_node.next_node != nil
  #           current_node = current_node.next_node
  #         end
  #         binding.pry
  #       current_node.next_node = Node.new(node)
  #   end
  end

  def count
    accumulator = []
    current_node = @head
    while current_node.next_node != nil
      accumulator << current_node
      current_node = current_node.next_node
    end
    accumulator << current_node
    accumulator.count
  end

end
