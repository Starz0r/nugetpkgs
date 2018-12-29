$ErrorActionPreference = 'Stop'
 
$packageName = 'f.lux'
$url32       = 'https://justgetflux.com/flux-setup4.exe'
 
$packageArgs = @{
  packageName            = $packageName
  fileType               = 'exe'
  url                    = $url32
  silentArgs             = '/S'
  validExitCodes         = @(0)
  registryUninstallerKey = $packageName
}
 
Install-ChocolateyPackage @packageArgs
