class StaticPagesController < ApplicationController

def home
	@productsfive = Product.last(5)
	@servicesfive = Service.last(5)
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

end