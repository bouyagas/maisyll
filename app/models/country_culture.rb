class CountryCulture < ActiveRecord::Base
	attr_accessor :name, :symbol, :value, :ally
	belongs_to :user
end
