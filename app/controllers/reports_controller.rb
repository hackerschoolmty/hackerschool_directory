class ReportsController < ApplicationController
  def general
    @generation = Generation.last
    @hackers = Hacker.where(generation_id: @generation.id)
    @courses = Course.where(generation_id: @generation.id)
  end
end
