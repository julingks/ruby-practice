class MagaGreeter
    attr_accessor :names

    # Create the object
    def initialize(names = "World")
        @names = names
    end

    # Say hi to everybody
    def say_hi
        if @names.nil?
            puts "..."
        elsif @names.respond_to?("each")
            # @names는 어떤 종류의 리스트다. 반복한다!
            @names.each do |name|
                puts "Hello #{name}!"
            end
        else
        puts "Hello #{@names}!"
        end
    end

    # Say bye to everybody
    def say_bye
        if @names.nil?
            puts "..."
        elsif @names.respond_to?("join")
            # 리스트의 요소를 코마로 연결한다.
            puts "Goodbye #{@names.join(", ")}. Come back soon!"
        else
            puts "Goodbye #{@names}. Come back soon!"
        end
    end
end

if __FILE__ == $0
    mg = MagaGreeter.new
    mg.say_hi
    mg.say_bye

    mg.names = "Zeke"
    mg.say_hi
    mg.say_bye

    mg.names = ["Albert", "Brenda", "Charles", "Dave", "Engelbert"]
    mg.say_hi
    mg.say_bye

    mg.names = nil
    mg.say_hi
    mg.say_bye
end

