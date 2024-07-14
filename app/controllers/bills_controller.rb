class BillsController < ApplicationController
  def new
    @bill = Bill.new
    @employees = Employee.all
  end
  
  def index
    @bills = Bill.includes(:employee).all
    @total_bills_count = @bills.count
    @total_bills_amount = @bills.sum(:amount)
  end

  def create
    @bill = Bill.new(bill_params)
    if @bill.save
      redirect_to bills_path, notice: 'Bill was successfully created.'
    else
      @employees = Employee.all
      render :new
    end
  end

  private

  def bill_params
    params.require(:bill).permit(:amount, :type, :employee_id)
  end
end
# class BillsController < ApplicationController
#   def index
#     @bills = Bill.includes(employee: :department).all
#   end
# end
