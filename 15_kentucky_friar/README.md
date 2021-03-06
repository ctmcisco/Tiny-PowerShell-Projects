# The Kentucky Friar

Write a program that will drop the final "g" of two-syllable words ending in "-ing" and also replace any occurrence of the word "you" (case-insensitive) with the word "y'all" so as to transform text into a dialect common to the US Deep South (from which your author hails).
The given text may come from the command line:

```
C:\> ./friar.ps1 'Do you want to do some cooking with me?'
Do y'all want to do some cookin' with me?
```

Or from an input file:

```
C:\> ./friar.ps1 ../inputs/nobody.txt
I'm Nobody! Who are y'all?
Are y'all -- Nobody -- too?
Then there’s a pair of us!
Don't tell! they'd advertise -- y'all know!

How dreary -- to be -- Somebody!
How public -- like a Frog --
To tell one's name -- the livelong June --
To an admirin' Bog!
```

Note that one-syllable words ending with "-ing" should be unchanged:

```
C:\> ./friar.ps1 swing
swing
```

If provided no arguments, the program should print a brief usage:

```
C:\> ./friar.ps1
usage: friar.py [-h] str
friar.py: error: the following arguments are required: str
```

