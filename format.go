package main

import (
    "bufio"
    "fmt"
    "log"
    "os"
	"strings"
)

var language string = "FR"

func format(line string, w *os.File) {
	// format the line here : ex 15663 borner 16425 bruni 21151 campa 21513 ceux 22235 clama 22561 copia 23323 crime 23645 dartre
	splited := strings.Split(line, " ")

	for i := 0; i < len(splited); i += 2 {
		fmt.Fprintf(w, "%s %s\n", splited[i], splited[i+1])
	}
}

func main() {
    // open file
    f, err := os.Open("raw.txt")
    if err != nil {
        log.Fatal(err)
    }
    defer f.Close()

	// open writting file
	w, err := os.Create("wordlist/diceware_" + language + ".txt")
	if err != nil {
		log.Fatal(err)
	}
	defer w.Close()

    scanner := bufio.NewScanner(f)

    for scanner.Scan() {
        format(scanner.Text(), w)
    }

    if err := scanner.Err(); err != nil {
        log.Fatal(err)
    }
}