# Small text utility functions

function Get-WordCount {
    param([string]$Text)

    if ([string]::IsNullOrWhiteSpace($Text)) {
        return 0
    }
    return ($Text.Trim() -split '\s+').Count
}

function ConvertTo-TitleCase {
    param([string]$Text)

    $words = $Text -split ' ' | ForEach-Object {
        if ($_.Length -gt 0) {
            $_.Substring(0, 1).ToUpper() + $_.Substring(1).ToLower()
        } else {
            $_
        }
    }
    return $words -join ' '
}
