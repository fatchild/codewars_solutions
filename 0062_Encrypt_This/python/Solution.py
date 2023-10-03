def encrypt_this(text):
    output = ''
    for word in text.split():
        output += str(ord(word[0]))
        if len(word) > 1:
            output += word[-1]
        if len(word) > 2:
            output += word[2:-1] + word[1]
            
        output += " "
            
    return output[0:-1]