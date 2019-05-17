class LinkedList

  attr_reader :head

  def initialize
    @head = nil
  end

  def append(node)
    case
      when @head == nil
        @head = Node.new(node)
      when @head != nil
        current_node = @head
          while current_node.next_node != nil
            current_node = current_node.next_node
          end
          binding.pry
        current_node.next_node = Node.new(node)
    end
  end

  def count
    return 0 if @head.nil?
    count = 1
    while @head.next_node != nil
      count += 1
    end
    count
  end

  def to_string
    surname = @head.surname
    return "The #{surname} Family"
  end

end
