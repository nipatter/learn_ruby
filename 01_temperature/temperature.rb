#write your code here
def ftoc(temp_in_degF)
    (temp_in_degF.to_f - 32) * 5 / 9 
end

def ctof(temp_in_degC)
    temp_in_degC.to_f * 9 / 5 + 32
end