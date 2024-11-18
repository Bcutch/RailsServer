class SigninsController < ApplicationController
  def index
    @signs = Signin.all
  end

  def show
    @sign = Signin.find(params[:id])
  end

  def new
    @sign = Signin.new
  end

  def create
    @sign = Signin.new(params.expect(signin: [:email, :password]))
    if @sign.save
      redirect_to root_path, notice: "Successfully created account!"
    else
      render :new, status: :unprocessable_entity, notice: "Not saved"
    end
  end
end
