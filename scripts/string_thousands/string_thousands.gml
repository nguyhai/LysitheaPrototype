/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 4B622A6B
/// @DnDArgument : "code" "///string_thousands(real)$(13_10)///Returns argument0 as a string with commas at every thousand digit$(13_10)///eg 1234567890 becomes 1,234,567,890$(13_10)///Created by Andrew McCluskey$(13_10)$(13_10)var str,stl,rtn,place;$(13_10)$(13_10)str=string(floor(real(argument0))) //String to be passed$(13_10)stl=string_length(str) //Char length of that string$(13_10)rtn="" //What to return (ignored if string is under four digits long)$(13_10)$(13_10)if stl<=3$(13_10){$(13_10)    return str;$(13_10)}$(13_10)$(13_10)else$(13_10){$(13_10)    place=((stl-1) mod 3)+1;$(13_10)    $(13_10)    rtn+=string_copy(str,1,place)$(13_10)    $(13_10)    while(place<string_length(str))$(13_10)    {$(13_10)        rtn+=","$(13_10)        rtn+=string_copy(str,place+1,3)$(13_10)        place+=3$(13_10)    }$(13_10)    $(13_10)    return rtn;$(13_10)}"
///string_thousands(real)
///Returns argument0 as a string with commas at every thousand digit
///eg 1234567890 becomes 1,234,567,890
///Created by Andrew McCluskey

var str,stl,rtn,place;

str=string(floor(real(argument0))) //String to be passed
stl=string_length(str) //Char length of that string
rtn="" //What to return (ignored if string is under four digits long)

if stl<=3
{
    return str;
}

else
{
    place=((stl-1) mod 3)+1;
    
    rtn+=string_copy(str,1,place)
    
    while(place<string_length(str))
    {
        rtn+=","
        rtn+=string_copy(str,place+1,3)
        place+=3
    }
    
    return rtn;
}