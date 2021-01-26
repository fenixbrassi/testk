class Answer < ApplicationRecord
  belongs_to :application_form
  belongs_to :question  
end
