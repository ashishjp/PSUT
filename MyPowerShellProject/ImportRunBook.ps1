#
# ImportRunBook.ps1
#
function ImportRunBook{
	param(
        [Parameter(Mandatory=$true, Position=0)]
		[string]$runbookName,
        [Parameter(Mandatory=$true, Position=1)]
        [string]$scriptPath,
        [Parameter(Mandatory=$true, Position=2)]
        [string]$automationAccountName,
        [Parameter(Mandatory=$true, Position=3)]
        [string]$RGName
	)
	Import-AzureRMAutomationRunbook -Name $runbookName -Path $scriptPath -ResourceGroupName $RGName -AutomationAccountName $automationAccountName -Type PowerShell
}

#$cred = Get-Credential
#Add-AzureRmAccount -Credential $cred

#$automationAccountName =  "RunBookTestAcc"
#$runbookName = "MyFirstRunBook"
#$scriptPath = "C:\Users\cpatilas\Documents\visual studio 2013\Projects\PSUT\MyPowerShellProject\MyFirstRunBook.ps1"
#$RGName = "RunBookTestResources"

#Import-AzureRMAutomationRunbook -Name $runbookName -Path $scriptPath -ResourceGroupName $RGName -AutomationAccountName $automationAccountName -Type PowerShell 


#Publish-AzureRmAutomationRunbook -AutomationAccountName $automationAccountName -Name $runbookName -ResourceGroupName $RGName