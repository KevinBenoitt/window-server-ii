﻿$PATHServer = "C:\Users\kevin\Downloads\en_windows_server_2019_x64_dvd_4cb967d8 (1).iso"
$PATHClient = "C:\Users\kevin\Downloads\SW_DVD9_Win_Pro_10_20H2.10_64BIT_English_Pro_Ent_EDU_N_MLF_X22-76585 (1).ISO"
# Unattended install van WinClient
vboxmanage unattended install Client `
--iso $PATHClient `
--user Administrator `
--password 23Admin24 `
--install-additions `
--image-index= 2 `
--locale=be_NL `
--country=BE `
--time-zone=Europe/Brussels `
--post-install-command="shutdown /r" `
--start-vm=gui `
--hostname=dhcp.ws2-2324-kevin.hogent