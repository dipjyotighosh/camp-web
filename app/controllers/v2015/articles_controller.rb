class V2015::ArticlesController < V2015::AppController
  def index
    @articles = @version.articles.all
    @articles_by_date = @articles.group_by(&:event_date)
    @date = params[:date] ? Date.parse(params[:date]) : Date.parse(Settings.camp_start_date)
  end
end