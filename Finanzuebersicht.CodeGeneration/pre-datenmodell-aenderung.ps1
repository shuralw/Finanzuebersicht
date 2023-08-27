#!/usr/bin/env pwsh

# delete all files from Finanzuebersicht.CodeGeneration/2-PostContractor and copy from 1-PreContractor
Remove-Item -Recurse -Force ../Finanzuebersicht.CodeGeneration/2-PostContractor
Copy-Item -Recurse ../Finanzuebersicht.CodeGeneration/1-PreContractor ../Finanzuebersicht.CodeGeneration/2-PostContractor
