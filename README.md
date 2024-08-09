# Lab1_computational_skills

# OUTLINE

[Introduction](#introduction)

[Step 1 - Log into the student research cluster](#step-1---log-into-the-student-research-cluster)

[Step 2 - Navigating the Cluster](#step-2---navigating-the-cluster)

[Step 3 - Upload a file to the cluster](#step-3---upload-a-file-to-the-cluster)

[Step 4 - Uncompress the file](#step-4---uncompress-the-file)

[Step 5 - Visualize the file](#step-5---visualize-the-file)

**[LAB QUESTION 1](#lq-1)**

[Step 6 - Count the number of sequences](#step-6---count-the-number-of-sequences)

**[LAB QUESTION 2](#lq-2)**

[Step 7 - Analyze the base composition of our genome](#step-7---analyze-the-base-composition-of-our-genome)

**[LAB QUESTION 3](#lq-3)**

[Step 8 - Find and extract open-reading frames from our genome](#step-8---find-and-extract-open-reading-frames-from-our-genome)

[Step 9 - Edit our slurm script](#step-9---edit-our-slurm-script)

[Step 10 - Run the slurm script!](#step-10---run-the-slurm-script)

[Step 11 - Analyze the output file ](#step-11---analyze-the-output-file)

**[LAB QUESTION 4](#lq-4)**

[Step 12 - Extract data for one genomic contig ](#step-12---extract-data-for-one-genomic-contig)

**[LAB QUESTION 5](#lq-5)**

[Command Glossary](#command-glossary)

&nbsp;
&nbsp;
# Introduction

Throughout this class, you will sharpen your computational skills. You may come into this course with extensive bioinformatics experience or you may just be starting. I will be providing you with most of the commands you will need to execute. You will, however, need to design and execute some analyses yourself. 

For this week's lab, we will focus on making sure everyone has the skills needed to access the UNC Charlotte research cluster. This is a series of computers on campus that are very powerful and we can use to run analysis on them instead of our personal computers.

You have the choice to use the provided iMacs or your personal computer. You will likely need to work on the labs outside of class so I suggest you are at least familiar with accessing the cluster from your personal computer. 

# Before you get started

You will need your **DUO authentication method** and if you want to log in off-campus you will need to connect to the University via the **VPN**


**YOU  MUST HAVE THE VPN CONNECTED TO LOG IN OFF CAMPUS!!!**

To set up the VPN see here: https://spaces.uncc.edu/pages/viewpage.action?pageId=6653379

&nbsp;
&nbsp;
# Step 1 - Log into the student research cluster

If you have trouble please watch the video tutorials posted on Canvas. 

&nbsp;
## Using the iMacs or a personal Mac computer

To log into the cluster using a Mac you will use the SSH Client.
&nbsp;
### Mac Step 1a - Open SSH Client

Navigate to the Utilities folder within applications and double-click on the **Terminal** application 

<img src="https://github.com/BINF-3101/Lab1_computational_skills/assets/47755288/7cce6b11-ebb4-4fa9-860b-80b9b669229a" width="400">
&nbsp;
### Mac Step 1b - Log into cluster

Once the terminal is open you will log into the cluster using the command below. Your username is your email address without the @charlotte.edu portion. Type the following command then hit enter.

```bash
ssh username@hpc-student.uncc.edu
```
ex.

```bash
ssh jdoe@hpc-student.uncc.edu
```

You will then be prompted to enter your password. Then you will be prompted to complete the DUO authentication. Enter 1, 2, or 3 for your preferred way of authenticating, and then press enter/return. 

**_TIP_** _Nothing will appear as you type your password. If you mess it up you should press delete a bunch of times to start over_

You will then be in the cluster! Move on to step 2  

&nbsp;
&nbsp;
## Using a Windows computer

Unfortunately, windows computers do not have a built-in Linux terminal to access the cluster. You will need to download one 
&nbsp;

There is also an option to use **Ubuntu** on Windows - to log in use the Mac instructions above

&nbsp;
### Windows Step 1a - Obtain SSH Client

There are numerous SSH clients to choose from, but I suggest using the tried and true PuTTY https://www.chiark.greenend.org.uk/~sgtatham/putty/

Go to the website and install putty 
&nbsp;
### Windows Step 1b - Open PuTTY & enter the information

You will enter ```hpc-student.uncc.edu``` into the Host Name
Make sure the ```Port``` is set to 22
Select ```SSH``` as the connection type

<img src="https://github.com/user-attachments/assets/a767d7f2-fa1b-4805-9b09-19db7d4a7b74" width="400">

&nbsp;
### Windows Step 1c - Log into the cluster

Click **Open** and it will launch a terminal window. 

Your username is your email address without the @charlotte.edu portion. 

You will be prompted to enter your username and then your password

_**TIP**_ _Nothing will appear as you type your password. If you mess it up you should press delete a bunch of times to start over_

Then you will be prompted to complete the DUO authentication. Enter 1, 2, or 3 for your preferred way of authenticating, and then press enter/return. 

You will then be in the cluster! Move on to step 2  


&nbsp;
&nbsp;

# Step 2 - Navigating the Cluster

You are currently in your home directory. You can return to this directory at any time by using the command ```cd```

To see where you are in the cluster at any time use the command ```pwd``` which stands for Print Working Directory

The cluster has folders and files just like your local computer. 

```bash
#change directory
cd
#present working directory
pwd
```

&nbsp;
### Step 2a - Make a Folder

To make a folder or directory you use the command ```mkdir```

Create a folder called ```lab_1``` using the command below

```bash
mkdir lab_1

```

**_TIP_** _**DO NOT** use spaces or other special characters in your folder or file names. Use only letters and numbers. If you want to differentiate words you can use_ ```_``` _or_ ```.```

&nbsp;
### Step 2b - List folders and directories

To list the files or folders/directories in your current location use the ```ls``` command

You can also use the command ```tree``` to view all the files and directories below where you are. 

```bash
#to list the files in the current directory
ls
#to see a tree of the files
tree
```

&nbsp;
### Step 2c - Enter your new directory 

To change directories you use the ```cd``` or change directory command. 

We want to enter the directory we just made. To do that execute the command below

```bash
cd lab_1
```

Check to make sure you are where you think you are using ```pwd```. 

_**TIP**_ _You can autocomplete any file or directory currently accessible by using tab. For example, if you are in your home directory and want to enter the lab_1 directory, you can type_ ```cd la[tab]``` _and it will complete to_ ```cd lab_1```
_If there is more than one option it will list all of the options, and you will have to type more to complete the process._

&nbsp;
&nbsp;

# Step 3 - Upload a file to the cluster

There are two general ways to upload or download files from your computer to/from the cluster.

First, you can use the command line or a command line tool. You can also use a Graphical User Interface (GUI). There are a number of GUIs you can download and use (Cyberduck, Filezilla). I won't be covering them in class but you can install and use them yourself if it is helpful. 

&nbsp;
### Step 3a - Download the file to your local computer

Download the file named ```candida_albicans.fas.tar.gz``` from the github page onto your local computer. 

&nbsp;
### Step 3b - Upload the file to the cluster

This will, again, be different between Macs and Windows machines. 

&nbsp;
### Using the iMacs or a personal Mac computer

The easiest thing is to open a second window of the terminal using Shell > New Window

Because you are not logged into the cluster you will then be in your local computer. 

Find the directory of the file you want to upload or copy the file to the current directory which you can see using ```pwd```

To upload the file from the local computer to the cluster you will use the ```scp``` (secure copy) function. The general format for ```scp``` is 
```bash
scp local_file_name username@hpc-student.uncc.edu:lab_1/file_name
```

So for me to upload our file from the computer lab computer (if the file is saved on the desktop) I would use

```bash
scp candida_albicans.fas.tar.gz alabell3@hpc-student.uncc.edu:lab_1/candida_albicans.fas.tar.gz
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

To log into the cluster type ```open username@hpc-student.uncc.edu```

You will then be prompted for your password and DUO authentication. 

#### Windows step 4 - Upload our file 

You will automatically be placed in your home directory (you will see ```Remote directory is now /FILLIN/username```
You can use the ```cd``` command to move around the remote directories on the cluster. ```cd``` into your lab_1 folder now.

To visualize where you are on your own computer use the ```!dir``` command. psftp will automatically go to the folder in which you have saved the .exe file. I suggest you put the .exe file and any files you want to upload on your desktop

You can enter a directory on your local computer by using ```lcd C:\Users\computerusername\folder``` (local change directory)

You can find the full directory of any file on your windows machine by right-clicking on the file and selecting "properties" where the "location" will be listed. 

The general format for uploading is ```put local_file destination_file```

So if I wanted to upload from my local desktop to the lab_1 folder in my directory I would execute the command below

```bash
put C:\Users\alabell3\Desktop\candida_albicans.fas.tar.gz candida_albicans.fas.tar.gz
```

You can then return to your putty terminal and your file will be in the folder you designated! 

&nbsp;
&nbsp;


### Using a Windows computer and Ubuntu

You will need to locate the file on your computer. To access the files on your computer you will need to get out of Ubuntu (and back into your computer) in the ```/mnt/c/ ``` directory. In the ```/mnt/c/ ``` directory you should see all your local files  

Once you have located your file you can use the scp command to copy the file to the cluster

```bash
scp local_file_path destination_file_path
```
example:

```bash
scp /mnt/c/Users/locallaptopname/Downloads/candida_albicans.fas.tar.gz Username@hpc-student.uncc.edu:lab_1/candida_albicans.fas.tar.gz
```

If you get this error: ```ssh: Could not resolve hostname C: Temporary failure in name resolution``` you will need to follow these instructions:

1. Open the Control Panel and select Programs -> **Turn Windows features on or off**.
2. Tick on the checkbox of Windows Subsystem for Linux to enable this feature.
3.  Reboot your Windows PC for this change to take effect

# Step 4 - Uncompress the file

Sequence files can become quite larger. There are numerous ways to compress a file using methods like tar, gzip, and zip. The file we are working with has been compressed using the tar command. 

If you were to use the command ```cat``` or ```head``` to look at our file right now it would go crazy! (you can try it). If you ever need to exit a command that is running you can use ```[Cntrl]+[c]``` in windows or ```[command]+[.]``` on a mac. 


To uncompress our file use the command
```bash
tar -xvf candida_albicans.fas.tar.gz
```

The ```-xvf``` tells the tar program what to do with the file listed

```-x``` = extract 

```-v``` = verbose (list all the files as they are being extracted)

```-f``` = next item is the file

You should now see a file called ```candida_albicans.fas```

**_HINT_** You can see the options for any command by typing the command and following that with ```--help``` or sometimes ```-h```. For example ```tar --help``` will provide you with a detailed set of options for the command

# Step 5 - Visualize the file

This is a LARGE file. It is the whole genome of the yeast species _Saccharomyces candida_albicans_. It is in what is called FASTA format. Our file contains **nucleotide** data but FASTA files can contain amino acid or nucleotide data. The general format for FASTA format is:
```
>sequence identifier 1
sequence data
>sequence identifier 2
sequence data
```

Let's take a look at our file using the ```less``` command.

```bash
less candida_albicans.fas
```

This will display the file in your terminal. You can press enter to see more of the file. To quit this view hit the ```q``` key


Now let's take a look at our file using the ```head``` command. This command will print into your terminal the first set of lines in the file. You can also specify how many lines you would like it to display. Let's look at the first 5 lines. 

```bash
head -5 candida_albicans.fas
```
# LQ 1
What is the sequence identifier of the first sequence in the candida_albicans.fas file


# Step 6 - Count the number of sequences

There are a wide variety of tools to analyze sequence data. The built-in tools in our terminal can also be very powerful. One of the most powerful tools is ```grep```. 

The ```grep``` command can search for a pattern in a large file. 

If we want to count how many sequences there are in our file, we can simply count the number of times the ```>``` character appears in our file. 

Try out grep using this command:
```bash
grep ">" candida_albicans.fas
```

One of the options in ```grep``` is to count the number of instances instead of returning them. This is the ```-c``` option. 
```bash
grep -c ">" candida_albicans.fas
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

**_TIP_** _Case (upper vs lower) matters when loading modules. You will need to type it exactly as written before the : in the description._

**_TIP_** _Placing a_ ```#``` _before any line of code means it's a comment and not a command. I will often put notes in the code using # that will be ignored._

To load emboss we can now type

```bash
module load emboss
```

Within emboss we want to run the ```geecee```. As you can see from the name, it is a program for calculating the fraction of G (gee) or C (cee) in a sequence file. To learn more about the program use ```geecee --help```


To run geecee on our sequences use the command below where we provide an informative output file name for the results to be saved

```bash
geecee -sequence candida_albicans.fas -outfile candida_albicans.geecee.out
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
cp /projects/class/binf3101_001/emboss_candida_albicans.slurm .
```

You can also download the slurm script from canvas and upload it. 

**_TIP_** _The_ ```.``` _in the above command means "here". It will copy the file to the current directory without changing the name of the file. If you wanted to give the file a new name you could use_ ```cp FILLIN/emboss_candida_albicans.slurm NEWNAME.slurm```
_You could also copy the file to a different directory such as_ ```cp /projects/class/binf3101_001/emboss_candida_albicans.slurm ~/lab2/.```

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

Where you see the capital letters, you must put in the input file and specify a name for the output file 

_click on image to enlarge_

<img src="https://github.com/user-attachments/assets/60986a7d-f95e-4271-b7c1-54689dcbf262" width="400">

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

```nano emboss_candida_albicans.slurm```

This will open an editor that looks like this

<img src="https://github.com/user-attachments/assets/832ed857-6396-427c-bc0b-edbdc865186d" width="500">

You can then navigate to the INPUT using the arrow keys 

Once there delete INPUT and replace it with our input file. Then navigate to OUTPUT and replace that with an output file ending in fasta. 

To save the file use [Ctrl]+O or [Command]+O and then use enter/return to save to the same file name

To exit use [Ctrl]+X (You can see a list of the other commands along the bottom)

Check your edits using ```cat```

&nbsp;
### Option 3 - vi 

vi or vim is another way to edit files in the command line. 

To edit our file in vi use

```vi emboss_candida_albicans.slurm```

This will open an editor that looks like this:

<img src="https://github.com/user-attachments/assets/85c8605d-fa56-43ca-9872-0b53afdc4d81" width="400">

Use the arrow keys to navigate to where you want to edit. 
To enter editing mode you must press the [i] key (you will see -- INSERT -- show up along the bottom)

Once there delete INPUT and replace it with our input file. Then navigate to OUTPUT and replace that with an output file ending in fasta. 

To save (write) your file you need to type ```:```. This will open a bar at the bottom where you can enter commands 

Type ```w``` and then hit return/enter and you will then see ```"emboss_candida_albicans.slurm" 26L, 764C written```

To quit type ```:q``` and enter

Check your edits using ```cat``

&nbsp;
# Step 10 - Run the slurm script!

To send your slurm script to the scheduler type

**_TIP_** _Your slurm script will execute all the commands as though it is in the directory where you have the slurm script. If the script needs to access files in another directory you will need to specify the directory_

```bash
sbatch emboss_candida_albicans.slurm
```

You can see the jobs you have running using the command ```squeue -u username```

This job may run so quickly it doesn't show up! 

&nbsp;
# Step 11 - Analyze the output file 

Once the job is done running, you will see your output file appear in your directory. Next, we will analyze our file. 

First, take a look at the file using ```less``` or ```head```. 

You should see protein sequences in fasta format with a header like this (this is not the actual first sequence_

```
>Ca22chr1A_C_albicans_SC5314_20665 [3187944 - 3187810] (REVERSE SENSE) (3188363 nucleotides)
MRVLITIMACHXQRRNTHLRKKLTKKLLVLNIHLIQLIQEKQSEC
 ```

```Ca22chr1A_C_albicans_SC5314_20665``` - This is the sequence identifier. The first part ```NC_001141``` is the genome sequence in which the open reading frame was found. ```3935``` is the identifier for this coding sequence. It's the 3,935th coding sequence identified on this contig (genome sequence). 

```[3187944 - 3187810]``` - Is the position along the contig (genome sequence) where the ORF was found. 

```(REVERSE SENSE)``` - This identifier is only present in ORF frames that were found when reading in reverse-complement (complimentary sequence going from right-to-left) along the DNA sequence. 

Use commands such as ```grep``` to answer the questions below. Remember, you can look at the options for grep using ```grep --help```

# LQ 4
How many ORFs were annotated in the _Candida albicans_ genome? Is this more or less than the number of genes you would expect in this genome? (Use google to find the number of genes in _Candida albicans_

&nbsp;
# Step 12 - Extract data for one genomic contig

We are particularly interested in the contig **Ca22chrM_C_albicans_SC5314** 

Let's extract all the ORFs belonging to this contig. There are ways using biopython, bioperl or other programs to load in and analyze a fasta file. We will, however, do this manually using bash. 

### Step 12a - Making our file a one-line fasta file

If we look into our fasta file we will see a snippet like this:

```bash
>Ca22chr1A_C_albicans_SC5314_27 [2243 - 2686] (3188363 nucleotides)
HSLFALATTSKHNCIDXTLLISCCIPPVVINXPRVVLLLIVQPANTTTTALTTPSSFRVA
IPXTTRFTFPTAIDYSNYKLFYRPFSNXQAQRDTCLGIYNSFYSSFCICHAICPPPIIQP
ANTTATGIDNCFHCYDTTTDYMLFTQQT
>Ca22chr1A_C_albicans_SC5314_28 [2397 - 2807] (3188363 nucleotides)
LHPLHFVLQFPXPLGSHFPPPLTTQTTSCSIVPSPTSKHNEIHVWAFTIASTHHFASAMQ
SAHHPSSNQQTQPQRALTTASTAMTPPLTTCCSPSKHNTLHSSSSISHSTTAISTGSPSS
LTSVKYTTPQINYPXPA
>Ca22chr1A_C_albicans_SC5314_29 [2770 - 2889] (3188363 nucleotides)
NTPPHRSTIPXRLDFRKIHYKAYPLSDYPSVPQINYPXPA
>Ca22chr1A_C_albicans_SC5314_30 [2850 - 2954] (3188363 nucleotides)
LPLSPTDQLSPAGLTSVKXTTXSAPSTLSSSIDXQ
>Ca22chr1A_C_albicans_SC5314_31 [2690 - 3067] (3188363 nucleotides)
HLAQFKFNFPFYNCNFYWVPEQFDFRKIHHPTDQLSPAGLTSVKYTTKPTPCLTTPQSHR
STIPXRLDFRKIXYXVCPFYTLLFYRFXVNIFLFYVITTTLASLSVAAISXFSPILVRLT
SVHSPG
>
```
What we can see is that each **line is limited to 60 characters**. We want to re-format our file so it keeps the entire protein sequence on one line. 

To do this we can use this command (we will dive deeper into the powerful ```awk``` command later)

```bash
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' < INPUT_FILE.fasta > OUTPUT_FILE.oneline.fasta
```
Replace the INPUT and OUTPUT file names with the names you used in the slurm script and execute the command

Now our output file should look more like this:

```bash
>Ca22chr1A_C_albicans_SC5314_27 [2243 - 2686] (3188363 nucleotides)
HSLFALATTSKHNCIDXTLLISCCIPPVVINXPRVVLLLIVQPANTTTTALTTPSSFRVAIPXTTRFTFPTAIDYSNYKLFYRPFSNXQAQRDTCLGIYNSFYSSFCICHAICPPPIIQPANTTATGIDNCFHCYDTTTDYMLFTQQT
>Ca22chr1A_C_albicans_SC5314_28 [2397 - 2807] (3188363 nucleotides)
LHPLHFVLQFPXPLGSHFPPPLTTQTTSCSIVPSPTSKHNEIHVWAFTIASTHHFASAMQSAHHPSSNQQTQPQRALTTASTAMTPPLTTCCSPSKHNTLHSSSSISHSTTAISTGSPSSLTSVKYTTPQINYPXPA
>Ca22chr1A_C_albicans_SC5314_29 [2770 - 2889] (3188363 nucleotides)
NTPPHRSTIPXRLDFRKIHYKAYPLSDYPSVPQINYPXPA
>Ca22chr1A_C_albicans_SC5314_30 [2850 - 2954] (3188363 nucleotides)
LPLSPTDQLSPAGLTSVKXTTXSAPSTLSSSIDXQ
>Ca22chr1A_C_albicans_SC5314_31 [2690 - 3067] (3188363 nucleotides)
HLAQFKFNFPFYNCNFYWVPEQFDFRKIHHPTDQLSPAGLTSVKYTTKPTPCLTTPQSHRSTIPXRLDFRKIXYXVCPFYTLLFYRFXVNIFLFYVITTTLASLSVAAISXFSPILVRLTSVHSPG

```

### Step 12b - Extracting the sequences for Ca22chrM_C_albicans_SC5314

Now we will extract all the sequences that contain the identifier "Ca22chrM_C_albicans_SC5314" and save them to a new file

```bash
grep -A 1 "Ca22chrM_C_albicans_SC5314" OUTPUT_FILE.oneline.fasta > Ca22chrM_C_albicans_SC5314.fasta
```
Here is a breakdown of the command

```-A 1``` - This invokes the ``-A`` option which is also known as ``--after-context=NUM   print NUM lines of trailing context``. In this case, we want to obtain any sequence matching our search (which will be the header line starting with >) AND the sequence data saved directly after it. 

``` ""Ca22chrM_C_albicans_SC5314"``` - This is the pattern we are searching for

```OUTPUT_FILE.oneline.fasta``` - This is the file we are searching in

If we were to stop the command at ```grep -A 1 "Ca22chrM_C_albicans_SC5314" OUTPUT_FILE.oneline.fasta``` it would print the results directly onto the terminal. We want to **direct the output to a new file**. To do this we need to use the command ```>```. 

```> Ca22chrM_C_albicans_SC5314.fasta``` - This directs the output of the command to be saved in a new file. **_BEWARE_** This will **automatically overwrite** any file that already has our output name. If this happens **you will not be able to undo this**



**_TIP_** _Options in programs typically have a short version that is one letter long and a long version that may be multiple characters long. For the option above for obtaining 1 line after your search, you can either use_ ```-A 1``` _or you can use the long version_ ```--after-context=1```. _Options are almost always case-sensitive. The_ ```-A``` _command means after-context while_ ```-a``` _is used while searching binary/compressed files_

# LQ 5
What percent of the ORFs annotated on the contig Ca22chrM_C_albicans_SC5314 were annotated on the REVERSE strand? 



# Command Glossary   

I will place the commands that we use in the lab here for future reference. Commands inside of square brackets ```[]``` are for you to edit. 

##### Log into Cluster on mac
```bash
ssh -l [username] hpc-student.uncc.edu
```
&nbsp;
##### Make a directory
```bash
mkdir [new_dir_name]
```
&nbsp;
##### Change the working directory
```bash
cd [destination_directory]
```
&nbsp;
##### Upload a file on MAC
```bash
scp [local_file_name] [user]@ hpc-student.uncc.edu:[directory/in/cluster]
```
&nbsp;
##### Upload a file using PSFTP.exe on Windows
```bash
put C:[\Users\Directory\On_Desktop\file_name] /users/[alabell3/directory/on_cluster/file_name]
```
&nbsp;
##### Extracting a tar.gz file
```bash
tar -xvf [file.tar.gz]
```
&nbsp;
##### Interactive view of the file
```bash
less [file_name]
```
&nbsp;
##### Static view of the start of a file
```bash
head -[Num_Lines_to_view] [file_name]
```
&nbsp;
##### List files in current directory
```bash
ls
```
&nbsp;
##### Search a file for a pattern with grep
```bash
grep [options] "[pattern]" [files]
```
Options we have covered are:
```bash
-A [number_of_lines]       #gets the specified number of lines after a match
-c                         #returns the number of times the pattern is found
```
Read more about grep here: https://www.geeksforgeeks.org/grep-command-in-unixlinux/
&nbsp;
##### Search for a module on the cluster
```bash
module search [search_term]
```
&nbsp;
##### Load a module to use on the cluster
```bash
module load [module_name]
ml [module name]
```
&nbsp;
##### Copy a file
```bash
cp [source_file] [destination_file]
```
&nbsp;
##### Launch nano to edit a file in the command line
```bash
nano [file_name]
```
You can read more about nano here: https://www.hostinger.com/tutorials/how-to-install-and-use-nano-text-editor#How_to_Use_Nano_Text_Editor

&nbsp;
##### Use vi to edit a file in the command line
```bash
vi [file_name]
```
You can read more about vi and get a cheat-sheet here: https://www.redhat.com/sysadmin/introduction-vi-editor

&nbsp;
##### Submit a slurm script to the scheduler
```bash
sbatch [instructions].slurm
```
&nbsp;
##### See your currently running jobs on the slurm scheduler
```bash
squeue -u [username]
```

&nbsp;
##### Convert a multi-line fasta file into a one-line fasta file
```bash
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' < [INPUT_FILE].fasta > [OUTPUT_FILE].fasta
```
&nbsp;
##### Redirect output to save to a new file
```bash
[commands] > [output_file]
```
