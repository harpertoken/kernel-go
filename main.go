package main

import (
	"fmt"
	"os/exec"
)

func main() {
	fmt.Println("macOS Kernel Tool - System Info (Go)")

	out, err := exec.Command("uname", "-a").Output()
	if err != nil {
		fmt.Println("Error running uname:", err)
		return
	}

	fmt.Println("Uname output:", string(out))
}
