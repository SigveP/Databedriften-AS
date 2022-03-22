$path = Read-Host -Promt "Filepath"
Import-Csv $path | Remove-ADUser