module Helpers

  def self.print_tag(key,content,options={})
    output  = "<#{key}"
    options.keys.each do |key|
      output += " #{key.to_s}='#{options[key]}'" if options[key]
    end
    output + ">#{content}</#{key}>"
  end

  def self.factorial(n)
    if n==0
      1
    else
      n*factorial(n-1)
    end
  end

  def self.factorial(n)
    return 1 if n==0
    n*factorial(n-1)
  end

end
