require 'csv'
require_relative '../models/customer'

class CustomerRepository
  def initialize(csv_file_path)
    @csv_file_path = csv_file_path
    @customers = []
    @next_id = 1
    load_csv if File.exist?(csv_file_path)
  end

  def all
    # TODO: return all customers
    @customers
  end

  def find(id)
    # TODO: return a single instance of customer with the given ID
    @customers.select { |customer| customer.id == id }.first
  end

  def create(customer)
    # TODO: assign ID, add it to the array, save csv, update next id
    customer.id = @next_id
    @customers << customer
    save_csv
    @next_id += 1
  end

  private

  def load_csv
    # open the CSV file
    # Go through row by row
    CSV.foreach(@csv_file_path, headers: true) do |row|
      # on each row, recreate the customer instance
      customer = Customer.new({ id: row["id"].to_i, name: row["name"], address: row["address"] })
      # push it into the @customers array
      @customers << customer
    end
    #
    # set the @next_id accordingly
    @next_id = @customers.empty? ? 1 : @customers.last.id + 1
  end

  def save_csv
    # TODO: save customers to CSV
    # Open the csv file (wb mode, write from scratch)
    CSV.open(@csv_file_path, 'wb') do |csv|
      # insert the header
      csv << ['id', 'name', 'address']
      # Iterate over each @customers
      @customers.each do |customer|
        # on each customer, we write the id, name and address as a row into the CSV
        csv << [customer.id, customer.name, customer.address]
      end
    end
  end
end
