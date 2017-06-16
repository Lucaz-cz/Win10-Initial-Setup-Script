cls
echo PC "1"
echo PC mala cistka "2"
echo M40 "3"
echo TABLET "5"
echo Vypnout firerwall a defender "6"
echo Zapnout firerwall a defender "7"
echo Nastavit aktualni sit jako privatni "8"
echo Nastavit aktualni sit jako verejnou "9"

SET /p Choice=
IF "%Choice%"=="1" GOTO PC1
IF "%Choice%"=="5" GOTO TABLET
IF "%Choice%"=="3" GOTO PCM40
IF "%Choice%"=="2" GOTO PC2
IF "%Choice%"=="6" GOTO FDOFF
IF "%Choice%"=="7" GOTO FDON
IF "%Choice%"=="8" GOTO NWPRIV
IF "%Choice%"=="9" GOTO NWPUB
IF "%Choice%"=="" GOTO end
Goto end

:PC1
start powershell.exe -NoProfile -ExecutionPolicy Bypass -File Win10.ps1 DisableTelemetry DisableWiFiSense DisableSmartScreen DisableWebSearch DisableStartSuggestions DisableLocationTracking DisableFeedback DisableAdvertisingID DisableCortana DisableErrorReporting RestrictUpdateP2P DisableAutoLogger DisableDiagTrack DisableWAPPush DisableUpdateRestart DisableHomeGroups DisableRemoteAssistance  DisableAutoplay DisableAutorun DisableDefragmentation DisableStickyKeys ShowFileOperationsDetails ShowKnownExtensions ShowThisPCOnDesktop HideDesktopFromThisPC HideDocumentsFromThisPC HideDownloadsFromThisPC HideMusicFromThisPC HidePicturesFromThisPC HideVideosFromThisPC EnableF8BootMenu WaitForKey Restart
Goto end

:PC2
powershell.exe -NoProfile -ExecutionPolicy Bypass -File Win10.ps1 DisableTelemetry DisableWiFiSense DisableWebSearch DisableStartSuggestions DisableLocationTracking DisableFeedback DisableAdvertisingID DisableCortana DisableErrorReporting RestrictUpdateP2P DisableAutoLogger DisableDiagTrack DisableWAPPush DisableUpdateRestart DisableHomeGroups DisableRemoteAssistance  DisableAutoplay DisableAutorun DisableDefragmentation DisableStickyKeys ShowFileOperationsDetails ShowKnownExtensions ShowThisPCOnDesktop HideDesktopFromThisPC HideDocumentsFromThisPC HideDownloadsFromThisPC HideMusicFromThisPC HidePicturesFromThisPC HideVideosFromThisPC EnableF8BootMenu WaitForKey Restart
Goto end

:PCM40
powershell.exe -NoProfile -ExecutionPolicy Bypass -File %~dp0.\Win10.ps1 -preset "%~dp0pcm40.preset"
Goto end

:TABLET
powershell.exe -NoProfile -ExecutionPolicy Bypass -File Win10.ps1 DisableTelemetry DisableWiFiSense DisableSmartScreen DisableWebSearch DisableStartSuggestions DisableLocationTracking DisableFeedback DisableAdvertisingID DisableCortana DisableErrorReporting RestrictUpdateP2P DisableAutoLogger DisableDiagTrack DisableWAPPush DisableUpdateRestart DisableHomeGroups DisableRemoteAssistance  DisableAutoplay DisableAutorun DisableDefragmentation DisableStickyKeys ShowFileOperationsDetails ShowKnownExtensions ShowThisPCOnDesktop HideDesktopFromThisPC HideDocumentsFromThisPC HideDownloadsFromThisPC HideMusicFromThisPC HidePicturesFromThisPC HideVideosFromThisPC EnableF8BootMenu WaitForKey Restart
Goto end

:FDOFF
powershell.exe -NoProfile -ExecutionPolicy Bypass -File Win10.ps1 DisableUpdateMSRT DisableDefender DisableFirewall WaitForKey Restart
Goto end

:FDON
powershell.exe -NoProfile -ExecutionPolicy Bypass -File Win10.ps1 EnableFirewall EnableDefender EnableUpdateMSRT  WaitForKey Restart
Goto end

:NWPRIV
powershell.exe -NoProfile -ExecutionPolicy Bypass -File Win10.ps1 SetCurrentNetworkPrivate
Goto end

:NWPUB
powershell.exe -NoProfile -ExecutionPolicy Bypass -File Win10.ps1 SetCurrentNetworkPublic
Goto end

:end
pause

