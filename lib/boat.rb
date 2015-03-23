class Boat
  def initialize
    @placement = []
  end

  def placement
    fail 'Placement Error' if user_input.scan(/[^abc123]/)
    @placement << user_input
      end
end

private

def user_input
  gets.chomp
end