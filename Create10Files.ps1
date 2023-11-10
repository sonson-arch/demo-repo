1..10 | ForEach-Object { 
    New-Item -ItemType File -Path $path -Name "testfile$_" -Value "This is test file $_"
}

Get-ChildItem -Path $path | Where-Object { $_.Name -like "testfile*" } | ForEach-Object {
    Remove-Item $_.FullName
}