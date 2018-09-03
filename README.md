# FSM
## Sequence Detector(Detect 1101)
Simple examples for my presentation. I've made:
  - Moore machine
  - Mealy machine

## Digest
### Syntax check
```sh
ghdl -s <filename>
```
### Analyze
```sh
ghdl -a <filename>
```
### Elaborate
```sh
ghdl -e <entityname>
```
### Run
```sh
ghdl -r <entityname>
```
### Run and create vcd file   
```sh
ghdl -r <entityname> --vcd=<filename(with *.vcd extension)>
```

### You can simulate it using GTKWave!
Just open `*.vcd` file using `GTKWave`
