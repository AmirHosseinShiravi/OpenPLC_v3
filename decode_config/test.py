a = 33
bit_length = 8

# Convert to binary string with leading zeros
binary_string = bin(a)[2:].zfill(bit_length)

# Convert back to integer
integer_value = int(binary_string, 2)

print(integer_value) # Output: 33
