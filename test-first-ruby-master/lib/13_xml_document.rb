class XmlDocument
  attr_accessor :indents
  def initialize (*indents)
    if indents
      @indents = true
    else
      @indents = false
    end
  end




  def method_missing(meth, *args, &blk)
    this_instance = class << self; self; end

    if block_given?
        this_instance.class_eval do
          define_method(meth) do
            open_tag = "<#{meth}"
            args.each do |attribute|
              attribute.each do |key, value|
                open_tag = open_tag + " #{key} ='#{value}'"
              end #end attribute.each
            end #end args.each
            complete_tag = open_tag + ">" + "#{yield blk}" + "</#{meth}>"
            if @indents
              open_tag = open_tag + ">\n"
            else
              
            end
            complete_tag
          end#end define_method
        end
    else
      this_instance.class_eval do
        define_method(meth) do
          tag = "<#{meth}"
          args.each do |attribute|
            attribute.each do |key, value|
              tag = tag + " #{key}='#{value}'"
            end
          end
          tag = tag  + "/>"
        end
      end
    end #end IF block
    send(meth)
  end #End method_missing

  #End of class
end




@xml = XmlDocument.new

# p @xml

# puts @xml.hello

# tag_name = (1..8).map{|i| ('a'..'z').to_a[rand(26)]}.join
# puts @xml.send(tag_name)

# puts @xml.hello(:name => 'dolly')



empty_tag = XmlDocument.new.empty

p empty_tag


attribute_tag = XmlDocument.new.attribute(:this => "that")

p attribute_tag

hello_dolly = @xml.hello do
  "dolly"
end


p hello_dolly

puts hello_dolly == "<hello>dolly</hello>"







