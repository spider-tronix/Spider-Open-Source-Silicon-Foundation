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

* To fix grid size to 0.05umx0.05um; Since minimum channel length 150nm:

    >`grid 0.05um 0.05um`

* To snap grid size (in GUI)

    > `snap user` 

### DRC

* Enable all incremental DRC checks

    > `drc style drc(full)`

* To check why DRC violation occurs

    > `drc why`

### Layout

* Draw something

    > `paint <component Ex. poly>`

* Erase component. Select using GUI then

    > `erase <component>`

* Erase everything. Select using GUI then

    > `erase`

* Copy; Select using GUI first

    > `copy <direction> <units>`

* Move; Select using GUI first

    > `move <direction> <units>`

* Label; Select using GUI first

    > `label <text> <direction> <layer to attach to>`

* Make a port; Make a label first

    > `port make <port number>`

### Exporting

* Extract after making layouts.

    > `extract all`

* Enable hierarchical extraction.

    > `ext2spice hierarchy on`

* Turn of scalling (do this everytime)

    > `ext2spice scale off`

* Actually perform conversion from extracted view to spice

    > `ext2spice`
