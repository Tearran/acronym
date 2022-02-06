#!/bin/bash
clear

while true; do
 cat << "EOF"
https://sunnyspot.org/asciiart/gallery/startrek.html


      
         _mmm_                      
        mmmmmmmm     ,"""""""""""""""""""""""".
       @p~qp~~qMb    | Kernel Configuration 00|
       | @||@) m|   _;........................'
       @,----.JM| -'
      mm^\__/  mmm
     mmm        mmmi
    mmM          mmmm
   MMM            mmMM
   MMM            MMMM
   MMM            MMMM
 __| ".        |\dS"qML
 |    `.       | `' \Zq
_)      \.___.,|     .'
\____   )MMMMMM|   .'
     `-'       `--' 
  This will guide you through the steps
        to compile a RPI kernel

Do you wish to continue(Y/n)?

EOF

    read -p  '>> '  yn
    case $yn in
        [Yy]* ) clear; break;;
        [Nn]* ) exit;;
        * )  clear ;  break;;
    esac
done
sudo apt update
while true; do
 cat << "EOF"

      
         _mmm_                      
        mmmmmmmm     ,"""""""""""""""""""""""".
       @p~qp~~qMb    | Kernel Configuration 01|
       | @||@) m|   _;........................'
       @,----.JM| -'
      mm^\__/  mmm
     mmm        mmmi
    mmM          mmmm
   MMM            mmMM
   MMM            MMMM
   MMM            MMMM
 __| ".        |\dS"qML
 |    `.       | `' \Zq
_)      \.___.,|     .'
\____   )MMMMMM|   .'
     `-'       `--' 

Installing git bc bison flex libssl-dev make 

continue(Y/n)?

EOF

    read -p  '>> ' yn
    case $yn in
        [Yy]* ) clear;  break;;
        [Nn]* ) exit;;
        * )  clear ;   break;;
    esac
done

sudo apt install git bc bison flex libssl-dev make

while true; do
clear
 cat << "EOF"

         
         _mmm_                      
        mmmmmmmm     ,"""""""""""""""""""""""".
       @p~qp~~qMb    | Kernel Configuration 02|
       | @||@) m|   _;........................'
       @,----.mm| -'
      mm^\__/  mmm
     mmm        mmmi
    mmM          mmmm
   MMM            mmMM
   MMM            MMMM
   MMM            MMMM
 __| ".        |\dS"qML
 |    `.       | `' \/\
_)      \.___.,|     .'
\____   )MMMMMM|   .'
     `-'       `--' 

Download Kernel source from
https://github.com/raspberrypi/linux

then, Go Grab a Pepsi

continue(Y/n)?

EOF

    read -p  '>> ' yn
    case $yn in
        [Yy]* ) clear; break;;
        [Nn]* ) exit;;
        * )  clear ;   break;;
    esac
done

git clone --depth=1 https://github.com/raspberrypi/linux
echo 'Change directory '
cd Linux

while true; do
 cat << "EOF"

https://ascii.co.uk/art/science
  
__________________________________________________________________________

    .-.                                                               .-.
   /   \           .-.                                 .-.           /   \
  /     \         /   \       .-.     _     .-.       /   \         /     \
-/-------\-------/-----\-----/---\---/-\---/---\-----/-----\-------/-------\--
          \     /       \   /     `-'   `-'     \   /       \     /
           \   /         `-'                     `-'         \   /
            `-'                                               `-'
     _________________________________________________________________
GUI Kernel configuration

continue(Y/n)?

EOF

    read -p '>> ' yn
    case $yn in
        [Yy]* ) clear ; break;;
        [Nn]* ) exit;;
        * )  clear ;  break;;
    esac
done


echo 'Set Arch to 32Bit'
KERNEL=kernel

echo 'Set CPU Core 1'
make bcmrpi_defconfig

while true; do
 cat << "EOF"

                                                 
         _mmm_                      
        mmmmmmmm     ,"""""""""""""""""""""""".
       @p~qp~~qMb    | Kernel Configuration 03|
       | @||@) m|   _;........................'
       @,----.JM| -'
      mm^\__/  mmm
     mmm        mmmi
    mmM          mmmm
   MMM            mmMM
   MMM            MMMM
   MMM            MMMM
 __| ".        |\dS"qML
 |    `.       | `' \Zq
_)      \.___.,|     .'
\____   )MMMMMM|   .'
     `-'       `--' 
                                      
                                      
for setting
http://jupiterstation.tech:8080/en/Projects/TR-560/tools

Change drivers > graphics > boot Logo > to 16 bit

continue(Y/n)?

EOF


echo ' \n'
    read -p  '>> ' yn
    case $yn in
        [Yy]* ) clear; break;;
        [Nn]* ) exit;;
        * )  clear ;  break;;
    esac
done

sudo apt install libncurses5-dev
make menuconfig


while true; do
 cat << "EOF"
 
         _mmm_                      
        mmmmmmmm     ,"""""""""""""""""""""""".
       @p~qp~~qMb    | Kernel Configuration 04|
       | @||@) m|   _;........................'
       @,----.JM| -'
      mm^\__/  mmm
     mmm        mmmi
    mmM          mmmm
   MMM            mmMM
   MMM            MMMM
   MMM            MMMM
 __| ".        |\dS"qML
 |    `.       | `' \Zq
_)      \.___.,|     .'
\____   )MMMMMM|   .'
     `-'       `--'                                                        
                                                                                                  
Build kernel
continue(Y/n)?

EOF

    read -p  '>> ' yn
    case $yn in
        [Yy]* ) clear; break;;
        [Nn]* ) exit;;
        * )  clear ;  break;;
    esac
done
make -j4 zImage modules dtbs
sudo make modules_install
while true; do
 cat << "EOF"
 The Social ArtCasts                                                                                                   
MMMMMMMMMMMMMWX0OkxxddxxkkO0KXNWMMMMMMMMMMMMMMMM
MMMMMMMMMMWXko:,,,:cllllllc:::coxOXWMMMMMMMMMMMM
MMMMMMMMWXxc,,;lxOKNWWWWWWNX0kdc;,:dONMMMMMMMMMM
MMMMMMMW0l,,;o0NWWMMMMMMMMMMMMWN0d:,;o0WMMMMMMMM
MMMMMMM0c,,ckKK00KXNMMMMMWWMMMWWMWKo;,cOWMMMMMMM
MMMMMMNx,':OWXXXNK0KXXXXNXXNXXKXMMMXo,,lKMMMMMMM
MMMMMMXl,,dNMMMWNXK0000KXKKK000XWMMW0c';xWMMMMMM
MMMMMMKc,,xWWWN0kKXNNNNWWWWWWNNNNWWWNo,,dNMMMMMM
MMMMMMKc',oXNKOxkOO00OKK0KX0XX0O0XKXNd,,dNMMMMMM
MMMMMMXo,',o0XXNWNXNNXXXXXXKXNXXXNXNNo,,dNMMMMMM
MMMMMMWO:,',:d0XWMMMMMMMMMMMMMMMMMMMW0c,lKWMMMMM
MMMMMMMNx;'',,,coxk0XWMMMMMMMMMMMMMMMWKl,c0WMMMM
MMMMMMMMNkc,'',,'',,:oONWMMMMMMMMMMMMWXd,,:kNMMM
MMMMMMMMMWXOo;,,,'';ll:oOXMMMMMMMMMMMNd,,,ckNMMM
MMMMMMMMMMMMN0o;'',,o0kdd0MMMMMMMMMMM0c,'c0WMMMM
MMMMMMMMMMMMMMNd;,lxx0WNNWMMMMMMMMMMXd,',dNMMMMM
MMMMMMMMMMMMMMM0:,xNWWMMMMMMWWWWWMMWk;',c0WMMMMM
MMMMMMMMMMMMMMM0c:OWMMMMMN0xolloodxo:,';xWMMMMMM
MMMMMMMMMMMMMMWOlkNMMMW0xo;,;;:;;;,,'',lKMMMMMMM
MMMMMMMMMMMMMMW0KWMMWKd;,;lk0XXKKK0kxxkXWMMMMMMM
MMMMMMMMMMMMMMMMMMMWKl;lxONMMMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMMMMMMXdoONWWMMMMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMMMMMMNKNMMMMMMMMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM                                                                
                                                                                                  
 Almost done copy files to /boot/

continue(Y/n)?

EOF

    read -p  '>> ' yn
    case $yn in
        [Yy]* ) clear; break;;
        [Nn]* ) exit;;
        * )  clear ;  break;;
    esac
done

sudo cp arch/arm/boot/dts/*.dtb /boot/
sudo cp arch/arm/boot/dts/overlays/*.dtb* /boot/overlays/
sudo cp arch/arm/boot/dts/overlays/README /boot/overlays/
sudo cp arch/arm/boot/zImage /boot/$KERNEL.img
