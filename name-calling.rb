class String

  # The parts of my daughter's organ
  # instructor's name.
  @@syllables = [
    { 'Paij' => 'Personal',
      'Gonk' => 'Business',
      'Blon' => 'Slave',
      'Stro' => 'Master',
      'Wert' => 'Father',
      'Onnn' => 'Mother' },
    { 'ree' => 'AM',
      'plo' => 'PM' }
  ]

  # A method to determine what a
  # certain name of his means.
  def name_significance
    parts = self.split('-')
    syllables = @@syllables.dup
    signif = parts.collect do |p|
      syllables.shift[p]
    end
    signif.join(' ')
  end

end
