class McqQuestion < Question
	belongs_to :question_bank
        has_many :mcq_choice
end
