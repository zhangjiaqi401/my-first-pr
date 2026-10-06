# my-first-pr

一个用来练习 GitHub Pull Request 流程的小项目。

## 功能

- `Get-WordCount`：统计一段文字中的单词数量
- `ConvertTo-TitleCase`：把每个单词的首字母变成大写

## 使用方法

```powershell
. .\src\TextTools.ps1

Get-WordCount "hello world"        # 输出 2
ConvertTo-TitleCase "hello world"  # 输出 Hello World
```

这两个 function 都只依赖 PowerShell，不需要安装额外的软件。

## 运行测试

测试使用 Windows 自带的 [Pester](https://pester.dev/) 框架：

```powershell
Invoke-Pester .\tests
```
