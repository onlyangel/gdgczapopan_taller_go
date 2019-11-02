package main

import (
	"fmt"
	"math"
)

func main() {
	var x, y int = 3, 4
	var f float64 = math.Sqrt(float64(x*x + y*y))
	fmt.Println(f)
	var z uint = uint(f)
	fmt.Println(x, y, z)

	fmt.Printf("f is of type %T\n", f)
	fmt.Printf("z is of type %T\n", z)

	v := 42.1
	fmt.Printf("v is of type %T\n", v)
}
