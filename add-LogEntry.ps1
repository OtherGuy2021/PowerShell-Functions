
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
    <#
    .SYNOPSIS
    This function outputs information to a logfile and to the powershell host.

    .DESCRIPTION
    The function is similar to Tee-Object in that it saves items to a logfile, but also outputs the data to the screen.
    If you're at the screen you can watch the data in real time but the limitiation of Tee-Object is that checking logfiles
    at a later date meant that you

    .PARAMETER Output
    Parameter description

    .PARAMETER Indent
    Parameter description

    .PARAMETER IsError
    Indicates that the entry is to be marked as an error and prefixes it with '****'.

    .EXAMPLE
    An example

    .NOTES
        Filename: add-LogEntry.ps1
        Contributors: Kieran Walsh
        Created: 2018-05-23
        Last Updated: 2021-04-29
        Version: 1.01.0
    #>

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