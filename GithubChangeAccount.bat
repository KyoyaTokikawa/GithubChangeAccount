echo off
cmdkey /delete git:https://github.com

@REM /passに設定するのは、settings -> Developer settings -> Personal access tokens で作成した access token
cmdkey /generic git:https://github.com /user:user /pass:accesstoken
@REM github上のアカウントに紐づく情報を登録すると、そのユーザでの操作になる
git config --global user.name "NAME"
git config --global user.email "E-MAIL"