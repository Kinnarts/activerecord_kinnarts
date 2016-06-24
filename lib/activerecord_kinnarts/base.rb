require "csv"

module ActiverecordKinnarts
  class Base
    @@id = 0

    def initialize(params)
      headers = CSV.open("#{self.class.name}.csv", 'r') { |csv| csv.first }

      self.class.class_eval {attr_accessor *params.keys}
        params.each {|key,value| send("#{key}=",value) if headers.include?(key.to_s)}
    end

    def save
      headers = CSV.open("#{self.class.name}.csv", 'r') { |csv| csv.first }
      @@id += 1
      params = headers.reject{|header| header == 'id'}.map {|header| self.send(header)}
      params << @@id

      CSV.open("#{self.class.name}.csv", "a+") do |csv|
        csv << params
      end
    end

    def update
    end

    def self.create_db_table_with_fields(*params)
      CSV.open("#{self.name}.csv", "wb") do |csv|
        csv << params.push('id')
      end
    end
  end
end
