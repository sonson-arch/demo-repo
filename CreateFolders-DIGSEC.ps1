$courseArray = @(
"DCST1001 - Infrastruktur grunnleggende ferdigheter",
"DCST1002 - Cybersikkerhet og teamarbeid",
"DCST1003 - Grunnleggende programmering",
"DCST1004 - Matematikk for informatikk",
"HMS0002  - HMS-kurs for 1. årsstudenter",
"DCST1005 - Infrastruktur sikre grunntjenester",
"DCST1006 - Datakommunikasjon og nettverk",
"DCST1007 - Objektorientert programmering",
"IDATT2002 - Databaser",
"DCST2001 - Sammenkoblede nettverk og nettverkssikkerhet",
"DCST2002 - Webutvikling",
"EXPH0300 - Examen philosophicum for naturvitenskap og teknologi",
"IDATT2202 - Operativsystemer",
"DCST2003 - Robuste og skalerbare tjenester",
"DCST2005 - Risikostyring",
"IDATT1005 - Systemutvikling"
)
$path = "C:\Users\Sondre Søndergaard\OneDrive - NTNU\DIGSEC\Høst 23\DCST1001 - Infrastruktur grunnleggende ferdigheter\Demo-git\demo-repo"
$courseArray | ForEach-Object {
    $folder = Join-Path -Path $path -ChildPath $_
    New-Item -ItemType Directory -Path $folder
    New-Item -ItemType File -Path $folder -Name "testfile.txt" -Value "This is test file $_"
    #Remove-Item -Path $folder -Recurse -Force
}