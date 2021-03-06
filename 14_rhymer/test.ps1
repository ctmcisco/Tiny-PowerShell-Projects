Describe "Test for 14_rhymer" {
    BeforeAll {
        $Script:prg = ".\rhymer.ps1"
    }

    It "Should exist" {
        Test-Path $Script:prg | Should -Be $true
    }

    It "Test take" {
        $actual = &$Script:prg take

        $actual[0] | Should -BeExactly 'bake'
        $actual[-1] | Should -BeExactly 'zake'
    }

    It "Test no vowels hymn" {
        $actual = &$Script:prg hymn

        $actual.Count | Should -Be 1
        $actual | Should -BeExactly "Cannot rhyme 'hymn'"
    }

    It "Test chair" {
        # consonant cluster

        $actual = &$Script:prg chair

        $actual[1] | Should -BeExactly 'blair'
        $actual[-2] | Should -BeExactly 'yair'
    }

    It "Test CHAIR" {
        # uppercase
        $actual = &$Script:prg CHAIR

        $actual[1] | Should -BeExactly 'blair'
        $actual[-2] | Should -BeExactly 'yair'
    }

    It "Test apple" {
        # leading vowel
        $actual = &$Script:prg apple

        $actual[10] | Should -BeExactly 'flapple'
        $actual[-10] | Should -BeExactly 'thwapple'
    }
}

Describe "Test Invoke-Stemmer" {
    BeforeAll {
        
    }

    It "Should test stemmer" {
        .  .\rhymer.ps1
        $result = Invoke-Stemmer ''
        $result[0] | Should -Be $null
        $result[1] | Should -Be $null
        
        $result = Invoke-Stemmer cake
        $result[0] | Should -BeExactly 'c'
        $result[1] | Should -BeExactly 'ake'

        $result = Invoke-Stemmer chair
        $result[0] | Should -BeExactly 'ch'
        $result[1] | Should -BeExactly 'air'

        $result = Invoke-Stemmer APPLE
        $result[0] | Should -BeExactly ''
        $result[1] | Should -BeExactly 'apple'

        # $result = Invoke-Stemmer RDNZL
        # $result[0] | Should -BeExactly 'rdnzl'
        # $result[1] | Should -BeExactly ''

        # $result = Invoke-Stemmer '123'
        # $result[0] | Should -BeExactly '123'
        # $result[1] | Should -BeExactly ''

        # assert stemmer('') == ('', '')
        # assert stemmer('cake') == ('c', 'ake')
        # assert stemmer('chair') == ('ch', 'air')
        # assert stemmer('APPLE') == ('', 'apple')
        # assert stemmer('RDNZL') == ('rdnzl', '')
        # assert stemmer('123') == ('123', '')    
    }
}