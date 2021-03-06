# wc (word count)

Write a PowerShell implementation of `wc` (word count).
The program should print lines, words, and characters for each input.
Files are acceptable arguments:

```
C:\> .\wc.ps1 ..\inputFiles\fox.txt
       1       9      45 ..\inputFiles\fox.txt
```

As is "standard in" (`STDIN`) if given no arguments:

```
$ cat ..\inputFiles\fox.txt | ./wc.py
       1       9      45 <stdin>
```

If given more than one file, also include a summary for each column:

```
const.txt
dickinson.txt
fox.txt
gettysburg.txt
issa.txt
nobody.txt
now.txt
out.txt
preamble.txt
scarlet.txt
sonnet-29.txt
sonnets.txt
spiders.txt
the-bustle.txt
usdeclar.txt
```

```
C:\> .\wc.ps1 ..\inputFiles\*.txt
    1000    1000    5840 ..\inputFiles\1000.txt
     100     100     657 ..\inputFiles\1945-boys.txt
     100     100     684 ..\inputFiles\1945-girls.txt
     865    7620   44841 ..\inputFiles\const.txt
    2476    7436   41743 ..\inputFiles\dickinson.txt
       1       9      45 ..\inputFiles\fox.txt
      25     278    1476 ..\inputFiles\gettysburg.txt
      37      91     499 ..\inputFiles\issa.txt
       9      51     248 ..\inputFiles\nobody.txt
       1      16      66 ..\inputFiles\now.txt
       2       9      41 ..\inputFiles\out.txt
       6      71     413 ..\inputFiles\preamble.txt
    7035   68061  396320 ..\inputFiles\scarlet.txt
      17     118     661 ..\inputFiles\sonnet-29.txt
    2618   17668   95690 ..\inputFiles\sonnets.txt
       3       7      45 ..\inputFiles\spiders.txt
       9      34     192 ..\inputFiles\the-bustle.txt
   37842   48990  369949 ..\inputFiles\uscities.txt
     176    1340    8685 ..\inputFiles\usdeclar.txt
   52322  152999  968095 total
```

