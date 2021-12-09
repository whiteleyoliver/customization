$Credential = Get-Credential
Remove-StoredCredential -Target files.whiteleyoliver.local -Type DomainPassword
New-StoredCredential -Target files.whiteleyoliver.local -UserName $credential.username -Password $credential.password -Type DomainPassword -Persist Enterprise
