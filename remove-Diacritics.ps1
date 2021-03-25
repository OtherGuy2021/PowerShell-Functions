function remove-Diacritics 
{
    [CmdletBinding()]
    Param
    (
        # https://en.wikipedia.org/wiki/Diacritic
        [string]$Name
    )
    [Text.Encoding]::ASCII.GetString([Text.Encoding]::GetEncoding('Cyrillic').GetBytes($Name))
}