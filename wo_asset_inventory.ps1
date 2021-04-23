$timespan=New-TimeSpan -Minutes 1
$taskAction = New-ScheduledTaskAction `
    -WorkingDirectory 'C:\MDM' `
    -Execute 'SelfScan.exe' `
    -Argument 'apiKey=1003.92c7653dadbda0932c06f0a2173a2708.8f2e3befc0056ebabb3ba7bf433c4054'
$taskTrigger = New-ScheduledTaskTrigger -AtLogOn -RandomDelay $timespan

$taskName = "WhiteleyOliver Asset Inventory"

$description = "Perform Assest Inventory at Logon"

Register-ScheduledTask `
    -TaskName $taskName `
    -Action $taskAction `
    -Trigger $taskTrigger `
    -Description $description
