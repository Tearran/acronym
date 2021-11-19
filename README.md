# Welcome to Acronym:

Logo 

> Project A.C.R.O.N.Y.M:
>
>  "Assortment of Common, Relative Operatetion to Network Your Measurements".  
>  A collection of tutorials, projects, and resources for sensors on Linux.
>   

## Target systems:

Raspberry Pi B+, Zero, and Zero W.

## Tutorials

-   General Purpos Input Output (GPIO)
    -   [The Experiment](https://github.com/Tearran/acronym/wiki/Experiment-gpiozero)
        -  Referance [GPIOzero](https://gpiozero.readthedocs.io/en/stable/recipes.html) -  interface GPIO devices  
        -  Referance [i2c](https://i2c.wiki.kernel.org/index.php/I2C_Tools) - I2C tools 
        -  Referance I2C [Adressess](https://github.com/Tearran/acronym/wiki/i2c)
-   Kernel building:
    -   Tutorial - [The Linux kernel](https://www.raspberrypi.com/documentation/computers/linux_kernel.html)
        -   [The Experiment](https://github.com/Tearran/acronym/wiki/Experiment-zero-kernel)
        -   [0kernelexperiment.sh](https://github.com/Tearran/acronym/blob/master/0kernelexperiment.sh) 
            -   Script attempts to replicate experiment
            -   Installs build requierment
            -   offers brief description of what is happing during the installation process
            -   ASK Y/n to proseed
            -   Offers opertunity to add/remove componits of the kernel
            -   Bulds the kernel "warning 48 hour to compile on pi zero"
            -   Offers opertunity to upgrade current kernel to new and reboot
            - ```bash wget https://raw.githubusercontent.com/Tearran/acronym/master/0kernelexperiment.sh``` 
            
       
-   OS building:
    -   [Bulidroot](https://buildroot.org/) 
        -   [The Experiment](https://github.com/Tearran/acronym/wiki/Buildroot-Experiment)
