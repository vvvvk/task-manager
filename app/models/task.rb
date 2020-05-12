class Task < ApplicationRecord
  belongs_to :author, class_name: 'User'
  belongs_to :assignee, class_name: 'User', optional: true

  validates :name, presence: true
  validates :description, presence: true, length: { maximum: 500 }
  validates :author, presence: true

  state_machine initial: :new_task do
    state :new_task
    state :in_development
    state :in_qa
    state :in_code_review
    state :ready_for_release
    state :released
    state :archived

    event :to_development do
      transition new_task: :in_development
      transition in_qa: :in_development
      transition in_code_review: :in_development
    end

    event :to_qa do
      transition in_development: :in_qa
    end

    event :passed_qa do
      transition in_qa: :in_code_review
    end

    event :passed_code_review do
      transition in_qa: :ready_for_release
    end

    event :to_release do
      transaction ready_for_release: :released
    end

    event :to_archive do
      transaction new_task: :archived
      transaction released: :archived
    end

  end
end
