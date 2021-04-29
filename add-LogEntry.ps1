function add-LogEntry
{
    [CmdletBinding()]
    Param
    (
        [Alias('Message')]
        [string]$Output,
        [switch]$Indent,
        [switch]$IsError,
        [switch]$IsSuccess,
        [switch]$IsWarning
    )
    if($Indent)
    {
        $Space = 5
    }
    Else
    {
        $Space = 1
    }
    $Type = 'INFO'
    if($IsError)
    {
        $Type = '[ERROR]'
    }if($IsSuccess)
    {
        $Type = '[SUCCESS]'
    }
    if($IsWarning)
    {
        $Type = '[WARNING]'
    }
    $Output
    "{0,-22}{1,-9}{2,-$Space}{3}" -f (Get-Date -Format 'yyyy-MM-dd HH:mm:ss'), $Type, ' ', $Output | Out-File -FilePath $LogFile -Encoding 'utf8' -Append
}