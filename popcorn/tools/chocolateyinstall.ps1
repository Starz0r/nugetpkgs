
$ErrorActionPreference = 'Stop';

$packageName= $env:ChocolateyPackageName
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/bbougot/Popcorn/releases/download/v5.0.1/PopcornInstaller.exe'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url

  softwareName  = 'popcorn*'

  checksum      = '1e568f2cb19ee978b8fa14f373d41fc3aa0bc54dbf9c672532db370417132e281506f9ab151d77ac853199168e8c2ed5b6abc73b39f3ad6ba3985af0efc43be5'
  checksumType  = 'sha512'
  
  silentArgs   = '--silent'
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs