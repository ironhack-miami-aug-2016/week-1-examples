# /---------------------------------------------------------
#  ------------------------- SETUP -------------------------
#  ---------------------------------------------------------/

class Employee
    attr_reader :name, :email
    def initialize(name, email)
      @name = name
      @email = email
    end
end

# ----------

class HourlyEmployee < Employee
    def initialize(name, email, hourly_rate, hours_worked)
        @name = name
        @email = email
        @hourly_rate = hourly_rate
        @hours_worked = hours_worked
    end

    def calculate_salary
      @hours_worked * @hourly_rate
    end
end

# ----------

class SalariedEmployee < Employee
    def initialize(name, email, salary)
        @name = name
        @email = email
        @salary = salary
    end

    def calculate_salary
      exact_pay = @salary / 52.0
      exact_pay.round(2)
    end
end

# ----------

class MultiPaymentEmployee < Employee
    def initialize(name, email, salary, hourly_rate, hours_worked)
        @name = name
        @email = email
        @salary = salary
        @hourly_rate = hourly_rate
        @hours_worked = hours_worked

    end

    def calculate_salary
      exact_base_pay = @salary / 52.0
      base_pay = exact_base_pay.round(2)

      if @hours_worked > 40
        payed_hours = @hours_worked - 40
        extra_money = payed_hours * @hourly_rate
        base_pay += extra_money
      end

      base_pay
    end
end



# /---------------------------------------------------------
#  ------------------- APPLICATION CODE --------------------
#  ---------------------------------------------------------/


josh = HourlyEmployee.new('Josh', 'nachoemail@example.com', 35, 50)
nizar = SalariedEmployee.new('Nizar', 'starcraftrulez@gmail.com', 1000000)
ted = MultiPaymentEmployee.new('Ted', 'fortranr0x@gmail.com', 60000, 275, 55)

employees = [ josh, nizar, ted ]


employees.each do |the_employee|
  puts "This week's pay for #{the_employee.name}: $#{the_employee.calculate_salary}"
end
