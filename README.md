# ExtensionMgr
ExtensionMgr or ExtMgr for short, will disable and enable any Chrome (no lacros support) extension installed as just a shell script.

## How to use?
You MUST BE ON R101 AND BELOW OR IT WILL NOT WORK
1) Open crosh
2) Run the command:
```
set_cellular_ppp \';bash;exit;\'
```
3) Run this command after you escalte to a chronos shell:
```
curl -LOk https://raw.githubusercontent.com/ClockworkIndustries/ExtensionMgr/main/ExtensionMgr.sh && sudo bash ExtensionMgr.sh
```
4) Select your extension
5) Select enable or disable
6) profit

# FAQ
## Wahh Wahh crosh is blocked 😢
Too bad, use LTBEEF sincd you have to be on 101 or before.
## It wont work!!! 😭
Make a [issue report](https://github.com/ClockworkIndustries/ExtensionMgr/issues)
