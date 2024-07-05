$url = "https://img.picui.cn/free/2024/07/05/6687d2f9c0915.png"
$savePath = "D:\6687d2f9c0915.png"

Invoke-WebRequest -Uri $url -OutFile $savePath

Add-Type @"
    using System;
    using System.Runtime.InteropServices;

    public class Wallpaper {
        [DllImport("user32.dll", CharSet=CharSet.Auto)]
        public static extern int SystemParametersInfo (int uAction , int uParam , string lpvParam , int fuWinIni) ;
    }
"@

$SPI_SETDESKWALLPAPER = 20
$null = [Wallpaper]::SystemParametersInfo($SPI_SETDESKWALLPAPER, 0, $savePath, 3)

