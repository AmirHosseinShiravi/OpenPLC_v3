import ipaddress


def twos_comp(val, bits):
    """compute the 2's complement of int value val"""
    if (val & (1 << (bits - 1))) != 0: # if sign bit is set e.g., 8bit: 128-255
        val = val - (1 << bits)        # compute negative value
    return val   

a:int = -552949568

binary_string = bin(-552949568) # or whatever... no '0b' prefix
print(f"int:{int('11011111000010101010100011000000',2)}")
print(f"binary: {binary_string}")
out = twos_comp(a, 32)

print(out)

print(ipaddress.IPv4Address(3742017728))