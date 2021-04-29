
function add-LogEntry
{
    [CmdletBinding()]
    Param
    (
        [Alias('Message')]
        [string]$Output,
        [switch]$Indent,
        [switch]$IsError
    )

    if($Indent)
    {
        $Width = 27
    }
    Else
    {
        $Width = 23
    }
    if($IsError)
    {
        $Output = ( -join '**** ', $Output)
    }
    $Output
    "{0,-$Width}{1}" -f (Get-Date -Format 'yyyy-MM-dd HH:mm:ss'), $Output | Out-File -FilePath $LogFile -Encoding 'utf8' -Append
}