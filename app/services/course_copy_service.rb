class CourseCopyService
  def initialize(id)
    @parent = Course.find(id.to_i)
    @duplicated_parent = Course.create(parent.attributes.except(*scrub_keys))

    copy_has_many(:materials)
  end

  private

  attr_reader :parent, :duplicated_parent

  def copy_has_many(association)
    data = []
    parent.send(association).each { |mat| data << mat.attributes.except(*scrub_keys)}
    duplicated_parent.send(association).create(data)
  end

  def scrub_keys
    ['id', 'created_at', 'updated_at']
  end
end
