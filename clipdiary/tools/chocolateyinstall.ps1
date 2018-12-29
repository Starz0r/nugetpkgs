
$ErrorActionPreference = 'Stop';

$packageName= $env:ChocolateyPackageName
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'http://clipdiary.com/download/clipdiary_5.1.exe'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url

  softwareName  = 'clipdiary*'

  checksum      = 'A4429064EC095F54B791E28168DE63B3160FACC7435F050D9056E673C34165E59427F415E3B3E52A39A9F93E
8FF2E148EBC5594AAC542B21678B31210CFF553E'
  checksumType  = 'sha512'
  
  silentArgs   = '/S'
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs










    








