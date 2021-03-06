# Telephone

Write a program that randomly mutates some given text which may be given on the command line:

```
C:\> .\telephone.ps1 'The quick brown fox jumps over the lazy dog.'
You said: "The quick brown fox jumps over the lazy dog."
I heard : "The qu)ck brown HoN jumps over thf lazy dog."
```

Or from a file:

```
C:\> .\telephone.ps1 ../inputs/fox.txt
You said: "The quick brown fox jumps over the lazy dog."
I heard : "=he quick brswn fox jumps over the*[azy dog."
```

The program should accept a `-m` or `--mutations` that is a floating point number between 0 and 1 that represents a percentage of mutations to introduce:

```
C:\> .\telephone.ps1 -m .5 ../inputs/fox.txt
You said: "The quick brown fox jumps over the lazy dog."
I heard : "w\eeqhR$kBbxown|foGLFuvn| ooe: t'. l"zy d&:."
```

It should also accept a `-s` or `--seed` argument for the random seed to ensure reproducible results:

```
C:\> .\telephone.ps1 -s 2 ../inputs/fox.txt
You said: "The quick brown fox jumps over the lazy dog."
I heard : "TheNqHick Crown fox jum_s over the lazy dog."
```
