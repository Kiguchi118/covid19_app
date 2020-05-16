class DashboardsController < ApplicationController
  PER_PEOPLE = 100000
  TOKYO_POPULATION = 13982622
  # 「東京都の人口（推計）」（令和2年4月1日現在）

  def index
    @subjects = Subject.all
    @pcr_all = PcrInspection.all
    @pcr_page = PcrInspection.page(params[:page]).per(20)
    respond_to do |format|
      format.html
      format.js
    end
    calculate # 感染割合や陽性率などの計算
  end

  private

    def calculate
      @infect_num = total_infected
      @infect_rate = infection_rate.round(2)
      @positive_rate = positive_rate.round(2)
    end

    # 感染者数の算出
    def total_infected
      count = 0
      @pcr_all.each do |pcr|
        if pcr.inspection_status == true
          count += 1
        end
      end
      return count
    end

    # PER_PEOPLE 人あたり何人が感染しているか
    def infection_rate
      (@infect_num * PER_PEOPLE) / TOKYO_POPULATION.to_f
    end

    # 陽性率の算出
    def positive_rate
      (@infect_num / @pcr_all.count.to_f) * 100
    end

end
