#compdef arch-update

local -a opts
opts=(
    {-c,--check}'[Check for available updates]'
    {-l,--list}'[Display the list of pending updates]'
    {-n,--news}'[Display latest Arch news]'
    {-h,--help}'[Display the help message]'
    {-V,--version}'[Display version information]'
)

_arguments $opts
