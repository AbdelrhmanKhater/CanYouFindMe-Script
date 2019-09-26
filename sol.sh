#!/bin/bash
f=0
while [ $f -lt 5 ]
do
fil=$(file secret)
echo "$fil"
if [[ $fil == *"ARC"* ]]
then
mv secret secret.arc
nomarch secret.arc
rm -rf secret.arc
elif [[ $fil == *"ARJ"* ]]
then
mv secret secret.arj
arj e secret.arj
rm -rf secret.arj
elif [[ $fil == *"XZ"* ]]
then
mv secret secret.xz
unxz -d secret.xz
elif [[ $fil == *"Zoo"* ]]
then
mv secret secret.zoo
zoo -extract secret.zoo
rm -rf secret.zoo
elif [[ $fil == *"RAR"* ]]
then
mv secret secret.rar
unrar e secret.rar
rm -rf secret.rar
elif [[ $fil == *"bzip2"* ]]
then
mv secret secret.bz2
bzip2 -d secret.bz2
elif [[ $fil == *"Cabinet"* ]]
then
mv secret secret.cab
cabextract -F "secret" secret.cab
rm -rf secret.cab
elif [[ $fil == *"Zip"* ]]
then
mv secret secret.zip
unzip secret.zip
rm -rf secret.zip
elif [[ $fil == *"POSIX"* ]]
then
mv secret secret.tar
tar -xvf secret.tar
rm -rf secret.tar
elif [[ $fil == *"gzip"* ]]
then
mv secret secret.gz
gzip -d secret.gz
elif [[ $fil == *"rzip"* ]]
then
mv secret secret.rz
rzip -d secret.rz
elif [[ $fil == *"PPMD"* ]]
then
mv secret secret.ppmd
ppmd d secret.ppmd
rm -rf secret.ppmd
elif [[ $fil == *"KGB"* ]]
then
mv secret secret.kgb
kgb secret.kgb
rm -rf secret.kgb
elif [[ $fil == *"7"* ]]
then 
mv secret secret.7z
p7zip -d secret.7z
else
f=$[$f+1]
fi
done
