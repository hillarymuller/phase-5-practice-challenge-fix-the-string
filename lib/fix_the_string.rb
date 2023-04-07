def fix_the_string(str)
    #establish a stack 
    stack = []
    #iterate over each character in the string
    str.each_char do |c|
        # if the stack is not empty and the character doesn't exactly equal the 
        # last item in the stack without changing case & the character upcased does equal the last stack
        # item upcased remove the last item from the stack and move on to next character
        if !stack.empty? && c != stack.last && c.upcase == stack.last.upcase
            stack.pop
            #otherwise add the character to the top of the stack
        else stack.push(c)
        end
    end
    # join the stack array into a string & return
    return stack.join()
end
