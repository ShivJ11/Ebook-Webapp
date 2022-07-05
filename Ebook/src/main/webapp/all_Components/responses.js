

function getBotResponse(input) {


	// Simple responses
	if (input == "hello" || input == "hi" || input == "hey") {
		return "Hello User!";
	} else if (input == "goodbye") {
		return "Talk to you later!";
	} else if (input == "help") {
		return "We can update you about : \n1. About us \n2. What we do";
	} else if (input == "about us"|| input == "1") {
		return "We are online Book Store designed to reach out the customer in way which is easy to communicate.";
	} else if (input == "what we do"|| input == "2") {
		return "We help in providing the customer with the desired book, purchase used book from them, refurbish it or recycle it.";
	} else {
		return "Try asking something else!";
	}
	/*if (input == "rock") {
			return "paper";
		} else if (input == "paper") {
			return "scissors";
		} else if (input == "scissors") {
			return "rock";
		}*/
}