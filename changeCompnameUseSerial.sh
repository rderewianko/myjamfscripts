#!/bin/bash

comSerial=$(system_profiler SPHardwareDataType | awk '/Serial Number/{print $4}')

/usr/sbin/scutil --set Hostname $comSerial
/usr/sbin/scutil --set LocalHostname $comSerial
/usr/sbin/scutil --set ComputerName $comSerial

