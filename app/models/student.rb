# == Schema Information
#
# Table name: students
#
#  id         :integer          not null, primary key
#  name       :string
#  hometown   :string
#  birthday   :datetime
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Student < ActiveRecord::Base
  has_many :classroom_students
  has_many :classrooms, through: :classroom_students

<<<<<<< HEAD
  def self.search(str)
    if str.present?
      Student.where('name LIKE ?', str + '%').all
    else
      self.all
    end
  end

=======
  def self.search(name)
    self.all.collect {|s| s.name == name}
  end

    self.all.collect {|s| s.name.downcase.include?(str)}
>>>>>>> 733c66fe79e2d973ac0b0c17e43ef42f0fb9a667
end
