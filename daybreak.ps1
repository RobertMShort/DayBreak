$new = $args[0]

if (-not(Test-Path -Path C:\windows\temp\start.txt -PathType Leaf) -or $new -eq "-n")
{

type daybreaklogo.txt

$a = @()

while ($program -ne 'q')
{
$program = Read-Host -Prompt 'Enter Program '

if ($program -eq 'edge')
{
	$program = 'msedge'
}

$a += $program

$b = $a -ne "q"

}

Write-Output $b | Out-File C:\windows\temp\start.txt
Write-Host "Starting Processes: "
Get-Content -Path C:\windows\temp\start.txt

for ($i = 0; $i -lt $b.Length; $i++)
{
	Start-Process $b[$i]
}

}

else {

	type daybreaklogo.txt

	Write-Host "Starting Processes: "
	Get-Content -Path C:\windows\temp\start.txt

	$c = Get-Content -Path @("C:\windows\temp\start.txt")

	for ($i = 0; $i -lt $c.Length; $i++)
	{
		Start-Process $c[$i]
	}	

}
