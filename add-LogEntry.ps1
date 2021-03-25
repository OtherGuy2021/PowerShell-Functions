function add-LogEntry
{
    [CmdletBinding()]
    Param
    (
        [string]$Output
    )
    $Output
    "$(Get-Date -Format 'yyyy-MM-dd HH:mm:ss')`t $Output" | Out-File -FilePath $LogFile -Encoding 'utf8' -Append
}