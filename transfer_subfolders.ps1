param(
    [string]$sourceFolder = "C:\Users\tsuna\Documents\teststart",
    [string]$destinationFolder = "C:\Users\tsuna\Documents\testend"
)

$subfolders = Get-ChildItem -Path $sourceFolder -Directory

foreach ($subfolder in $subfolders) {

	$files = Get-ChildItem -Path $subfolder.FullName -File

	foreach ($file in $files) {
		Move-Item -Path $file.FullName -Destination $destinationFolder
	}
}