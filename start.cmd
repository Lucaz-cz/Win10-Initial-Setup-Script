cls
echo PC "1"
echo PC malá èistka "2"
echo TABLET "5"
echo Vypnout firerwall a defender "6"

SET /p Choice=
IF "%Choice%"=="1" GOTO PC1
IF "%Choice%"=="5" GOTO TABLET
IF "%Choice%"=="2" GOTO PC2
IF "%Choice%"=="6" GOTO FDOFF
IF "%Choice%"=="" GOTO end
Goto end

:PC1
start powershell.exe -NoProfile -ExecutionPolicy Bypass -File Win10.ps1 DisableTelemetry DisableWiFiSense DisableSmartScreen DisableWebSearch DisableStartSuggestions DisableLocationTracking DisableFeedback DisableAdvertisingID DisableCortana DisableErrorReporting RestrictUpdateP2P DisableAutoLogger DisableDiagTrack DisableWAPPush DisableUpdateRestart DisableHomeGroups DisableRemoteAssistance  DisableAutoplay DisableAutorun DisableDefragmentation DisableStickyKeys ShowFileOperationsDetails ShowKnownExtensions ShowThisPCOnDesktop HideDesktopFromThisPC HideDocumentsFromThisPC HideDownloadsFromThisPC HideMusicFromThisPC HidePicturesFromThisPC HideVideosFromThisPC EnableF8BootMenu WaitForKey Restart
Goto end

:PC2
powershell.exe -NoProfile -ExecutionPolicy Bypass -File Win10.ps1 DisableTelemetry DisableWiFiSense DisableWebSearch DisableStartSuggestions DisableLocationTracking DisableFeedback DisableAdvertisingID DisableCortana DisableErrorReporting RestrictUpdateP2P DisableAutoLogger DisableDiagTrack DisableWAPPush DisableUpdateRestart DisableHomeGroups DisableRemoteAssistance  DisableAutoplay DisableAutorun DisableDefragmentation DisableStickyKeys ShowFileOperationsDetails ShowKnownExtensions ShowThisPCOnDesktop HideDesktopFromThisPC HideDocumentsFromThisPC HideDownloadsFromThisPC HideMusicFromThisPC HidePicturesFromThisPC HideVideosFromThisPC EnableF8BootMenu WaitForKey Restart
Goto end

:TABLET
powershell.exe -NoProfile -ExecutionPolicy Bypass -File Win10.ps1 DisableTelemetry DisableWiFiSense DisableSmartScreen DisableWebSearch DisableStartSuggestions DisableLocationTracking DisableFeedback DisableAdvertisingID DisableCortana DisableErrorReporting RestrictUpdateP2P DisableAutoLogger DisableDiagTrack DisableWAPPush DisableUpdateRestart DisableHomeGroups DisableRemoteAssistance  DisableAutoplay DisableAutorun DisableDefragmentation DisableStickyKeys ShowFileOperationsDetails ShowKnownExtensions ShowThisPCOnDesktop HideDesktopFromThisPC HideDocumentsFromThisPC HideDownloadsFromThisPC HideMusicFromThisPC HidePicturesFromThisPC HideVideosFromThisPC EnableF8BootMenu WaitForKey Restart
Goto end

:FDOFF
powershell.exe -NoProfile -ExecutionPolicy Bypass -File Win10.ps1 DisableUpdateMSRT DisableDefender DisableFirewall WaitForKey Restart
Goto end


:end
pause

