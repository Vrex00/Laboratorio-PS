function tiempo
{
    param([int]$dia, [int]$mes, [int]$año)
    $tiempo = Get-Date $dia'.'$mes'.'$año
    Write-Host " La fecha es $tiempo "
   
 } 