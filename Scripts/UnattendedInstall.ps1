$PATHServer = "C:\Users\kevin\Downloads\en_windows_server_2019_x64_dvd_4cb967d8 (1).iso"
$PATHClient = "C:\Users\kevin\Downloads\SW_DVD9_Win_Pro_10_20H2.10_64BIT_English_Pro_Ent_EDU_N_MLF_X22-76585 (1).ISO"

# Unattended install DHCP
#Info gehaald van https://docs.oracle.com/en/virtualization/virtualbox/6.0/user/vboxmanage-unattended.html

vboxmanage unattended install DHCP `
--iso $PATHServer `
--user Administrator `
--password 23Admin24 `
--install-additions `
--image-index 1 `
--locale=be_NL `
--country=BE `
--time-zone=Europe/Brussels `
--post-install-command="shutdown /r" `
--start-vm=gui `
--hostname=dhcp.ws2-2324-kevin.hogent


# Unattended Install DC

vboxmanage unattended install DC `
--iso $PATHServer `
--user Administrator `
--password 23Admin24 `
--install-additions `
--image-index 2 `
--locale=be_NL `
--country=BE `
--time-zone=Europe/Brussels `
--post-install-command="shutdown /r" `
--start-vm=gui `
--hostname=dc.ws2-2324-kevin.hogent


#Unattended Install Sharepoint
vboxmanage unattended install Sharepoint `
--iso $PATHServer `
--user Administrator `
--password 23Admin24 `
--install-additions `
--image-index 2 `
--locale=be_NL `
--country=BE `
--time-zone=Europe/Brussels `
--post-install-command="shutdown /r" `
--start-vm=gui `
--hostname=sharepoint.ws2-2324-kevin.hogent

#Unattended Install SQL
vboxmanage unattended install SQL `
--iso $PATHServer `
--user Administrator `
--password 23Admin24 `
--install-additions `
--image-index 1 `
--locale=be_NL `
--country=BE `
--time-zone=Europe/Brussels `
--post-install-command="shutdown /r" `
--start-vm=gui `
--hostname=sql.ws2-2324-kevin.hogent


