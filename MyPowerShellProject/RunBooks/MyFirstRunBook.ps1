#
# MyFirstRunBook.ps1 New
#


function MyFirstRunBook {

	param(
		[string]$name = "Test"
	)

	Write-Output "Hello $name"
}