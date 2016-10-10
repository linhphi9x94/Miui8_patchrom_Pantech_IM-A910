#!/bin/bash
#
#sh for miui patchrom

pwd=$PWD

function BUILD_DATE() {
    date=`date +%y%m%d`
    year="${date:1:1}"
    month="${date:2:2}"
    days="${date:4:2}"
    #if month
    if [ $month -lt "10" ];then
        month=$(echo $month | sed 's/0//g')
    fi
    #if days
    if [ $days -lt "10" ];then
        days=$(echo $days | sed 's/0//g')
    fi
    BUILD_NUMBER=$year.$month.$days
}

function MakeFullota() {
    echo -e "\e[1;32mEnvironment\e[0m"
    cd ..
    source build/envsetup.sh
    cd -
    echo -e "\e[1;32mDo you want to make fullota? （y/n）\e[0m"
    read arg
    case $arg in
    	Y|y|YES|yes)
    	    echo -e "\e[1;32mClean\e[0m"
    	    make clean
            echo -e "\e[1;32mFullota, Version is $BUILD_NUMBER\e[0m"
            make fullota BUILD_NUMBER=$BUILD_NUMBER;;
        N|n|NO|no)
            echo -e "\e[1;31mWarning:Not Make Fullota!!!\e[0m";;
    esac
}

function CopyFullota() {
    if [ ! -d ROM ];then 
        mkdir ROM
    fi
    if [ -f out/fullota.zip ]; then
        echo -e "\e[1;32mCopy Fullota\e[0m"
        mv out/fullota.zip ROM/$BUILD_NUMBER-fullota.zip
    else
        echo -e "\e[1;31mWarning:Not Found Fullota!!!\e[0m"
    fi
    if [ -f out/target_files.zip ]; then
        echo -e "\e[1;32mCopy Target\e[0m"
        mv out/target_files.zip ROM/$BUILD_NUMBER-target.zip
    else
        echo -e "\e[1;31mWarning:Not Found Target!!!\e[0m"
    fi
    if [ -f ROM/$BUILD_NUMBER-fullota.zip ]; then
        echo -e "\e[1;32mCopy out\e[0m"
        rm -rf out/*-tozip
        rm -rf out/*.apk
        rm -rf out/*.zip
        rm -rf out/*.jar
        rm -rf out/target_files
        mv out ROM/$BUILD_NUMBER-out
    else
        echo -e "\e[1;31mWarning:Not Found out!!!\e[0m"
    fi
}

function MakeOTA() {
    echo -e "\e[1;32mDo you want to make ota package? (y/n)\e[0m"
    read arg
    case $arg in
        Y|y|YES|yes)
    	    echo -e "\e[1;32mFound some target zip($PWD/ROM/), please enter the last target version you want (Only Version, EX: 5.8.21)\e[0m"
    	    ls -h -l ROM/*target*
    	    read last_target_zip
            echo -e "\e[1;32mOTA, Version is $last_target_zip-$BUILD_NUMBER\e[0m"
    	    ../tools/releasetools/ota_from_target_files -k security/testkey -i ROM/$last_target_zip-target.zip ROM/$BUILD_NUMBER-target.zip ROM/OTA-$last_target_zip-$BUILD_NUMBER.zip;;
        N|n|NO|no)
            echo -e "\e[1;31mWarning:Not Make OTA!!!\e[0m";;
    esac
}

function UseTime() {
    let "OK_TIME=$END_TIME-$START_TIME"
    let "OK_TIME_1=$OK_TIME/60"
    let "OK_TIME_2=$OK_TIME%60"
    echo -e "\e[1;32mAll done in $OK_TIME_1 minutes $OK_TIME_2 seconds\e[0m"
}

START_TIME=`date +%s`
if [ "$1" = '' ]
then
    BUILD_DATE
else
    BUILD_NUMBER=$1
fi
MakeFullota
CopyFullota
MakeOTA
END_TIME=`date +%s`
UseTime
