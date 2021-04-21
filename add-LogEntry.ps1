function add-LogEntry
{
    [CmdletBinding()]
    Param
    (
        [Alias('Message')]
        [string]$Output
    )
    $Output
    '{0,-23}{1}' -f (Get-Date -Format 'yyyy-MM-dd HH:mm:ss'), $Output | Out-File -FilePath $LogFile -Encoding 'utf8' -Append
}