module Api::V1
	class StudentsController < ApplicationController

		def index
			result = { success: true, status: 200, message: "Estudiantes" }
			result[:students] = Student.all
			render json: result
		end

	end
end