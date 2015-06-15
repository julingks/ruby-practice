f = File.new('input.txt')
num = f.gets.to_i

num.times do 
    print f.gets
end
f.close


