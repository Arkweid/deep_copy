Course.destroy_all

def courses_data
  res = []
  res << {
    title: 'RoR advanced'
  }
  res
end

def materials_data
  course_id = Course.first.id

  res = []
  res << {
    course_id: course_id,
    description: 'lesson 1',
    file: File.open("/home/arkweid/RailsProjects/deep_copy/public/lesson1.txt")
  }
  res << {
    course_id: course_id,
    description: 'lesson 2',
    file: File.open("/home/arkweid/RailsProjects/deep_copy/public/lesson2.txt")
  }
  res << {
    course_id: course_id,
    description: 'lesson 3',
    file: File.open("/home/arkweid/RailsProjects/deep_copy/public/lesson3.txt")
  }  
  res
end

Course.create(courses_data)
Material.create(materials_data)