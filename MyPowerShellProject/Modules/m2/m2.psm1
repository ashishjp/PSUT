

<# 
 .Synopsis
  Displays greeting message.

 .Description
  Displays a greeting message.

 .Parameter name
  Name of user.

 .Example
   # Show a default display message.
   Get-Greeting

 .Example
   # Display a date range.
   Get-Greeting -name "Test User"

 .OUTPUTS
   Greeting string output
#>

Function Get-Greeting {

	param(
		[string]$name = "World"
	)

	Write-Output "Hello $name"
}

$HW = Get-Greeting

#Set a alias

Set-Alias HW Get-Greeting

# Export Module Members
Export-ModuleMember -Variable *
Export-ModuleMember -Alias *
Export-ModuleMember -Function "*"


# Specify removal action
$mdet = $MyInvocation.MyCommand.ScriptBlock.Module
$mdet.OnRemove = { Write-Host "M2 removed on $(Get-Date)"}

