That's a great skill for a DevOps engineer. Since you're already working with Linux, Git, Jenkins, Docker, Kubernetes, and AWS, shell scripting will help you automate many daily tasks.

Learning Path for Shell Scripting
1. Basics

Learn:

#!/bin/bash
Variables
Input/Output
Comments
Command substitution

Example:

#!/bin/bash

name="Rahim"
echo "Hello $name"

current_date=$(date)
echo "Today is $current_date"
2. Conditional Statements
if
#!/bin/bash

num=10

if [ $num -gt 5 ]; then
    echo "Greater than 5"
fi
if-else
#!/bin/bash

if [ -f "file1" ]; then
    echo "File exists"
else
    echo "File does not exist"
fi
3. Loops
For Loop
#!/bin/bash

for i in 1 2 3 4 5
do
    echo $i
done

Output:

1
2
3
4
5
While Loop
count=1

while [ $count -le 5 ]
do
    echo $count
    ((count++))
done
4. User Input
#!/bin/bash

echo "Enter your name:"
read name

echo "Welcome $name"
5. Functions
#!/bin/bash

greet() {
    echo "Hello $1"
}

greet Rahim

Output:

Hello Rahim
6. Case Statement
#!/bin/bash

echo "Enter a choice:"
read choice

case $choice in
    start)
        echo "Starting service"
        ;;
    stop)
        echo "Stopping service"
        ;;
    *)
        echo "Invalid choice"
        ;;
esac
7. Important File Tests
-f    File exists
-d    Directory exists
-r    Readable
-w    Writable
-x    Executable
-e    Exists

Example:

if [ -d "/home/ec2-user" ]; then
    echo "Directory exists"
fi
8. DevOps-Focused Scripts
Check Disk Usage
#!/bin/bash

usage=$(df -h / | awk 'NR==2 {print $5}')

echo "Disk Usage: $usage"
Check Service Status
#!/bin/bash

systemctl is-active nginx
Backup Logs
#!/bin/bash

tar -czf backup.tar.gz /var/log
9. Mini Projects

Practice these:

Create a file if it doesn't exist.
Delete files older than 7 days.
Check if a user exists.
Create multiple users from a text file.
Monitor disk usage and send alerts.
Backup application logs daily.
Check website availability.
Restart a service if it's down.
Rotate log files.
Automated server health-check script.
10. Real DevOps Project

A good project for your resume:

Server Health Monitoring Script

✓ CPU Usage
✓ Memory Usage
✓ Disk Usage
✓ Running Services
✓ Generate Log File
✓ Email Alert if Threshold Exceeded

This is commonly asked in DevOps interviews.

Suggested 7-Day Plan
Day	Topic
1	Variables, echo, read
2	if, else, file conditions
3	for loop, while loop
4	Functions, case statements
5	Arrays, command substitution
6	Log parsing, process monitoring
7	Build a server health monitoring script

Since you're preparing for DevOps roles, focus more on automation scripts for Linux administration, monitoring, backups, log management, and deployments rather than advanced Bash programming. These are the types of scripting tasks most frequently discussed in DevOps interviews.
