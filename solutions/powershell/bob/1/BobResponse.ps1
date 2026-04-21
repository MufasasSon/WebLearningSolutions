Function Get-BobResponse() {
    <#
    .SYNOPSIS
    Bob is a lackadaisical teenager. In conversation, his responses are very limited.
    #>
    [CmdletBinding()]
    Param(
        [string]$HeyBob
    )

    if ($null -eq $HeyBob) { $HeyBob = "" }

    $trimmed = $HeyBob.Trim()

    $isSilent   = $trimmed -eq ""
    $isQuestion = $trimmed.EndsWith("?")
    $hasLetters = $HeyBob -match "[A-Za-z]"
    $isYelling  = $hasLetters -and ($HeyBob -ceq $HeyBob.ToUpper())

    if ($isSilent) {
        "Fine. Be that way!"
    }
    elseif ($isYelling -and $isQuestion) {
        "Calm down, I know what I'm doing!"
    }
    elseif ($isYelling) {
        "Whoa, chill out!"
    }
    elseif ($isQuestion) {
        "Sure."
    }
    else {
        "Whatever."
    }
}