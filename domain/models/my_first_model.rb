class MyFirstModel
    include Mongoid::Document

    field :price, type: Float, default: 0
    field :name, type: String

end