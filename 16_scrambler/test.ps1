Describe "Test for 16_scrambler" {
    BeforeAll {
        $Script:prg = ".\scrambler.ps1"
    }

    It "Should exist" {
        Test-Path $Script:prg | Should -Be $true
    }

    It "Test text1" {
        $actual = &$Script:prg foobar -s 1
        $actual | Should -BeExactly 'foabor'
    }

    It "Test text2" {
        $text = 'The quick brown fox jumps over the lazy dog.'
        $expected = 'The qicuk bwron fox jumps over the lazy dog.'
        $actual = &$Script:prg $text -s 2

        $actual | Should -BeExactly $expected
    }

    It "Test Invoke-Scramble" {
        &$Script:prg a | Should -BeExactly 'a'
        &$Script:prg ab | Should -BeExactly 'ab'
        &$Script:prg abc | Should -BeExactly 'abc'
        &$Script:prg abcd -seed 1 | Should -BeExactly 'abcd'
        &$Script:prg abcde -seed 1 | Should -BeExactly 'abdce'
        &$Script:prg "abcde'f" | Should -BeExactly "a'ecbdf"
    }
}