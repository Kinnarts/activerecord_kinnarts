require "csv"

module ActiverecordKinnarts
  class Base
    def self.new
      puts 'new'
    end

    def save
      puts 'save'
    end

    def update
    end

    def self.create_db_table_with_fields(*params)
      CSV.open("#{self.name}.csv", "wb") do |csv|
        csv << params
      end
    end
  end
end
