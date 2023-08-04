class ErrorSerializer
  include JSONAPI::Serializer

  def self.serialize(errors)
    {
      errors: [
        { 
          message: errors.message
        }
      ]
    }
  end
end