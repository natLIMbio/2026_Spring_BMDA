$outdir = "C:\hiv-tb-data"
New-Item -ItemType Directory -Force -Path $outdir

$srrs = @(
    "SRR6305390","SRR6305391","SRR6305392",
    "SRR6305393","SRR6305394","SRR6305395","SRR6305396","SRR6305397",
    "SRR6305398","SRR6305399","SRR6305400"
)

foreach ($srr in $srrs) {
    Write-Host "Cumming $srr..."
    fasterq-dump $srr --outdir $outdir --threads 4 --progress
}

Write-Host "All done!"