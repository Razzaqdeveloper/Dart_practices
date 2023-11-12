import 'dart:io';
import 'dart:async';

class User {
	late String username;

	User(this.username);
}

class Message {
	late User sender;
	late String text;
	late DateTime timestamp;

	Message(this.sender, this.text) : timestamp = DateTime.now() ;
}

class ChatApplication {
	List<User> users = [];
	List<Message> messages = [];

	void registerUser(User user) {
		users.add(user);
		print('User ${user.username} registered.');
	}

	void displayChat() {
		
		for (var message in messages) {
			print('${message.timestamp.toLocal()} | ${message.sender.username}: ${message.text}');
		}
	}

	void sendMessage(User sender, User receiver, String text) {
		var message = Message(sender, text);
		messages.add(message);
		print('Message sent by ${sender.username} to ${receiver.username}: $text');
	}
	
	User getUserByName(String username) {
		
		return users.firstWhere((user) => user.username == username);
		
	}
}

void main() {

	stdout.write("User1: ");
		String userOne = stdin.readLineSync() ?? "";

		if (userOne.length < 6) {
			print("\x1B[31m User Name must be greater than 14 and less than 24 character.\x1B[0m");
			return;
		}
	if (userOne.length > 24 ) {
		print("\x1B[31m User Name must be greater than 14 and less than 24 character.\x1B[0m");
		return;
	}
		if(!userOne.contains(RegExp(r'[ABCDEFGHIJKLMNOPQRSTUVWXYZ]'))) {
			print("\x1B[31m First Name must be use one capital alphabet.\x1B[0m");
			return;
		}

		stdout.write("Enter Phone Number: ");
		var phoneNum = stdin.readLineSync() ?? "";

		if (phoneNum.length < 5) {
			print("\x1B[31m invalid Phone Number  try again.\x1B[0m");
			return;
		}
	if (phoneNum.length > 16) {
		print("\x1B[31m Invalid Phone number try again.\x1B[0m");
		return;
	}

		if(!phoneNum.contains(RegExp(r"[0123456789]"))) {
			print("\x1B[31m Enter Phone Number .\x1B[0m");
			return;
		}

	var chatApp = ChatApplication();

	// Register users
	var user1 = User('$userOne');
	chatApp.registerUser(user1);


	
	stdout.write("User2: ");
		String userTwo = stdin.readLineSync() ?? "";

		if (userTwo.length < 6) {
			print("\x1B[31m User Name must be greater than 14 and less than 24 character.\x1B[0m");
			return;
		}
	if (userTwo.length > 24 ) {
		print("\x1B[31m User Name must be greater than 14 and less than 24 character.\x1B[0m");
		return;
	}
		if(!userTwo.contains(RegExp(r'[ABCDEFGHIJKLMNOPQRSTUVWXYZ]'))) {
			print("\x1B[31m First Name must be use one capital alphabet.\x1B[0m");
			return;
		}

		stdout.write("Enter Phone Number: ");
		var phoneNum2 = stdin.readLineSync() ?? "";

		if (phoneNum2.length < 5) {
			print("\x1B[31m invalid Phone Number  try again.\x1B[0m");
			return;
		}
	if (phoneNum2.length > 16) {
		print("\x1B[31m Invalid Phone number try again.\x1B[0m");
		return;
	}

		if(!phoneNum2.contains(RegExp(r"[0123456789]"))) {
			print("\x1B[31m Enter Phone Number .\x1B[0m");
			return;
		}
	var user2 = User('$userTwo');
	chatApp.registerUser(user2);

	// Display registered users
	print('Registered Users: ${chatApp.users.map((user) => user.username).join(', ')}');

	// Simulate chat between User1 and User2
	while (true) {
		stdout.write('${user1.username}, enter your message: ');
		var input = stdin.readLineSync()!;
		if (input.toLowerCase() == 'exit') {
			print('Exiting chat application. Goodbye!');
			exit(0);
		} else {
			chatApp.sendMessage(user1, user2, input);
			
			chatApp.displayChat();
		}

		stdout.write('${user2.username}, enter your message: ');
		input = stdin.readLineSync()!;
		if (input.toLowerCase() == 'exit') {
			print('Exiting chat application. Goodbye!');
			exit(0);
		} else {
			chatApp.sendMessage(user2, user1, input);
			chatApp.displayChat();
			
		}
	}
	
}
