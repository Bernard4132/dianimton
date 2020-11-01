class StaticPagesController < ApplicationController

def home
	@productsfive = Product.last(4)
	@servicesfive = Service.all
end

def timelineactivities
	
end

def cargohaulage
	
end

def haulagecalculator
	
end

def dashboard
	@products = Product.all
end

def payforrental
	
end

end