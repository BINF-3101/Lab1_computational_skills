# Lab1_computational_skills

# OUTLINE

[Introduction](#introduction)

[Step 1 - Log into the student research cluster](#step_1_log_into_the_student_research_cluster)

[Step 2 - Navigating the Cluster](#step_2_navigating_the_cluster)

Step 3 - Upload a file to the cluster
Step 4 - Uncompress the file
Step 5 - Visualize the file
Step 6 - Count the number of sequences
Step 7 - Analyze the base composition of our genome
Step 8 - Find and extract open-reading frames from our genome
Step 9 - Edit our slurm script
Step 10 - Analyze the output file 
# Command Glossary

# Introduction

Throughout this class, you will sharpen your computational skills. You may come into this course with extensive bioinformatics experience or you may just be starting. I will be providing you with most of the commands you will need to execute. You will, however, need to design and execute some analyses yourself. 

For this week's lab, we will focus on making sure everyone has the skills needed to access the UNC Charlotte research cluster. This is a series of computers on campus that are very powerful and we can use to run analysis on them instead of our personal computers.

You have the choice to use the provided iMacs or your personal computer. You will likely need to work on the labs outside of class so I suggest you are at least familiar with accessing the cluster from your personal computer. 

# Before you get started

You will need your **DUO authentication method** and if you want to log in off-campus you will need to connect to the University via the **VPN**

To set up the VPN see here: https://spaces.uncc.edu/pages/viewpage.action?pageId=6653379

&nbsp;
&nbsp;
# Step 1 Log into the student research cluster
&nbsp;
## Using the iMacs or a personal Mac computer

To log into the cluster using a Mac you will use the SSH Client. 
&nbsp;
### Mac Step 1a - Open SSH Client

Navigate to the Utilities folder within applications and double-click on the **Terminal** application 

<img src="https://github.com/BINF-3101/Lab1_computational_skills/assets/47755288/7cce6b11-ebb4-4fa9-860b-80b9b669229a" width="400">
&nbsp;
### Mac Step 1b - Log into cluster

Once the terminal is open you will log into the cluster using the command below. Your username is your email address without the @charlotte.edu portion. 

```bash
ssh -l username student_hpc.uncc.edu
```

You will then be prompted to enter your password. Then you will be prompted to complete the DUO authentication. Enter 1, 2, or 3 for your preferred way of authenticating, and then press enter/return. 

_NOTE_ Nothing will appear as you type your password. If you mess it up you should press delete a bunch of times to start over

You will then be in the cluster! Move on to step 2  

&nbsp;
&nbsp;
## Using a Windows computer

Unfortunately, windows computers do not come with a built-in Linux terminal to access the cluster. You will need to download one 
&nbsp;
### Windows Step 1a - Obtain SSH Client

There are numerous SSH clients to choose from, but I suggest using the tried and true PuTTY https://www.chiark.greenend.org.uk/~sgtatham/putty/

Go to the website and install putty 
&nbsp;
### Windows Step 1b - Open PuTTY & enter the information

You will enter ```student_hpc.uncc.edu``` into the Host Name
Make sure the ```Port``` is set to 22
Select ```SSH``` as the connection type

<img src="https://github.com/BINF-3101/Lab1_computational_skills/assets/47755288/f3cb7891-c538-44cd-90ce-709f9cbd8e1d" width="400">

&nbsp;
### Windows Step 1c - Log into the cluster

Click **Open** and it will launch a terminal window. 

Your username is your email address without the @charlotte.edu portion. 

You will be prompted to enter your username and then your password

_**TIP**_ Nothing will appear as you type your password. If you mess it up you should press delete a bunch of times to start over

Then you will be prompted to complete the DUO authentication. Enter 1, 2, or 3 for your preferred way of authenticating, and then press enter/return. 

You will then be in the cluster! Move on to step 2  


&nbsp;
&nbsp;

# Step 2 Navigating the Cluster

You are currently in your home directory. You can return to this directory at any time by using the command ```cd```

To see where you are in the cluster at any time use the command ```pwd``` which stands for Print Working Directory

The cluster has folders and files just like your local computer. 
&nbsp;
### Step 2a - Make a Folder

To make a folder or directory you use the command ```mkdir```

Create a folder called ```lab_1``` using the command below

```bash
mkdir lab_1

```

**_TIP_** **DO NOT** use spaces or other special characters in your folder or file names. Use only letters and numbers. If you want to differentiate words you can use "_" or ".'

&nbsp;
### Step 2b - List folders and directories

To list the files or folders/directories in your current location use the ```ls``` command

You can also use the command ```tree``` to view all the files and directories below where you are. 

&nbsp;
### Step 2c - Enter your new directory 

To change directories you use the ```cd``` or change directory command. 

We want to enter the directory we just made. To do that execute the command below

```bash
cd lab_1
```

Check to make sure you are where you think you are using ```pwd```. 

_**TIP**_ You can autocomplete any file or directory currently accessible by using tab. For example, if you are in your home directory and want to enter the lab_1 directory, you can type ```cd la[tab]``` and it will complete to ```cd lab_1```
If there is more than one option it will list all of the options, and you will have to type more to complete the process. 

&nbsp;
&nbsp;

# Step 3 - Upload a file to the cluster

There are two general ways to upload or download files from your computer to/from the cluster.

First, you can use the command line or a command line tool. You can also use a Graphical User Interface (GUI). There are a number of GUIs you can download and use (Cyberduck, Filezilla). I won't be covering them in class but you can install and use them yourself if it is helpful. 

&nbsp;
### Step 3a - Download the file to your local computer

Download the file named ```saccharomyces_cerevisiae.fas.tar.gz``` from the github page onto your local computer. 

&nbsp;
### Step 3b - Upload the file to the cluster

This will, again, be different between Macs and Windows machines. 

&nbsp;
### Using the iMacs or a personal Mac computer
To upload the file from the local computer to the cluster you will use the ```scp`` (secure copy) function. The general format for ```scp``` is 
```bash
scp local_file_name user@student_hpc.uncc.edu:directory/in/cluster
```

So for me to upload our file from the computer lab computer I would use

```bash
FILL IN LATER
```

&nbsp;
&nbsp;
### Using a Windows computer

We will need to download another putty tool called psftp 

#### Win step 1 - download PSFTP.exe

Download here: https://www.chiark.greenend.org.uk/~sgtatham/putty/latest.html

#### Win step 2 - open PSFTP.exe

This will launch a new terminal 

#### Win step 3 - log into the cluster

To log into the cluster type ```open username@student_hpc.uncc.edu```

You will then be prompted for your password and DUO authentication. 

#### Win step 4 - Upload our file 

You will automatically be placed in your home directory (you will see ```Remote directory is now /FILLIN/username```
You can use the ```cd``` command to move around the remote directories on the cluster

To visualize where you are on your own computer use the ```!dir``` command. psftp will automatically go to the folder in which you have saved the .exe file. I suggest you put the .exe file and any files you want to upload on your desktop

You can enter a directory on your local computer by using ```lcd C:\Users\computerusername\folder``` (local change directory)

You can find the full directory of any file on your windows machine by right-clicking on the file and selecting "properties" where the "location" will be listed. 

The general format for uploading is ```put local_file destination_file```

So if I wanted to upload from my local desktop to the lab_1 folder in my directory I would execute the command below

```bash
put C:\Users\alabell3\Desktop\saccharomyces_cerevisiae.fas.tar.gz /users/alabell3/lab_1/saccharomyces_cerevisiae.fas.tar.gz
```

You can then return to your putty terminal and your file will be in the folder you designated! 

&nbsp;
&nbsp;
# Step 4 - Uncompress the file

Sequence files can become quite larger. There are numerous ways to compress a file using methods like tar, gzip, and zip. The file we are working with has been compressed using the tar command. 

If you were to use the command ```cat``` or ```head``` to look at our file right now it would go crazy! (you can try it). If you ever need to exit a command that is running you can use ```[Cntrl]+[c]``` in windows or ```[command]+[.]``` on a mac. 


To uncompress our file use the command
```bash
tar -xvf saccharomyces_cerevisiae.fas.tar.gz
```

The ```-xvf``` tells the tar program what to do with the file listed

```-x``` = extract 

```-v``` = verbose (list all the files as they are being extracted)

```-f``` = next item is the file

You should now see a file called ```saccharomyces_cerevisiae.fas```

# Step 5 - Visualize the file

This is a LARGE file. It is the whole genome of the yeast species _Saccharomyces cerevisiae_. It is in what is called FASTA format. Our file contains **nucleotide** data but FASTA files can contain amino acid or nucleotide data. The general format for FASTA format is:
```
>sequence identifier 1
sequence data
>sequence identifier 2
sequence data
```

Let's take a look at our file using the ```less``` command.

```bash
less saccharomyces_cerevisiae.fas
```

This will display the file in your terminal. You can press enter to see more of the file. To quit this view hit the ```q``` key


Now let's take a look at our file using the ```head``` command. This command will print into your terminal the first set of lines in the file. You can also specify how many lines you would like it to display. Let's look at the first 5 lines. 

```bash
head -5 saccharomyces_cerevisiae.fas
```
# LQ 1
What is the sequence identifier of the first sequence in the saccharomyces_cerevisiae.fas file


# Step 6 - Count the number of sequences

There are a wide variety of tools to analyze sequence data. The built-in tools in our terminal can also be very powerful. One of the most powerful tools is ```grep```. 

The ```grep``` command can search for a pattern in a large file. 

If we want to count how many sequences there are in our file, we can simply count the number of times the ```>``` character appears in our file. 

Try out grep using this command:
```bash
grep ">" saccharomyces_cerevisiae.fas
```

One of the options in ```grep``` is to count the number of instances instead of returning them. This is the ```-c``` option. 
```bash
grep -c ">" saccharomyces_cerevisiae.fas
```

To see more options in ```grep``` try ```grep --help```

# LQ 2
How many sequences are in our file. 

&nbsp;
# Step 7 - Analyze the base composition of our genome

While there are many useful programs already included in the terminal, there are programs that have been installed on the cluster as **modules**

To access these modules we will need to load them.

The program module we will be using in this section is called EMBOSS. Let's see if EMBOSS is installed in the cluster using the command ```module search```

```bash
module search EMBOSS
##this will return 
------------------------------------------------------------------ /apps/usr/modules/apps -------------------------------------------------------------------
        emboss/6.6.0: EMBOSS (European Molecular Biology Open Software Suite) is a software analysis package specially developed for the needs of the molecular biology (e.g. EMBnet) user community. The software automatically copes with data in a variety of formats and even allows transparent retrieval of sequence data from the web.
````

We can see that EMBOSS version 6.6.0 is installed on the cluster

**_TIP_** Case (upper vs lower) matters when loading modules. You will need to type it exactly as written before the : in the description. 

**_TIP_** Placing a ```#``` before any line of code means it's a comment and not a command. I will often put notes in the code using # that will be ignored. 

To load emboss we can now type

```bash
module load emboss
```

Within emboss we want to run the ```geecee```. As you can see from the name, it is a program for calculating the fraction of G (gee) or C (cee) in a sequence file. To learn more about the program use ```geecee --help```


To run geecee on our sequences use the command below where we provide an informative output file name for the results to be saved

```bash
geecee -sequence saccharomyces_cerevisiae.fas -outfile saccharomyces_cerevisiae.geecee.out
```


# LQ 3
What is the maximum GC content observed in our yeast genome sequences?

&nbsp;
# Step 8 - Find and extract open-reading frames from our genome

Open Reading Frames (or ORFS) are the most simple method for identifying regions in a genome that may contain protein-coding genes. They consist of a start codon (ATG) and a stop codon. They _cannot_ account for more complicated gene structures like genes containing introns. They also do not exclude things that look like genes - but probably aren't.

For example, a protein with the amino acid sequence ```MTTTTTTTTTTTTT``` is probably not a real gene!

We will run this command by submitting a **slurm script** to the scheduler.


### Step 8a - Copy the slurm script
First, you will need to copy the slurm script from the class folder into your directory. To do this execute the following command
```bash
cp FILLIN/emboss_cerevisiae.slurm .
```

**_TIP_** The ```.``` in the above command means "here". It will copy the file to the current directory without changing the name of the file. If you wanted to give the file a new name you could use ```cp FILLIN/emboss_cerevisiae.slurm new_name.slurm``` 

You could also copy the file to a different directory such as ```cp FILLIN/emboss_cerevisiae.slurm ~/lab2/.```

### Step 8b - View the slurm script

The slurm script contains all the information the slurm scheduler needs to run your job for you. 

View the slurm script using either ```cat``` or ```less```

```#! /bin/bash``` - This line tells the program reading the file that the language is bash

Anything starting with #SBATCH will not be executed as part of the code. It is special instructions for the scheduler

```#SBATCH --partition=Orion``` - This tells the scheduler what part of the 

```#SBATCH --job-name=emboss_sacch```- This is a name for the job

```#SBATCH --nodes=1``` - This is the number of nodes we are requesting to run the job

```#SBATCH --ntasks-per-node=1``` - This is the number of tasks per node (we only increase this if we have threaded programs)

```#SBATCH --time=1:00:00``` - This is **one of the most important parts**. This is the amount of time you are requesting for the job. The format is ```days-hours:minutes:seconds``` If you do not give enough time the program will end without completing and you will get an error!

```#SBATCH --output=emboss_sacch.out``` - The name of the file in which the slurm will save any output that would have been shown in the command line (not the output for our program). 

You will then see a bunch of lines starting with ```echo```. These are printed (or echoed) directly into our emboss_sacch.out file and they provide information about our run. 

Then we get to the commands that will be executed by the slurm scheduler for us. **You must provide ALL commands in the script that you would type in the terminal**

We have two commands, the ```module load``` and running the program ```getorf```. 

As you can see there are place-holder files INPUT and OUTPUT that we will need to edit. 

# Step 9 - Edit our slurm script

There are many ways we can edit a file on the cluster. The most common ways are 
1. upload/download
2. nano
3. vi

&nbsp;
### Option 1 - Upload/download

One option is to download the file to your local computer, edit it in a text editor and then upload the file again. 
If you are using a GUI to transfer files you may be able to edit files in the GUI which is analogous to upload/download. 

This can get tricky if you aren't careful

&nbsp;
### Option 2 - nano

nano is a built-in editor that allows you to edit files in the command line. 

To edit our file in nano type

```nano emboss_cerevisiae.slurm```

This will open an editor that looks like this

<img src="https://github.com/BINF-3101/Lab1_computational_skills/assets/47755288/a89c7a25-a44a-412f-9e27-e3872ebb8c8b" width="400">

You can then navigate to the INPUT using the arrow keys 

Once there delete INPUT and replace it with our input file. Then navigate to OUTPUT and replace that with an output file ending in fasta. 

To save the file use [Ctrl]+O or [Command]+O and then use enter/return to save to the same file name

To exit use [Ctrl]+X (You can see a list of the other commands along the bottom)

Check your edits using ```cat```

&nbsp;
### Option 3 - vi 

vi or vim is another way to edit files in the command line. 

To edit our file in vi use

```vi emboss_cerevisiae.slurm```

This will open an editor that looks like this:

<img src="https://github.com/BINF-3101/Lab1_computational_skills/assets/47755288/14453051-5cb8-4f9e-987c-1b5d4b1e4aa0" width="400">

Use the arrow keys to navigate to where you want to edit. 
To enter editing mode you must press the [i] key (you will see -- INSERT -- show up along the bottom)

Once there delete INPUT and replace it with our input file. Then navigate to OUTPUT and replace that with an output file ending in fasta. 

To save (write) your file you need to type ```:```. This will open a bar at the bottom where you can enter commands 

Type ```w``` and then hit return/enter and you will then see ```"emboss_cerevisiae.slurm" 26L, 764C written```

To quit type ```:q``` and enter

Check your edits using ```cat``

&nbsp;
# Step 9 - Run the slurm script!

To send your slurm script to the scheduler type

```bash
sbatch emboss_cerevisiae.slurm
```

You can see the jobs you have running using the command ```squeue -u username```

This job may run so quickly it doesn't show up! 

&nbsp;
# Step 10 - Analyze the output file 




# Command Glossary       
**_HINT_** You can see the options for any command by typing the command and following that with ```--help``` or sometimes ```-h```. For example ```ls --help``` will provide you with a detailed set of options for the command
