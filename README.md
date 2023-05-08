# MATLAB Code Running PowerShell Script Example Code
Example code for running a MATLAB script through PowerShell, and evaluating it's result.

## Run the program 

-Download the files

-Run the PowerShell file (read.ps1). I recommend running it in Visual Studio Code, or opening PowerShell, and then running it there by pressing F5.


## What is in the code?
The MATLAB script (numbers.m) displays (outputs) a line of text, and all one-digit numbers.
The PowerShell script runs this MATLAB script using the <code>matlab -batch "run(...)"<\code>, gathering its output, and parsing it to the text, even and odd numbers (with the help of casting).

### Output
![image](https://user-images.githubusercontent.com/82604073/235335462-a8331370-3df3-4025-aa4c-11089519946b.png)

## Further development possibilities

It's up to personal creativity on how this can be used for something useful, I have used MATLAB to write tests, and PowerShell is perfect to automate this. In particular, I ran hardware-in-the-loop (HIL) tests with Trace32, written in MATLAB with the help of the Trace32 MATLAB API, wrote a PS script to evaluate the results from the tests, and had a CI/CD workflow to automatically run the PS script when needed; when code was pushed to the company's product repository, our Jenkins server ran the PS script, that opened a remote desktop machine, ran the HIL tests, and if any failed, Jenkins would stopped the code from being pushed to the repo.
