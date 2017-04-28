require "stringer/version"
module Stringer

  def self.spacify *strings
    strings.join(" ")
  end

  def self.minify string, max_length
    if string.length < max_length
      # puts string
      string
    else
      # puts "#{string[0..max_length]}..."
      "#{string[0..max_length]}..."
    end
  end

  def self.replacify string, word, replace_word
    string = string.split(" ")
    string.map! do |elem|
      if elem == word
        replace_word
      else
        elem
      end
    end
    string.join(" ")
  end

  def self.tokenize string
    string = string.split(" ")
  end

  def self.removify string, remove_word
    string = string.split(" ")
    string.reject! {|elem| elem == remove_word}
    string.join(" ")
  #   string.map! do |elem|
  #     if elem == remove_word
  #       elem = ''
  #     else
  #       elem
  #     end
  #   end
  #   string.join(" ")
  end


end
