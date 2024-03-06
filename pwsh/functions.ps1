function fll { lsd -l }
function fla { lsd -a }
function flla { lsd -al }
function feleane { code . }
function fupdatepwsh { . $PROFILE }

# Remove files without confirmation
function frmf {
  param([Parameter(Position=0, ValueFromRemainingArguments=$true)]$Paths)
  foreach ($Path in $Paths) {
    $FullPath = Join-Path -Path (Get-Location) -ChildPath $Path
    Remove-Item -Path $FullPath -Recurse -Force -ErrorAction SilentlyContinue
  }
}

# Create multiple folders
function fmkds {
  param([Parameter(Position=0, ValueFromRemainingArguments=$true)]$FolderNames)
  foreach ($FolderName in $FolderNames) {
    New-Item -ItemType Directory -Force -Path $FolderName
  }
}

# Create multiple files
function fmkfs {
  param([Parameter(Position=0, ValueFromRemainingArguments=$true)]$FileNames)
  foreach ($FileName in $FileNames) {
    New-Item -ItemType File -Force -Path $FileName
  }
}
