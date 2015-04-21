class StudentsController < ApplicationController
	before_action :find_student, only: [:show, :edit, :update, :destroy]
	def index

	end

	def show

		@student = Student.find( params[:id])
	end

	def new
		@student = Student.new
	end	
	
	def create
		@student= Student.new (student_params)
		if @student.save
			redirect_to @student
		else
			render :new
		end
	end

	def edit

	end

	def update
		if @student.update( student_params )
			redirect_to @student
		else
			render :edit
		end
	end

	def destroy

	end

	private
		def find_student
			@student = Student.find( params[:id] )
		end
		def student_params
			params.require(:student).permit(:age, :location, :victim)
		end

end