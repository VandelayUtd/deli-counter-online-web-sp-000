# Write your code here.

katz_deli = []

def line(katz_deli)
    deli_shout = ["The line is currently:"]
    if katz_deli.empty? 
        puts "The line is currently empty."
    elsif katz_deli.length > 0
        katz_deli.each_with_index do |name, spot|
            spot += 1
            deli_shout << " #{spot}. #{name}"
            end
       puts deli_shout.join 
    end
end

def take_a_number(katz_deli, name)
    katz_deli << name
    index = katz_deli.index(name)
    index +=1
    puts "Welcome, #{name}. You are number #{index} in line."
end

def now_serving(katz_deli)
    if katz_deli.length > 0
        puts "Currently serving #{katz_deli[0]}."
        katz_deli.shift
    elsif katz_deli.length == 0 
        puts "There is nobody waiting to be served!"
    end
end