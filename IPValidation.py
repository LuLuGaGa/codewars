"""Write an algorithm that will identify valid IPv4 addresses in dot-decimal format. Input to the function is guaranteed to be a single string."""

def is_valid_IP(strng):
    if len(strng.split('.')) != 4:
        return False
    else:
        for element in strng.split('.'):
            if not element.isdigit():
                return False
            elif len(element) > 1 and element[0] == '0':
                return False
            elif int(element) > 255:
                return False
    return True