function get-FormattedDate
{
    [CmdletBinding()]
    [OutputType([String])]
    Param
    (
        [Parameter(Mandatory = $false,
                ValueFromPipelineByPropertyName = $true,
        Position = 0)]
        $Date = (Get-Date)
    )
    $Date = [DateTime]$Date
    $DaySuffix = switch -regex ($Date.Day.ToString()) {
        '1(1|2|3)$' 
        {
            'th'
        }
        '.?1$'      
        {
            'st'
        }
        '.?2$'      
        {
            'nd'
        }
        '.?3$'      
        {
            'rd'
        }
        default
        {
            'th'
        }
    }
    '{0}, {1:MMMM} {2}{3}, {4}' -f $Date.DayOfWeek, $Date, $Date.Day, $DaySuffix, $Date.Year
}
