class PigLatinizer 
  attr_accessor :string 
  def translate(string)
    vowels = %w{a e i o u}
    string.gsub(/(\A|\s)\w+/) do |str|
            str.strip!
        while not vowels.include? str[0] or (str[0] == 'u' and str[-1] == 'q')
            str += str[0]
            str = str[1..-1]
        end
        str  = ' ' + str + 'ay'
    end.strip
  end
end 