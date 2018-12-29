
$ErrorActionPreference = 'Stop';

$packageName= $env:ChocolateyPackageName
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/bruhov/WinThumbsPreloader/releases/download/v1.0.1/WinThumbsPreloader-1.0.1-setup.exe'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url

  softwareName  = 'winthumbspreloader*'

  checksum      = '9b256b39429e140c6368c84bcaee53749b26cc1b4216ca6e10b7edb6f612bb0c3c953c21bc5f214ad6b93f7ec680cd48b3834e46dc9f17ca97482e7f71ffb62e'
  checksumType  = 'sha512'
  
  silentArgs   = '/VERYSILENT'
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs










    








