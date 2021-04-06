package main

import "fmt"

func getData() (customers []string) {

	customers = []string{"Michael", "Kevin", "Christ"} //instantiate a slice with three items

	return customers
}

func main() {
	customers := getData()

	for _, customer := range customers {
		fmt.Println(customer)
	}

}
