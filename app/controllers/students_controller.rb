class StudentsController < ApplicationController
    def index
        @students = Student.all 
        render :index 
    end

    def show
        @student = Student.find(params[:id])
        render :show 
    end

    def activate
        @student = Student.find(params[:id])
        @student.active = !@student.active 
        @student.save 
        # if @student.active == false 
        #     @student.active = true 
        #     @student.save 
        # elsif @student.active
        #     @student.active = false 
        #     @student.save 
        # end
        redirect_to student_path(@student)
    end
end