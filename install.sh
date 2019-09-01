

echo "Guten Tag!" 
echo "This is a shell script for ubuntu 18.04 LTS."

echo "You'd better change the default package source before running this shell script."
echo "In [System settings > Software & Update > Download from] find:"
echo "http://mirrors.tuna.tsinghua.edu.cn/ubuntu"

echo -e "\nMake sure that you are a sudo user."
sudo echo "Done."

r0=0
while [ ${r0} -eq 0 ]
do
	echo "Continue? (y/n)"
	read t0
	if [ ${t0} = "y" ] 
	then
		sudo apt-get update
		sudo apt-get upgrade
		sudo apt-get install git
		r0=1
	elif [ ${t0} = "n" ]
	then
		exit
	else
		echo "Input should be y/n."
	fi
done

r1=0
while [ ${r1} -eq 0 ]
do
	echo "Add greetings to .bashrc? (y/n)"
	read t1
	if [ ${t1} = "y" ] 
	then
		echo "Input your name:"
		read name
		echo "echo \"Guten Tag, ${name}.\"" >> ~/.bashrc
		r1=1
	elif [ ${t1} = "n" ]
	then
		r1=1
	else
		echo "Input should be y/n."
	fi
done

echo "Basic tools:"

r2=0
while [ ${r2} -eq 0 ]
do
	echo "Install vim, ibus-sunpinyin and fcitx-googlepinyin? (y/n)"
	read t2
	if [ ${t2} = "y" ] 
	then
		sudo apt-get install vim
		#sudo apt-get install fcitx
		#sudo apt-get install fcitx-googlepinyin
		#sudo apt-get install ibus-sunpinyin
		r2=1
	elif [ ${t2} = "n" ]
	then
		r2=1
	else
		echo "Input should be y/n."
	fi
done

r3=0
while [ ${r3} -eq 0 ]
do
	echo "Install gfortran and cmake? (y/n)"
	read t3
	if [ ${t3} = "y" ] 
	then
		sudo apt-get install gfortran
		sudo apt-get install cmake
		r3=1
	elif [ ${t3} = "n" ]
	then
		r3=1
	else
		echo "Input should be y/n."
	fi
done

echo "Python:"

r4=0
while [ ${r4} -eq 0 ]
do
	echo "Install python -numpy, -scipy, and -matplotlib? (y/n)"
	read t4
	if [ ${t4} = "y" ] 
	then
		sudo apt-get install python
		sudo apt-get install python3
		sudo apt-get install python-pip
		sudo apt-get install python3-pip
		sudo apt-get install python-numpy
		sudo apt-get install python3-numpy
		sudo apt-get install python-scipy
		sudo apt-get install python3-scipy
		sudo apt-get install python-matplotlib
		sudo apt-get install python3-matplotlib
		sudo apt-get install mercurial
		r4=1
	elif [ ${t4} = "n" ]
	then
		r4=1
	else
		echo "Input should be y/n."
	fi
done

r5=0
while [ ${r5} -eq 0 ]
do
	echo "Add a .pth file for python(2.7/3.5)? (y/n)"
	read t5
	if [ ${t5} = "y" ] 
	then
		echo "Input the name of the .pth file"
		read np
		echo "Input your path:"
		read p1
		sudo touch /usr/local/lib/python2.7/dist-packages/"${np}.pth"
		sudo echo "${p1}" > /usr/local/lib/python2.7/dist-packages/"${np}.pth"
		sudo touch /usr/local/lib/python3.5/dist-packages/"${np}.pth"
		sudo echo "${p1}" > /usr/local/lib/python3.5/dist-packages/"${np}.pth"
		sudo echo "If this doesn't work, please add the .pth file manualy to /usr/local/lib/python*/dist-packages/, where * can be 2.7 or 3.5."
		r5=1
	elif [ ${t5} = "n" ]
	then
		r5=1
	else
		echo "Input should be y/n."
	fi
done

echo "Packages for scientific computation:"

r6=0
while [ ${r6} -eq 0 ]
do
	echo "Install fftws and cgal? (y/n)"
	read t6
	if [ ${t6} = "y" ] 
	then
		sudo apt-get install libfftw3-3
		sudo apt-get install libcgal-dev
		sudo apt-get install libcgal-demo
		echo "You may install gsl by Synaptic Package Manager which is available at Ubuntu Software."
		r6=1
	elif [ ${t6} = "n" ]
	then
		r6=1
	else
		echo "Input should be y/n."
	fi
done

echo "About LaTeX:"

r7=0
while [ ${r7} -eq 0 ]
do
	echo "Install texlive? (y/n)"
	read t7
	if [ ${t7} = "y" ] 
	then
		sudo apt-get install texlive-full
		sudo apt-get install libjs-mathjax
		r7=1
	elif [ ${t7} = "n" ]
	then
		r7=1
	else
		echo "Input should be y/n."
	fi
done

r8=0
while [ ${r8} -eq 0 ]
do
	echo "Install texmaker? (y/n)"
	read t8
	if [ ${t8} = "y" ] 
	then
		sudo apt-get install texmaker
		sudo apt-get remove appmenu-qt5
		r8=1
	elif [ ${t8} = "n" ]
	then
		r8=1
	else
		echo "Input should be y/n."
	fi
done

echo "The theme:"
#echo "You may use Unity Tweak Tool (available at Ubuntu Software) to change themes."

r8_=0
while [ ${r8_} -eq 0 ]
do
	echo "Install Gnome Tweak Tool and shell? (y/n)"
	read t8_
	if [ ${t8_} = "y" ] 
	then
		sudo apt-get install notify-osd
		sudo apt-get install gnome-tweak-tool
		sudo apt-get install chrome-gnome-shell
		r8_=1
	elif [ ${t8_} = "n" ]
	then
		r8_=1
	else
		echo "Input should be y/n."
	fi
done

r9=0
while [ ${r9} -eq 0 ]
do
	echo "Install Arc? (y/n)"
	read t9
	if [ ${t9} = "y" ] 
	then
		sudo sh -c "echo 'deb http://download.opensuse.org/repositories/home:/Horst3180/xUbuntu_16.04/ /' >> /etc/apt/sources.list.d/arc-theme.list"
		wget http://download.opensuse.org/repositories/home:Hort3180/xUbuntu_16.04/Release.key
		sudo apt-key add - < ./Release.key
		sudo apt-get update
		sudo apt-get install arc-theme
		r9=1
	elif [ ${t9} = "n" ]
	then
		r9=1
	else
		echo "Input should be y/n."
	fi
done

r10=0
while [ ${r10} -eq 0 ]
do
	echo "Install paper? (y/n)"
	read t10
	if [ ${t10} = "y" ] 
	then
		sudo add-apt-repository ppa:snwh/pulp
		sudo apt-get install paper-icon-theme
		sudo apt-get install paper-gtk-theme
		r10=1
	elif [ ${t10} = "n" ]
	then
		r10=1
	else
		echo "Input should be y/n."
	fi
done

echo "You may find more themes at http://www.ubuntuthemes.org"

echo "Synchronization:"
echo "You may need to turn off UTC to make Ubuntu synchronous with Windows."

r11=0
while [ ${r11} -eq 0 ]
do
	echo "Turn off UTC (y/n)?"
	read t11
	if [ ${t11} = "y" ]
	then
		sudo timedatectl set-local-rtc true
		r11=1
	elif [ ${t11} = "n" ]
	then
		r11=1
	else
		echo "Input should be y/n."
	fi
done


echo "You may adjust the encoding setting of gedit to display Chinese characters."
r12=0
while [ ${r12} -eq 0 ]
do
	echo "Adjust encoding setting (y/n)?"
	read t12
	if [ ${t12} = "y" ]
	then
		sudo apt-get install dconf-editor
		gsettings set org.gnome.gedit.preferences.encodings candidate-encodings "['GB18030', 'UTF-8', 'CURRENT', 'ISO-8859-15', 'UTF-16']"
		r12=1
	elif [ ${t12} = "n" ]
	then
		r12=1
	else
		echo "Input should be y/n."
	fi
done

r13=0
while [ ${r13} -eq 0 ]
do
	echo "Install grub customizer (y/n)?"
	read t13
	if [ ${t13} = "y" ]
	then
		sudo add-apt-repository ppa:danielrichter2007/grub-customizer
		sudo apt-get update
		sudo apt-get install grub-customizer
		r13=1
	elif [ ${t13} = "n" ]
	then
		r13=1
	else
		echo "Input should be y/n."
	fi
done

r14=0
while [ ${r14} -eq 0 ]
do
	echo "Install tlp and tlpui (y/n)?"
	read t14
	if [ ${t14} = "y" ]
	then
		sudo apt install tlp
		sudo add-apt-repository ppa:linuxuprising/apps
		sudo apt-get update
		sudo apt install tlpui
		r14=1
	elif [ ${t14} = "n" ]
	then
		r14=1
	else
		echo "Input should be y/n."
	fi
done

echo "Some websites for learning linux:"
echo "http://www.runoob.com/linux/linux-shell.html"
echo "http://cn.linux.vbird.org/linux_basic/linux_basic.php"

echo 'Make it look like work is being done...'
for i in {1..10}; do echo -n '.'; sleep 1; done
echo
echo "That's it!"
sleep 5;
echo 'Nothing happened.'
