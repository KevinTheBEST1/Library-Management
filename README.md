
# Library Management

The aim of this project is to make a robot learn how to
plan to figure out which book to pick and where to place and carry on till all books are placed.

## Environment Settings

Refer the image below to see how a sample maze environment looks like. The turtleBot has a basket on top of it. There are books of 2 different sizes (large and small) and 2 different subjects lying around on the maze. There are 4 destination bins, 2 of each subject. Each subject has bins of 2 sizes, large and small. Each book has a designated bin, depending on its size and subject.

![books_n_bins](https://user-images.githubusercontent.com/74253717/133837193-faa81f00-af5b-4973-a552-e79427c196a9.png)

Some of the terms that we use throughout the assignment are:
-	Book and Bin Size: There are two sizes for the books and bins. Large and Small.
-	Number of Subjects: This is the number of distinct subjects. This number can vary between 1 and 10 inclusive. For each of the subject, two different bins will be generated; large and small.
-	Number of Books: This is the number of books you have of each subject in each size. This number can vary between 1 and 5 inclusive. So actual number of books in the whole environment is number of books * number of subjects * 2.
-	Load Location: Every book and bin has 2 load locations. For a book it is the set of locations from where it can be picked by the TurtleBot. For a bin it is the set of locations from where the TurtleBot can place the books into this bin.



## Screenshots
- This is the library management project visulization
![library management](https://user-images.githubusercontent.com/74253717/134047818-4bc977aa-09f0-4247-9d5b-d7ae2492919b.PNG)
- Grid visible in Gazebo
![grid_actual](https://user-images.githubusercontent.com/74253717/134047817-ae0bdc3d-5da6-41a8-a3d7-0e5627efcd55.png)

## System setup

This section covers the overall setps to setup the system for library management
### Requirements
- Ubuntu 16.04

You can use either of the two following options:
   - Install Ubuntu on PC: 
   You can download Ubutnu from here: http://releases.ubuntu.com/16.04
Learn how to install Ubuntu at https://tutorials.ubuntu.com/tutorial/tutorial-install-ubuntu-desktop-1604.
If you are looking to install Ubuntu on UEFI systems, you can get help at https://help.ubuntu.com/community/UEFI

- Use Ubuntu on virtual machine:
You can use applications like VirtualBox to create a virtual machine. Some relevant tutorials are:

    - How to create a new VM?

    - How to import an existing VM?

We recommend installing Ubuntu on your system (this can be done alongside Windows) as running virtual machine is generally slower than using Ubuntu installed on your system.

VM Image: https://drive.google.com/drive/folders/11mrJz5N1uUgGPOqgcoqJQzb_gC1uuT1p?usp=sharing 

#### ROS
ROS is an open-source, meta-operating system for the robots. It provides the services one would expect from an operating system including hardware abstraction, low-level device control, implementation of commonly-used functionality, message-passing between processes, and package management. It also provides tools and libraries for obtaining, building, writing, and running code across multiple computers.

##### ROS Kinetic:
You can use the instructions to install Ubuntu given at http://wiki.ros.org/kinetic/Installation/Ubuntu

If you are new to ROS and Ubuntu, you can do a full install of ROS. to do this, use the following command at step 1.4 in the installation instructions:
    
    sudo apt-get install ros-kinetic-desktop-full

ROS Tutorials

Do the beginner level ROS Tutorials (Python version only) which are available at http://wiki.ros.org/ROS/Tutorials.

This includes tutorials for installing and configuring ROS. For this assignment install and configure ROS and go over beginner’s tutorials for python to make yourself familier with ROS. After this homerwork, students should be able to write simple service-client functionalities and simple subscriber-publisher on their.

### Setting Up Turtlebot3
Once you install ROS, you will need to set up Turtlebot3 with Gazebo simulator. If you have installed ROS successfully, Gazebo should already be installed. To set up the Turtlebot3, you will need to first initialize the catkin workspace.

You can follow the instructions given at: http://wiki.ros.org/catkin/Tutorials/create_a_workspace

To set up Turtlebot3 in Gazebo, Follow the following steps:
   

-  You will need to first clone the turtlebot3_msgs module for Turtlebot3. You can find this on https://github.com/ROBOTIS-GIT/turtlebot3_msgs. You will need to clone this repository and place at catkin_ws/src. The commands to do this are:
    
        cd ~/catkin_ws/src
         git clone
        
        https://github.com/ROBOTIS-GIT/turtlebot3_msgs.git

- Now you will need to clone mandatory modules to use Turtlebot3 with ROS. You can find this on https://github.com/ROBOTIS-GIT/turtlebot3. You will need to clone this repsoitory to same place at catkin_ws/src. The commands to do this are:

        cd ~/catkin_ws/src
    
      git clone

        https://github.com/ROBOTIS-GIT/turtlebot3.git

- The last step is to clone the Turtlebot3 simulators which you can obtain at https://github.com/ROBOTIS-GIT/turtlebot3_simulations. The commands to do this are:

        cd ~/catkin_ws/src
      git clone 

        https://github.com/ROBOTIS-GIT/turtlebot3_simulations.git
Once you clone everything move to your catkin_ws and execute command catkin_make to build all the modules.

        cd ~/catkin_ws
        catkin_make

Do the tutorials on Turtlebot3 simulator with Gazebo at: http://emanual.robotis.com/docs/en/platform/turtlebot3/simulation/.
A more comprehensive resource to learn about Turtlebot is: http://emanual.robotis.com/docs/en/platform/turtlebot3/learn/.

### Using Turtlebot3

To load the environment, you need to do the following:
-	Source setup.bash file.
        
    
        source ~/catkin_ws/devel/setup.bash
    This has to be done every time you open a new terminal as setup.bash holds important environment variables. This also has use in overlaying multiple workspaces, which you may ignore as of now.
- Set TurtleBot model. You have to set one of the three TurtleBot3 models: burger, waffle, or waffle_pi. Lets set it to burger for this demo.

        export TURTLEBOT3_MODEL=burger
    This step also needs to be executed every time you start a new terminal.
- Launching a turtlebot environment.


        roslaunch turtlebot3_gazebo turtlebot3_empty_world.launch
Moreover, Teleoperation on Gazebo can be performed using the following command. Run this in a new terminal, and don’t forget to perform steps 1 and 2 in this new terminal.

    roslaunch turtlebot3_teleop turtlebot3_teleop_key.launch
#### Tip
If you do not want to execute steps 1 and 2 every time, you can add those commands in your bashrc file.
    
    gedit ~/.bashrc
![library](https://user-images.githubusercontent.com/74253717/134065554-057cfd06-ed49-47e8-bb8d-72b38211a44e.png)
After this you just need to source the bashrc file once

    source ~/.bashrc 
    
Play around with the turtlebot and try various environments given in the turtlebot tutorial at http://emanual.robotis.com/docs/en/platform/turtlebot3/simulation/.   

### Setting up Planning Folder
-	Download and setup ROS
-	Clone the “planning” folder from Github to 
    
        ~/catkin_ws/src/
        (cd ~/catkin_ws/src && git clone https://github.com/AAIR-lab/planning.git // your github link)

-	Change permission of all scripts in planning folder to make them executable.
    
        chmod u+x ~/catkin_ws/src/planning/scripts/*.py

-	  
        chmod u+x ~/catkin_ws/src/planning/env_setup.sh &&  /catkin_ws/src/planning/env_setup.sh

### Moving TurtleBot
-	New Terminal:
        
         roscore
-	New Terminal((located at 

        ~/catkin_ws/src/planning/scripts): rosrun planning server.py -sub 2 -b 2
-	New Terminal: 

        roslaunch planning maze.launch
-	
        rosrun planning move_tbot3.py


## Demo

Insert gif or link to demo

  
