class CoursesController < ApplicationController
    before_action :require_login 
    before_action :set_course,only:[:edit,:show,:update,:reset]

    
    def new 
        @course=Course.new
    end

    def index
        @courses=Course.all
        
        respond_to do |format| 
            format.html { render :index }
            format.json { render json: @courses}
        end
    end

    def edit 
    end

  
    def update 
        @course.update(course_params)
        redirect_to course_path(@course)
    end

    def reset
        if @course
            reset_course(@course)
            redirect_to course_path(@course)
        else
            redirect_to root_path 
        end
    end


    def show 
        respond_to do |format| 
            format.html { render :show }
            format.json { render json: @course}
        end
    end

    def destroy
        course.destroy 
        redirect_to courses_path
    end

    def set_course
        @course=Course.find_by(id:params[:id])
    end

    def course_params
        params.require(:course).permit(:title)
    end
    
    def require_login
        redirect_to login_path unless session.include? :username
    end
end
