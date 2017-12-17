require_relative '../models/entry.rb'

RSpec.describe Entry do

  context "attributes" do

    it "should respond to name" do
      ('Nicholas Nadel', '714-451-6507', 'nicholasnadel@gmailcom')
      expect(entry).to respond_to(:name)
    end

    it "should respond to phone number" do
      ('Nicholas Nadel', '714-451-6507', 'nicholasnadel@gmailcom')
      expect(entry).to respond_to(:phone_number)
    end

    it "should respond to email" do
      ('Nicholas Nadel', '714-451-6507', 'nicholasnadel@gmailcom')
      expect(entry).to respond_to(:email)
    end
  end

  context "#to_s" do
    it "prints an entry as a string" do
        entry = Entry.new('Nicholas Nadel', '714-451-6507', 'nichoalsnadel@gmail.com')
        expected_string = "Name: Nicholas Nadel\nPhone Number: 714-451-6507\nEmail: nicholasnadel@gmail.com"
      expect(entry.to_s).to eq(expected_string)
    end
  end

end
