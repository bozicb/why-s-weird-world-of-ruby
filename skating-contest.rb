class SkatingContest
  def the_winner; @the_winner; end
  def the_winner=( name )
    unless name.respond_to? :to_str
      raise ArgumentError, "The winner's name must be a String,
        not a math problem or a list of names or any of that business."
    end
    @the_winner = name
  end
end
