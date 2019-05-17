class LinkedList

  attr_reader :head

  def initialize
    @head = nil
  end

  def append(node)
    if @head == nil
      @head = Node.new(node)
    else current_node = @head
        while current_node.next_node != nil
          current_node = current_node.next_node
        end
      current_node.next_node = Node.new(node)
    end
  end

  def count
    accumulate.count
  end

  def to_string
    string = ""
    return "Emtpy Caravan" if accumulate == []
    accumulate.each_with_index do |node, index|
      if index == 0
        string += "The #{@head.surname.capitalize} family"
      else
        string += ", followed by the #{node.surname.capitalize} family"
      end
    end
    string
  end

  def accumulate
    return [] if @head == nil
    accumulator = []
    current_node = @head
    while current_node.next_node != nil
      accumulator << current_node
      current_node = current_node.next_node
    end
    accumulator << current_node
    accumulator
  end

end
