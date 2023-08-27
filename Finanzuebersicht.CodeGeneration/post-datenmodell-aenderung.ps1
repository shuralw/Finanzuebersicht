#!/usr/bin/env pwsh

# delete modules in Generated and copy from 2-PostContractor
Remove-Item -Recurse -Force ../Finanzuebersicht.Backends/Finanzuebersicht.Backend.Generated/Modules
Copy-Item -Recurse ../Finanzuebersicht.CodeGeneration/2-PostContractor/Backend.Generated/Modules ../Finanzuebersicht.Backends/Finanzuebersicht.Backend.Generated/Modules

$rootPath = "../Finanzuebersicht.Backends/Finanzuebersicht.Backend.Generated/Modules"
(Get-ChildItem -Path $rootPath -Recurse -Filter "*.cs" -File) | ForEach-Object {
    $filePath = $_.FullName
    $content = Get-Content -Path $filePath
    $newContent = $content -replace 'Backend/.CodeGeneration', 'Backend.Generated'
    $newContent | Set-Content -Path $filePath
}


# delete modules in DbContext and copy from 2-PostContractor
Remove-Item -Recurse -Force ../Finanzuebersicht.Databases/Finanzuebersicht.Database.Core/Generated.DbContext/Modules
Copy-Item -Recurse ../Finanzuebersicht.CodeGeneration/2-PostContractor/Database/Generated.DbContext/Modules ../Finanzuebersicht.Databases/Finanzuebersicht.Database.Core/Generated.DbContext/Modules

# delete FinanzuebersichtDbContextRaw.cs and copy from 2-PostContractor
Remove-Item -Force ../Finanzuebersicht.Databases/Finanzuebersicht.Database.Core/Generated.DbContext/FinanzuebersichtDbContextRaw.cs
Copy-Item ../Finanzuebersicht.CodeGeneration/2-PostContractor/Database/Generated.DbContext/FinanzuebersichtDbContextRaw.cs ../Finanzuebersicht.Databases/Finanzuebersicht.Database.Core/Generated.DbContext/FinanzuebersichtDbContextRaw.cs

# delete migrations
Remove-Item -Recurse -Force ../Finanzuebersicht.Databases/Finanzuebersicht.Database.Core/Generated.DbContext.EfMigrations/Migrations
