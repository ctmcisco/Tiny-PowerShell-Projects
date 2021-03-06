Describe "Test for 04_jump_the_five" {
    BeforeAll {
        $Script:prg = ".\jump_the_five.ps1"
    }

    It "Should exist" {
        Test-Path $Script:prg | Should -Be $true
    }

    It "Test 01" {
       &$Script:prg '123-456-7890' | Should -Be '987-604-3215'
    }

    It "Test 02" {
        &$Script:prg 'That number to call is 098-765-4321.' | Should -Be 'That number to call is 512-340-6789.'
     }
 }
