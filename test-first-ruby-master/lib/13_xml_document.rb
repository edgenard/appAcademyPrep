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
    spaces = " "
    indentation = ((spaces*(count - 1)) * 2)
    if block_given?
        this_instance.class_eval do
          define_method(meth) do
            open_tag = "<#{meth}"
            args.each do |attribute|
              attribute.each do |key, value|
                open_tag = open_tag + " #{key} ='#{value}'"
              end #end attribute.each
            end #end args.each
            if @indents
              complete_tag = indentation + open_tag + ">\n"  + "#{yield blk}" + indentation + "</#{meth}>\n"
            else
              complete_tag = open_tag + ">" + "#{yield blk}" + "</#{meth}>"
            end#end of if @indents
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
            end#end of attributes.each
          end#end of args.each
          if @indents
            tag = indentation + tag + "/>\n"
          else
            tag = tag  + "/>"
          end
          tag
        end#end of define_method
      end#end of this_instance
    end #end IF block
    send(meth)
  end #End method_missing

  #End of class
end








