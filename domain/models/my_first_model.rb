class MyFirstModel
    include Mongoid::Document

    field :price, type: Float, default: 0
    field :name, type: String

    def say_hi
        puts "hi"
    end

end