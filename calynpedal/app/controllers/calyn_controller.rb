class CalynController < ApplicationController

def create
require 'uri'
@calyn = "http://www.disco.fleo.se/?name=CALYN+"
@dodatek = params[:q]
@final = @calyn + @dodatek
Calyn.create(content: @dodatek)
redirect_to URI.encode(@final)
end
def index
@calyny = Calyn.all
end
end
