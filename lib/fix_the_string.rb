def fix_the_string(str)
    stack = []
    str.each_char do |c|
        if !stack.empty? && c != stack.last && c.upcase == stack.last.upcase
            stack.pop
        else stack.push(c)
        end
    end
    return stack.join()
end
