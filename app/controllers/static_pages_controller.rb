class StaticPagesController < ApplicationController

def home
	@productsfive = Product.last(4)
	@servicesfive = Service.all
end

def timelineactivities
	
end

def cargohaulage
	
end

def homeprofile
	
end

def myrequests
	
end

def haulagecalculator
	
end

def dashboard
	@products = Product.all
end

def payforrental
	
end

def privacypolicy
	
end

end