$ErrorActionPreference = "Stop"

$msbuild = &".\find_msbuild.ps1"

&$msbuild                            `
    "/t:Clean;Build"                 `
    /m:4                             `
    /property:Configuration=Release  `
    /property:Platform=x64           `
    Principia.sln

if (!$?) {
  exit 1
}
