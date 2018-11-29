class CourseHasSubjectsController < ApplicationController
  before_action :set_course_has_subject, only: [:show, :edit, :update, :destroy]

  # GET /course_has_subjects
  # GET /course_has_subjects.json
  def index
    @course_has_subjects = CourseHasSubject.all
  end

  # GET /course_has_subjects/1
  # GET /course_has_subjects/1.json
  def show
  end

  # GET /course_has_subjects/new
  def new
    @course_has_subject = CourseHasSubject.new
  end

  # GET /course_has_subjects/1/edit
  def edit
  end

  # POST /course_has_subjects
  # POST /course_has_subjects.json
  def create
    @course_has_subject = CourseHasSubject.new(course_has_subject_params)

    respond_to do |format|
      if @course_has_subject.save
        format.html { redirect_to @course_has_subject, notice: 'Course has subject was successfully created.' }
        format.json { render :show, status: :created, location: @course_has_subject }
      else
        format.html { render :new }
        format.json { render json: @course_has_subject.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /course_has_subjects/1
  # PATCH/PUT /course_has_subjects/1.json
  def update
    respond_to do |format|
      if @course_has_subject.update(course_has_subject_params)
        format.html { redirect_to @course_has_subject, notice: 'Course has subject was successfully updated.' }
        format.json { render :show, status: :ok, location: @course_has_subject }
      else
        format.html { render :edit }
        format.json { render json: @course_has_subject.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /course_has_subjects/1
  # DELETE /course_has_subjects/1.json
  def destroy
    @course_has_subject.destroy
    respond_to do |format|
      format.html { redirect_to course_has_subjects_url, notice: 'Course has subject was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_course_has_subject
      @course_has_subject = CourseHasSubject.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def course_has_subject_params
      params.require(:course_has_subject).permit(:course_id, :subject_id, :teacher_id)
    end
end
