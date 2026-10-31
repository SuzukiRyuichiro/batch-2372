require_relative '../views/customers_view'
require_relative '../models/customer'

class CustomersController
  def initialize(customer_repository)
    @customer_repository = customer_repository
    @view = CustomersView.new
  end

  def add
    # ask the user for name and get input (view)
    name = @view.ask_for_name
    # ask the user for address and get input and to_i (view)
    address = @view.ask_for_address
    # make a customer object (instance) from the customer model
    customer = Customer.new(name: name, address: address)
    # create the customer with CustomerRepository instance
    @customer_repository.create(customer)
  end

  def list
    # TODO: get all the customers from the repo
    customers = @customer_repository.all
    # TODO: ask the view to display them nicely
    @view.display_list(customers)
  end
end
