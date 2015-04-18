class TranslationsController < ApplicationController
  before_action :set_translation, only: [:show, :edit, :update, :destroy]

  def index
    @translations = Translation.all
  end

  def show
    @users = @translation.users.all
  end

  def new
    @translation = Translation.new
  end

  def edit
  end

  def create
    @translation = Translation.new(translation_params)

    if @translation.save
      redirect_to @translation, notice: 'Translation was successfully created.'
      @translation.users << current_user unless current_user.nil?
    else
      render :new
    end
  end

  def update
    if @translation.update(translation_params)
      redirect_to @translation, notice: 'Translation was successfully updated.'
      @translation.users << current_user unless current_user.nil? || @translation.users.include?(current_user)
    else
      render :edit
    end
  end

  def destroy
    @translation.destroy
    redirect_to translations_url, notice: 'Translation was successfully destroyed.'
  end

  private

  def set_translation
    @translation = Translation.find(params[:id])
  end

  def translation_params
    params.require(:translation).permit(:core_language, :target_language)
  end
end
