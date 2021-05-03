# PowerShell-Functions
PowerShell functions that I use in multiple scripts.

[add-LogEntry](https://github.com/kieranwalsh/PowerShell-Functions/blob/main/add-LogEntry.ps1)

Similar to `Tee-Object`, this function will output data to the screen and a log file. However, it will timestamp the log file entries.

![MP4 of add-LogEntry in action](https://github.com/kieranwalsh/img/blob/main/add-LogEntry.mp4)

[get-FormattedDate](https://github.com/kieranwalsh/PowerShell-Functions/blob/main/get-FormattedDate.ps1)

Get-FormattedDate takes any date and returns a readable date in ordinal format. For example, "Jan 16 1992" returns "Thursday, January 16th, 1992".

![Gif of get-FormattedDate in action](https://github.com/kieranwalsh/img/blob/main/get-FormattedDate.gif)


[remove-Diacritics](https://github.com/kieranwalsh/PowerShell-Functions/blob/main/remove-Diacritics.ps1)

Unfortunately, in Windows Active Directory and Office 365, usernames with accents or diacritics can be rejected. This function will return the entered string without its diacritics when used in user onboarding scripts.

![Image showing remove-Diacritics string discritics from an entered username](https://github.com/kieranwalsh/img/blob/main/remove-Diacritics.png)
