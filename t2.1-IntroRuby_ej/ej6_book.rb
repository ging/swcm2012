class Book < Object
  
  def initialize(title, description)
    @title = title
    @description = description
  end
  
  attr_accessor    :title
  attr_reader       :description
  
  def upper_case_title
    return @title.uppercase
  end
  
  AGOTADO = 'Libro agotado'
end 
