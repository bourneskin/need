class Article < ActiveRecord::Base
  has_many :comments
  has_attached_file :image, :styles => { :small => "150x150>"}
  validates_associated :comments
  
  validates_presence_of :title
  # Permits to forbid if this param is null
  
  # Same as validates :title,
  # presence: true;
  # length: { minimum: 3 }
  
  # Other possibilities
  
  # validates_numericality_of :key == check if variable is a number
  # Same as validates :key, numericality: true
  
  #validates_uniqueness_of :key ===> check if varibales is unique
  # Same as validates :key, uniqueness: true
  
  #validates_confirmation_of :key ===> check if varibales are equal example password
  # Same as validates :key, confirmation: true
  #<%= text_field :person, :email %>
  #<%= text_field :person, :email_confirmation %> BOTH NEEDED
  
  #validates_acceptance_of :key ===> check if varibales are check example read terms and services
  # Same as validates :key, acceptance: true
  
  #validates_lengh_of :key, minimum: 3 ===> check if varibales is under 3 char
  # Same as validates :key, length: {minimum: 0, maximum: 2000 }
  
  #validates_format_of :email, with: /regex/i ===> check if varibales is a regular expression
  # Same as validates :key, format: {with: /.*/ }
  
  #validates_inclusion_of :age, in: 21..99 ===> check if varibale is in between ...
  
  #validates_exclusion_of :age, in: 0..21, message: "Sorry you must be over 21"===> check if varibales are equal example password
  
end
