class MessageJob < Struct.new(:message)
  def perform
    return message
  end
end
