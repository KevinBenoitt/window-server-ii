


# Configuratie DNS/DHCP/CA Server

$nameVM = "DHCPDNSCA"
vboxmanage createvm --name "$nameVM" --ostype Windows2019_64 --register --groups=/Windows-Server-2
vboxmanage modifyvm "$nameVM" --memory 5000 --cpus 2 --vram 128 --nic1 intnet --nic2 NAT
vboxmanage storagectl "$nameVM" --name "SATA Controller" --add sata --controller IntelAhci --bootable on
$PATH = "C:\Users\kevin\VirtualBoxVMS\Windows-Server-2\$nameVM\$nameVM.vdi"
vboxmanage createhd --filename "$PATH" --size 40000
vboxmanage storageattach "$nameVM" --storagectl "SATA Controller" --port 0 --device 0 --type hdd --medium "$PATH"



$nameVM = "Sharepoint"
vboxmanage createvm --name $nameVM --ostype Windows2019_64 --register --groups=/Windows-Server-2
vboxmanage modifyvm $nameVM --memory 3000 --cpus 2 --vram 128 --nic1 intnet
vboxmanage storagectl $nameVM --name IDE --add IDE
vboxmanage storagectl "$nameVM" --name "SATA Controller" --add sata --controller IntelAhci --bootable on¨$PATH = "C:\Users\kevin\VirtualBoxVMS\Windows-Server-2\$nameVM\$nameVM.vdi"
vboxmanage createhd --fileame $PATH --size 30000
vboxmanage storageattach "$nameVM" --storagectl "SATA Controller" --port 0 --device 0 --type hdd --medium "$PATH"

$nameVM = "SQL"
vboxmanage createvm --name $nameVM --ostype Windows2019_64 --register --groups=/Windows-Server-2
vboxmanage modifyvm $nameVM --memory 5000 --cpus 2 --vram 128 --nic1 intnet
vboxmanage storagectl $nameVM --name IDE --add IDE
vboxmanage storagectl $nameVM --name "SATA Controller" --add sata --controller IntelAhci --bootable on
$PATH = "C:\Users\kevin\VirtualBoxVMS\Windows-Server-2\$nameVM\$nameVM.vdi"
vboxmanage createhd --filename $PATH --size 30000
vboxmanage storageattach $nameVM --storagectl "SATA Controller" --port 0 --device 0 --type hdd --medium $PATH




$nameVM = "WinClient"
vboxmanage createvm --name $nameVM --ostype Windows10_64 --register --groups=/Windows-Server-2
vboxmanage modifyvm $nameVM --memory 2048 --cpus 1 --vram 128 --nic1 intnet
vboxmanage storagectl $nameVM --name  "SATA Controller" --add sata --controller IntelAhci --bootable on 
$PATH = "C:\Users\kevin\VirtualBoxVMS\Windows-Server-2\$nameVM\$nameVM.vdi"
vboxmanage createhd --filename $PATH --size 40000
vboxmanage storageattach $nameVM --storagectl "SATA Controller" --port 0 --device 0 --type hdd --medium $PATH