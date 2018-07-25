class BoatingTest
    attr_accessor :student, :status, :instructor, :test_name

    @@all = []
    def initialize(args)
        args.each do |key, value|
            self.send("#{key}=", value)
        end

        @@all << self
    end

    def self.all
        @@all
    end
end
