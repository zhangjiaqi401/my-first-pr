. "$PSScriptRoot\..\src\TextTools.ps1"

Describe 'Get-WordCount' {
    It 'counts words separated by single spaces' {
        Get-WordCount 'hello world' | Should Be 2
    }

    It 'handles multiple spaces, tabs and surrounding whitespace' {
        Get-WordCount "  one   two`tthree  " | Should Be 3
    }

    It 'returns 0 for an empty string' {
        Get-WordCount '' | Should Be 0
    }

    It 'returns 0 for whitespace only' {
        Get-WordCount '   ' | Should Be 0
    }
}

Describe 'ConvertTo-TitleCase' {
    It 'capitalizes the first letter of each word' {
        ConvertTo-TitleCase 'hello world' | Should BeExactly 'Hello World'
    }

    It 'lowercases the rest of each word' {
        ConvertTo-TitleCase 'hELLO wORLD' | Should BeExactly 'Hello World'
    }

    It 'handles a single character word' {
        ConvertTo-TitleCase 'a' | Should BeExactly 'A'
    }

    It 'preserves repeated spaces' {
        ConvertTo-TitleCase 'hello  world' | Should BeExactly 'Hello  World'
    }
}
