class XmlDocument
  attr_accessor :indents, :count
  def initialize (*indents)
    if indents[0] == true
      @indents = true
    else
      @indents = false
    end
    @count = 0;
  end

  def method_missing(meth, *args, &blk)
    this_instance = class << self; self; end
    @count += 1
    indentation = ((" "*(count - 1)) * 2)
    if block_given?
        this_instance.class_eval do
          define_method(meth) do
            open_tag = "<#{meth}"
            args.each do |attribute|
              attribute.each do |key, value|
                open_tag = open_tag + " #{key} ='#{value}'"
              end 
            end 
            if @indents
              complete_tag = indentation + open_tag + ">\n"  + "#{yield blk}" + indentation + "</#{meth}>\n"
            else
              complete_tag = open_tag + ">" + "#{yield blk}" + "</#{meth}>"
            end
            complete_tag
          end
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
          if @indents
            tag = indentation + tag + "/>\n"
          else
            tag = tag  + "/>"
          end
          tag
        end
      end
    end 
    send(meth)
  end 
end








