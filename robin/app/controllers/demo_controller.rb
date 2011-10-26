class DemoController < ApplicationController
  def index
  @shouts=["hello","goodbye"]
  end


  def create
  render(:mitra2)
  end
  
  def mitra
  render(:mitra3)
  end

end
