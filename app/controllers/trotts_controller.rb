class TrottsController < ApplicationController
  def new
    @trott = Trott.new
  end
end
