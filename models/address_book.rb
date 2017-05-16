 require_relative 'entry.rb'

class AddressBook
  attr_reader :entries

  def initialize
    @entries = []
  end

  def add_entry(name, phone_number, email)
    # #9
    index = 0
    entries.each do |entry|
    # #10
      if name < entry.name
        break
      end
      index+= 1
    end
    # #11
    entries.insert(index, Entry.new(name, phone_number, email))
  end

  def remove_entry(name, phone_number, email)
    # entries.delete_if {|entry| entry.name==name && entry.phone_number==phone_number && entry.email==email}
    entries.each_index { |i| entries.delete_at(i) if entries[i].name==name && entries[i].phone_number==phone_number && entries[i].email==email }
  end
end
