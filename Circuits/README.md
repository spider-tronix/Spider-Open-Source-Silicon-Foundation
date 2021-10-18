# Useful Commands for using XSchem and Magic

# XSchem

<br>

## Launching XSchem

```bash
~/.xschem/xschem_library/xschem_sky130
```

<br>

# Magic

<br>

## Launching Magic

```bash
magic -rcfile /usr/share/pdk/share/pdk/sky130A/libs.tech/magic/sky130A.magicrc <file name>.mag
```

## Using Magic

### Grid

* To fix grid size to 75nmx75nm; Since minimum channel length 150nm:

    >`grid 75nm 75nm`
* To snap grid size (in GUI)
    > `snap user`

