$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'imageglass'
  fileType       = 'msi'
  url            = 'https://github.com/d2phap/ImageGlass/releases/download/5.5.7.26/ImageGlass_5.5.7.26_x86.msi'
  checksum       = 'b47de2c07941c8772b0f7d0be14937e74dc439d006b55ecb5450da07e0acc0361be882ba934ab850673fe0e3a95c661afb6af6b29ebcfdf84d48f0c50f91131b'
  checksumType   = 'sha512'
  url64          = 'https://github.com/d2phap/ImageGlass/releases/download/5.5.7.26/ImageGlass_5.5.7.26_x64.msi'
  checksum64     = '54aca5718813cb2912f34d1408d54e07f575e2033e0c7719b692a559d55e5dad4b78b9f01b23e9ad1c158b738f98a5a979f0cf3405600de9847683ce0066560e'
  checksumType64 = 'sha512'
  silentArgs     = '/quiet /qn /norestart'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs

$packageName = $packageArgs.packageName
$installLocation = Get-AppInstallLocation $packageName
if (!$installLocation)  { Write-Warning "Can't find $packageName install location"; return }
Write-Host "$packageName installed to '$installLocation'"