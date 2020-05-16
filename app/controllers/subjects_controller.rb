class SubjectsController < ApplicationController

  def new
    @subject = Subject.new
  end

  def create
    @subject = Subject.new(subject_params)
    if @subject.save
      redirect_to new_pcr_inspection_path, flash:{success: "被検者の登録ができました。"}
    else
      render :new
    end
  end

  private

    def subject_params
      params.require(:subject).permit(
              :name,:gender,:birthday,:age,:postcode,
              :prefecture_name,:address_city,:address_other
      )
    end

end
