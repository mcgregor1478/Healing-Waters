package main

import "fmt"

func main() {
	// Print the title
	fmt.Println("Healing Waters")

	// Set up melody
	melody := []string{
		"D4", "A4", "E5", "C4",
		"D4", "F4", "E5", "C5",
		"B4", "A4", "D5", "G4",
	}

	// Loop through melody
	for _, note := range melody {
		// Play the notes
		fmt.Println(note)
	}

	// Set up rhythm
	rhythm := []string{
		"quarter", "eighth", "quarter", "eighth",
		"quarter", "eighth", "quarter", "eighth",
		"quarter", "eighth", "quarter", "eighth",
	}

	// Loop through rhythm
	for i, beat := range rhythm {
		// Print the beat
		fmt.Printf("beat %d = %s\n", i+1, beat)
	}

	// Set up harmony
	harmony := []string{
		"F3", "G3", "F3", "C3",
		"A2", "B2", "C3", "A2",
		"G2", "F2", "G2", "G2",
	}

	// Print harmony
	for i, harmonyNote := range harmony {
		fmt.Printf("Note %d Harmonizes with - %s\n", i+1, harmonyNote)
	}

	// Set up lyrics
	lyrics := []string{
		"Healing waters, come and heal me",
		"Link'd in sorrow, I will kneel",
		"All my fears, come to me now",
		"In time, come and wash away",
		"Healing waters, hear my plea",
		"Washing away all my pain",
		"Take my heart, come and heal me",
		"Hear my need, carry me away",
	}

	// Loop through lyrics
	for _, line := range lyrics {
		// Print the lyrics
		fmt.Println(line)
	}

}