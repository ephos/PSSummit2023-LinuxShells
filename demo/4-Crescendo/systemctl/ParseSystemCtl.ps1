function ParseSystemCtl {
    param (
        [Parameter(Mandatory=$true)]
        $CmdOutput
    )
    
    $output = $CmdOutput.TrimStart()
    $lines = $output -split '\r?\n'
    $psCustomObjects = $lines | ForEach-Object {
        if (-not [string]::IsNullOrWhiteSpace($_)) {
            $unit = ($_ -replace '\s+.*', '').Trim()
            $load = ($_ -replace '^.*?\s+(\S+)\s+.*', '$1').Trim()
            $active = ($_ -replace '^.*?\s+\S+\s+(\S+)\s+.*', '$1').Trim()
            $sub = ($_ -replace '^.*?\s+\S+\s+\S+\s+(\S+)\s+.*', '$1').Trim()
            $description = ($_ -replace '^.*?\s+\S+\s+\S+\s+\S+\s+(.*)', '$1').Trim()
            [PSCustomObject]@{
                Unit = $unit
                Load = $load
                Active = $active
                Sub = $sub
                Description = $description
            }
        }
    }
    $psCustomObjects
}
