class ProjectsController < ApplicationController

  def index
    @title         = "All Projects"
    @some_projects = Project.concerned_ids.map { |i| PivotalTracker::Project.find i }
  end

  def show
  end

end
