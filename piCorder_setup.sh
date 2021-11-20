#/bin/bash
clear
# thank to https://sunnyspot.org/asciiart/gallery/startrek.html
while true; do
 cat << "EOF"

                 ______
              _-' .   .`-_
          |/ /  .. . '   .\ \|
         |/ /            ..\ \|
       \|/ |: .   ._|_ .. . | \|/
        \/ |   _|_ .| . .:  | \/
       \ / |.   |  .  .    .| \ /
        \||| .  . .  _|_   .|||/
       \__| \  . :.  .|.  ./ |__/
         __| \_  .    .. _/ |__
          __|  `-______-'  |__
             -,____  ____,-
               ---'  `---

          piCorderOS installer


- Install System Requerments
- Enable i2c and spi and test
- download piCorderOS
- Create a piCorderOS/requerments.txt 
- Install Python Requerments
- disable all sensors unavalible -- todo finetune metod 

Do you wish to continue(Y/n)?

EOF

    read -p  '>> '  yn
    case $yn in
        [Yy]* ) clear; break;;
        [Nn]* ) exit;;
        * )  clear ;  break;;
    esac
done

cd ~/
printf "\nDownloading:  Requrierd tools\n"  
sudo apt purge python3-numpy python3-pandas python3-pygame python3-colour

sudo apt update
sudo apt install -y git python3-pip python3-smbus
sudo apt install -y git libatlas-base-dev libopenjp2-7-dev libsdl2-dev libtiff5 libsdl-ttf2.0-dev 
sudo apt install -y libsdl-gfx1.2-5 libsdl-image1.2 libsdl-kitchensink1 libsdl-mixer1.2 libsdl-sound1.2 libsdl-ttf2.0-0 libsdl1.2debian libsdl2-2.0-0 libsdl2-gfx-1.0-0 libsdl2-image-2.0-0 libsdl2-mixer-2.0-0 libsdl2-ttf-2.0-0
printf "Enabling  %s & %s\n"  i2c spi
sudo sed -i -e 's/#dtparam=i2c_arm=on/dtparam=i2c_arm=on/g' /boot/config.txt && sudo sed -i -e 's/#dtparam=spi=on/dtparam=spi=on/g' /boot/config.txt

echo "Expected result:"
echo "i2c_bcm2835            16384  0"
echo "i2c_dev                16384  0"
echo " "
printf "\nActual Result: \n"
echo " "
lsmod | grep i2c_
echo " "

echo "Downloading: picorderOs v2"  
git clone https://github.com/directive0/picorderOS.git 

cd picorderOS/ && git checkout v2

echo "Create a requirements.txt to use with pip"

FILE=~/picorderOS/requirements.txt
if [ -f "$FILE" ]; then
    echo "$FILE exists."
    echo "installing libraries from requirements.txt"
    #python3 -m pip install -r  ~/picorderOS/requirements.txt
else 
    cat << EOF >> requirements.txt
adafruit_amg88xx==1.4.3
Adafruit_Blinka==6.15.0
adafruit_circuitpython_bme680==3.3.4
adafruit_circuitpython_mpr121==2.1.9
adafruit_mpr121==1.1.2
board==1.0
Cap1xxx==0.1.4
colour==0.1.5
envirophat==1.0.1
luma.core==2.3.1
luma.lcd==2.9.0
luma.emulator==1.4.0
numpy==1.21.4
pandas==1.3.4
Pillow==8.4.0
psutil==5.8.0
pygame==2.1.0
scipy==1.7.2
sense_hat==2.2.0
simpleaudio==1.0.4
wifi==0.3.8


EOF
    echo "$FILE exists."
    echo "installing libraries from requirements.txt"
    #python3 -m pip install -r  requirements.txt
fi


printf "\n This is a dev mode remove for prodution \n"
sed -i -e 's/self.pc = False/self.pc = True/g' ~/picorderOS/objects.py
#input_cap1208 = False
#leds = [False]
#alarm = [False]
#sleep = [False]
#audio = [False]
#bme = False
#amg8833 = False
#dr = [False]

#python3 ~/picorderOS/main.py --user
