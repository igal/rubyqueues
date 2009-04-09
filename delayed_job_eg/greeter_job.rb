class GreeterJob < Struct.new(:greeting, :entity)
  def perform
    puts "#{greeting} #{entity}"
  end
end
