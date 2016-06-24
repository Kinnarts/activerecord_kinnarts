module ActiverecordKinnarts
  class Base
    def self.new
      puts 'new'
    end
    def self.save
      puts 'save'
    end
    def self.update
    end
  end
end
