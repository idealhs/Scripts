@echo off

echo "RDP Disconnect but with session active."
echo "Please run as Admin"

for /f "tokens=3 delims= " %%i in ('query session ^| findstr ">"') do (
    set "SessionId=%%i"
)

call tscon %SessionId% /dest:console