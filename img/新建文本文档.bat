@echo off
setlocal enabledelayedexpansion

for %%F in (*) do (
    set "filename=%%~nF"
    set "extension=%%~xF"

    rem 移除空格和括号
    set "filename=!filename: =!"
    set "filename=!filename:(=!"
    set "filename=!filename:)=!"

    rem 生成新文件名
    set "newName=!filename!!extension!"

    rem 执行重命名
    if not "!filename!_!extension!"=="!newName!" (
        echo Renaming "%%F" to "!newName!"
        ren "%%F" "!newName!"
    )
)

endlocal

————————————————
版权声明：本文为CSDN博主「Kingsaj」的原创文章，遵循CC 4.0 BY-SA版权协议，转载请附上原文出处链接及本声明。
原文链接：https://blog.csdn.net/weixin_44412840/article/details/121462775