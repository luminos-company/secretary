package main

func HandleError(err error) {
	if err != nil {
		panic(err)
	}
}

func main() {
	runCroner()
	runServer()
}
