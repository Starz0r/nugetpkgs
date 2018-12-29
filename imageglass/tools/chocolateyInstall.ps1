$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'imageglass'
  fileType       = 'msi'
  url            = 'https://github.com/d2phap/ImageGlass/releases/download/6.0.12.29/ImageGlass_6.0.12.29_x86.msi'
  checksum       = '0780099b0765d3852778a72bcc787b51c7ca325963ad5490f142ca1f2fb3aec00688f0a6120f02a2d232093a6fe4f96bece16455dc4e6c508ace6780c4515264'
  checksumType   = 'sha512'
  url64          = 'https://github.com/d2phap/ImageGlass/releases/download/6.0.12.29/ImageGlass_6.0.12.29_x64.msi'
  checksum64     = 'd444cc919961f3330ce324f9c6b7090cf73af927a99fa6a9312b1860a133ee5fa8350431dd3a1a235f592f0670492ad6cfac728b68cdd5da36d120c228d7abbb'
  checksumType64 = 'sha512'
  silentArgs     = '/quiet /qn /norestart'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs

$packageName = $packageArgs.packageName
$installLocation = Get-AppInstallLocation $packageName
if (!$installLocation)  { Write-Warning "Can't find $packageName install location"; return }
Write-Host "$packageName installed to '$installLocation'"