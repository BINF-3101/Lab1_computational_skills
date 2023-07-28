# Lab1_computational_skills

# Introduction

Throughout this class, you will sharpen your computational skills. You may come into this course with extensive bioinformatics experience or you may just be starting. I will be providing you with most of the commands you will need to execute. You will, however, need to design and execute some analyses yourself. 

For this week's lab, we will focus on making sure everyone has the skills needed to access the UNC Charlotte research cluster. This is a series of computers on campus that are very powerful and we can use to run analysis on them instead of our personal computers.

You have the choice to use the provided iMacs or your personal computer. You will likely need to work on the labs outside of class so I suggest you are at least familiar with accessing the cluster from your personal computer. 

# Before you get started

You will need your **DUO authentication method** and if you want to log in off-campus you will need to connect to the University via the **VPN**

To set up the VPN see here: https://spaces.uncc.edu/pages/viewpage.action?pageId=6653379

&nbsp;

# Step 1 - Log into the student research cluster

### Using the iMacs or a personal Mac computer

To log into the cluster using a Mac you will use the SSH Client. 

#### Mac Step 1a - Open SSH Client

Navigate to the Utilities folder within applications and double-click on the **Terminal** application 

<img src="https://github.com/BINF-3101/Lab1_computational_skills/assets/47755288/7cce6b11-ebb4-4fa9-860b-80b9b669229a" width="400">

#### Mac Step 1b - Log into cluster

Once the terminal is open you will log into the cluster using the command below. Your username is your email address without the @charlotte.edu portion. 

```bash
ssh -l username student_hpc.uncc.edu
```

You will then be prompted to enter your password. Then you will be prompted to complete the DUO authentication. Enter 1, 2, or 3 for your preferred way of authenticating, and then press enter/return. 

_NOTE_ Nothing will appear as you type your password. If you mess it up you should press delete a bunch of times to start over

You will then be in the cluster! Move on to step 2  

&nbsp;

### Using a Windows computer

Unfortunately, windows computers do not come with a built-in Linux terminal to access the cluster. You will need to download one 

#### Windows Step 1a - Obtain SSH Client

There are numerous SSH clients to choose from, but I suggest using the tried and true PuTTY https://www.chiark.greenend.org.uk/~sgtatham/putty/

Go to the website and install putty 

### Windows Step 1b - Open PuTTY & enter the information

You will enter ```student_hpc.uncc.edu``` into the Host Name
Make sure the ```Port``` is set to 22
Select ```SSH``` as the connection type

<img src="https://github.com/BINF-3101/Lab1_computational_skills/assets/47755288/f3cb7891-c538-44cd-90ce-709f9cbd8e1d" width="400">

### Windows Step 1c - Log into the cluster

Click **Open** and it will launch a terminal window. 

Your username is your email address without the @charlotte.edu portion. 

You will be prompted to enter your username and then your password

_**TIP**_ Nothing will appear as you type your password. If you mess it up you should press delete a bunch of times to start over

Then you will be prompted to complete the DUO authentication. Enter 1, 2, or 3 for your preferred way of authenticating, and then press enter/return. 

You will then be in the cluster! Move on to step 2  


&nbsp;

# Step 2 - Navigating the Cluster

You are currently in your home directory. You can return to this directory at any time by using the command ```cd```

To see where you are in the cluster at any time use the command ```pwd``` which stands for Print Working Directory

The cluster has folders and files just like your local computer. 

### Step 2a - Make a Folder

To make a folder or directory you use the command ```mkdir```

Create a folder called ```lab_1``` using the command below

```bash
mkdir lab_1

```

**_TIP_** **DO NOT** use spaces or other special characters in your folder or file names. Use only letters and numbers. If you want to differentiate words you can use "_" or ".'


#### Step 2b - List folders and directories

To list the files or folders/directories in your current location use the ```ls``` command

You can also use the command ```tree``` to view all the files and directories below where you are. 


#### Step 2c - Enter your new directory 

To change directories you use the ```cd``` or change directory command. 

We want to enter the directory we just made. To do that execute the command below

```bash
cd lab_1
```

Check to make sure you are where you think you are using ```pwd```. 

_**TIP**_ You can autocomplete any file or directory currently accessible by using tab. For example, if you are in your home directory and want to enter the lab_1 directory, you can type ```cd la[tab]``` and it will complete to ```cd lab_1```
If there is more than one option it will list all of the options, and you will have to type more to complete the process. 


# Step 3 - Upload and download a file from the cluster

There are two general ways to upload or download files from your computer to/from the cluster.

First, you can use the command line or a command line tool. You can also use a Graphical User Interface (GUI). There are a number of GUIs you can download and use. I won't be covering them in class but you can install them yourself if it is helpful. 

### Using the iMacs or a personal Mac computer


# Command Glossary       
