$oldPassword = (Get-Credential 'OldPassword').GetNetworkCredential().Password
$newPassword = (Get-Credential 'NewPassword').GetNetworkCredential().Password
$user = [adsi]"WinNT://$Env:UserDomain/$Env:UserName,user"
$user.ChangePassword($oldPassword, $newPassword)
