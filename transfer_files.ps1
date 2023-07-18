param(
    [string]$sourceFolder = "C:\Users\tsuna\Documents\teststart",
    [string]$destinationFolder = "C:\Users\tsuna\Documents\testend"
)

$files = Get-ChildItem -Path $sourceFolder -File

foreach ($file in $files) {
	Move-Item -Path $file.FullName -Destination $destinationFolder
}