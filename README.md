# Grep visually

> Visually locate an occurence in a file

![preview matches](preview-matches.png)
 
### Install

    git clone git@github.com:edouard-lopez/grep-visual.git
    cp grep-visual/grep-visual.bash ~/.local/bin/

### Usage

    grep-visual par file.tsv

### Preview

##### No match
![preview-no-match](preview-no-match.png)
##### Single match
![preview-single-match](preview-single-match.png)
##### Multiple matches
![preview-matches](preview-matches.png)
##### Regex/Glob
> Regular expressions are the extended kind found in `egrep`.

![preview-glob-matches](preview-glob-matches.png)

### Under the hood

This is powered by the `awk` on your machine.

### License

> [MIT LICENSE](LICENSE)