class CourseCopyWorker
  include Sidekiq::Worker

  def perform(course_id)
    CourseCopyService.new(course_id)
  end
end
