$prg = "ransom.ps1"

foreach ($file in (Get-ChildItem solution*.ps1)) {
    Write-Host -ForegroundColor Yellow "Testing $(Split-Path -Leaf $file)"
    Remove-Item $prg
    Copy-Item $file $prg
    Invoke-Pester .\test.ps1 -Show All
    ""
}
