
def cipher(string, rotate_by)
  output_string = ""
  string.each_char do |c|
    if c.match(/[0-9]/)
      ind = c.to_i
      ind = (ind + rotate_by) % 10
      ind = ind.to_s
    elsif c.match(/[A-Z]/)
      ind = c.ord - 65
      ind = (ind + rotate_by) % 26
      ind += 65
    elsif c.match(/[a-z]/)
      ind = c.ord - 97
      ind = (ind + rotate_by) % 26 
      ind += 97
    else
      ind = c
    end
    output_string += ind.chr
  end

  output_string
end


input = ['abcdefghijklmNOPQRSTUVWXYZ0123456789', 'Zebra-493?']
rotation_factor = [39, 3]

input.zip(rotation_factor).each do |i, f|
  p cipher(i, f)
end

