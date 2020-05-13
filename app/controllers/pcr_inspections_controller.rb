class PcrInspectionsController < ApplicationController

  def new
    @pcr = PcrInspection.new
  end

  def create
    @pcr = PcrInspection.new(pcr_params)
    if @pcr.save
      redirect_to root_path, flash:{success: "PCR検査の登録ができました。"}
    else
      render :new
    end
  end

  private
  
    def pcr_params
      params.require(:pcr_inspection).permit(
                  :subject_id,:clinic_id,:inspection_status,:remark)
    end
end
