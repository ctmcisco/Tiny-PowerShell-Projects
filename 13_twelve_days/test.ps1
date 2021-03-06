Describe "Test for 13_twelve_days" {
    BeforeAll {
        $Script:prg = ".\twelve_days.ps1"
        $Script:dayOne = @(
            'On the first day of Christmas,', 'My true love gave to me,'
            'A partridge in a pear tree.'
        ) -join "`r`n"

        $Script:dayTwo = @(
            'On the first day of Christmas,', 'My true love gave to me,'
            'A partridge in a pear tree.'
            'On the second day of Christmas,'
            'My true love gave to me,'
            'Two turtle doves,'
            'And a partridge in a pear tree.'
        ) -join "`r`n"
    }

    It "Should exist" {
        Test-Path $Script:prg | Should -Be $true
    }

    It "Test one" {
        $actual = &$Script:prg -n 1

        $actual | Should -BeExactly $Script:dayOne
    }

    It "Test two" {
        $actual = &$Script:prg -n 2

        $actual | Should -BeExactly $Script:dayTwo
    }

    It "Test all" {
        $actual = (&$Script:prg).split("`r`n")
        
        # $actual.Count | Should -Be 102
        $actual.Count | Should -Be 203
        $actual[0] | Should -BeExactly 'On the first day of Christmas,'
        $actual[-1] | Should -BeExactly 'And a partridge in a pear tree.'
    }

    It "Test outfile" {
        $fileName = "TestDrive:\out.txt"
 
        $actual = &$Script:prg -o $fileName
        $actual | Should -Be $null

        Test-Path $fileName | Should -Be $true
    }
}