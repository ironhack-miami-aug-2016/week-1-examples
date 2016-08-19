# lib/payroll.rb

class Payroll
  def initialize(employees_array)
    @employees = employees_array
  end

  def pay_employees
    total_payroll = 0

    @employees.each do |the_employee|
      total_payroll += the_employee.calculate_salary

          #                        100% - 18% = 82%
          #                                      |
      net_pay = the_employee.calculate_salary * 0.82
      pretty_net_pay = net_pay.round(2)

      puts "This week's pay for #{the_employee.name}: $#{pretty_net_pay}"
    end

    pretty_total_payroll = total_payroll.round(2)

    puts ""
    puts "Total payroll this week: $#{pretty_total_payroll}"
  end
end
