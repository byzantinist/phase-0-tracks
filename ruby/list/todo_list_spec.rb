class TodoList
  def initialize(input)
    @input = input
    @list = input
  end

  def get_items
    @list
  end

  def add_item(task)
    @list.push(task)
    @list
  end

  def delete_item(task)
    @list.delete(task)
    @list
  end

  def get_item(index)
    @list[index]
  end
end

# This is for Ruby testing
#try = TodoList.new(["do the dishes", "mow the lawn"])
#puts try.get_items
#puts try.add_item("mop")
#puts try.delete_item("do the dishes")
#puts try.get_item(0)

# This is for Rspec testing
describe TodoList do
  let(:list) { TodoList.new(["do the dishes", "mow the lawn"]) }

  it "stores the list items given on initialization" do
    expect(list.get_items).to eq ["do the dishes", "mow the lawn"]
  end

  it "adds an item to the list" do
    list.add_item("mop")
    expect(list.get_items).to eq ["do the dishes", "mow the lawn", "mop"]
  end

  it "deletes an item" do
    list.delete_item("do the dishes")
    expect(list.get_items).to eq ["mow the lawn"]
  end

  it "retrieves an item by index" do
    expect(list.get_item(0)).to eq "do the dishes"
  end
end
