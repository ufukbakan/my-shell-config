function pt{
	pnpm run test
}
function pd{
	pnpm run dev
}
set-alias java8 "C:\jdk8u345-lite\bin\java.exe"
set-alias pn pnpm
# Import the Chocolatey Profile that contains the necessary code to enable
# tab-completions to function for `choco`.
# Be aware that if you are missing these lines from your profile, tab completion
# for `choco` will not function.
# See https://ch0.co/tab-completion for details.
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}

#Invoke-Expression (&starship init powershell)
oh-my-posh init pwsh --config "C:\Users\9500173\Downloads\capr4n.omp.json" | Invoke-Expression
clear
