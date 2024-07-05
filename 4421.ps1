# 设置下载的图片链接和保存路径
$url = "https://img.picui.cn/free/2024/07/05/6687d2f9c0915.png"
$savePath = "D:\6687d2f9c0915.png"

# 下载图片到指定路径
Write-Host "正在下载图片..."
Invoke-WebRequest -Uri $url -OutFile $savePath

# 设置壁纸
Write-Host "正在设置壁纸..."

# 使用 COM 对象修改壁纸
$SPI_SETDESKWALLPAPER = 20
$code = @"
using System;
using System.Runtime.InteropServices;

public class Wallpaper {
    [DllImport("user32.dll", CharSet=CharSet.Auto)]
    public static extern int SystemParametersInfo (int uAction , int uParam , string lpvParam , int fuWinIni) ;
}

public class Example {
    private static void test ( ) { If you strict
