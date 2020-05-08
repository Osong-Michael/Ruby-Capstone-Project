# Ruby-Capstone-Project
The aim of this project is putting the student in a real life situation where they are given a real-world-like project with specifications and a time duration to convert those specifications into a functional product.
For my own project I was asked to build a linter with Ruby and I decided to build a linter for CSS files that checks for line spacing errors in your code.

# Built With
- RUBY

# Prerequisites
- Get ruby latest version installed

# Install
- Install VSCode or any code editor you like
- Install Node JS and nmp(most recents versions)

# Getting Started

To get a local copy up and running follow these simple example steps.

- Open a terminal or command prompt interface on your machine
- Clone the project unto your local machine: `git clone https://github.com/OA7/Ruby-Capstone-Project.git`
- From your terminal enter the project directory using `cd Ruby-Capstone-Project` 

# Instructions

- To check for errors in your css file run the code `rubybin/main.rb + path to css file you want to check`
# How it works
The linter scans through the css file and returns an error with the line number of where that error occurered. **This linter checks for only line spacing errors**
The errors this linter checks for are errors like the following below:

* Bad Code
- `.blue{color: blue}` this will result in an error because the linter is expecting a space after the selector `.blue`, so it should look like this...
* Good Code
- `.blue {color: blue}`

* Bad Code
- `.blue {color:blue}` this will result in an error because the linter is expecting a space after the attribute `color:`, so it should look like this...
* Good Code
- `.blue {color: blue}`

* Bad Code
- `.blue,p {height: 100px}` this will result in an error because the linter is expecting a space after the selector `.blue` before the next selector `p` so it should look like this...
* Good Code
- `.blue, p {height: 100px}`



## Author

👤 **Osong Agberndifor**

- Github: [@githubhandle](https://github.com/OA7)
- Twitter: [@twitterhandle](https://twitter.com/Osong17)
- Linkedin: [linkedin](https://linkedin.com/osong-agberndifor)

## 🤝 Contributing
Contributions, issues and feature requests are welcome!
Feel free to check the [Issues page](https://github.com/OA7/Ruby-Capstone-Project/issues).

## Acknowledgments
- Hat tip to <a href="https://microverse.org/">Microverse</a>
- My stand-up team members for helping me out with ideas on how to go about this project
- [Manezeu Patricia](https://github.com/patriciachrysy) for taking time out to walk me through the processes required to come up with m own linter

# Show your support
Give a ⭐️ if you like this project!

