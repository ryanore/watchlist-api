
class MediaController < ApplicationController
  include HTTParty
  skip_before_action :authenticate_request
  before_action :default_query

  def initialize
    @tmdb = YAML::load(File.open("#{Rails.root}/config/tmdb.yml"))
    @tmdb_root = @tmdb['api_root']
    @tmdb_key = @tmdb['api_key']
  end

  def search
    response = HTTParty.get(search_request)
    render json: response
  end


  private

  def default_query
    @page = params[:page] || 1
    @query = params[:query] || ""
    @language = params[:language] || "en-US"
    @type = params[:type] || "multi"
  end

  def search_request()
    "#{@tmdb_root}search/#{@type}?api_key=#{@tmdb_key}&query=#{@query}&page=#{@page}&language=#{@language}"
  end
end
