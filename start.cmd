cls
echo PC "1"
echo PC malá čistka "2"
echo TABLET "5"

SET /p Choice=
IF "%Choice%"=="1" GOTO PC1
IF "%Choice%"=="5" GOTO TABLET
IF "%Choice%"=="2" GOTO PC2
IF "%Choice%"=="" GOTO end
Goto end

:PC1
powershell.exe -NoProfile -ExecutionPolicy Bypass -File Win10.ps1 DisableTelemetry DisableWiFiSense DisableSmartScreen DisableWebSearch DisableStartSuggestions DisableLocationTracking DisableFeedback DisableAdvertisingID DisableCortana DisableErrorReporting RestrictUpdateP2P DisableAutoLogger DisableDiagTrack DisableWAPPush DisableUpdateRestart DisableHomeGroups DisableRemoteAssistance  DisableAutoplay DisableAutorun DisableDefragmentation DisableStickyKeys ShowFileOperationsDetails ShowKnownExtensions ShowThisPCOnDesktop HideDesktopFromThisPC HideDocumentsFromThisPC HideDownloadsFromThisPC HideMusicFromThisPC HidePicturesFromThisPC HideVideosFromThisPC EnableF8BootMenu
Goto end

:PC2
powershell.exe -NoProfile -ExecutionPolicy Bypass -File Win10.ps1 DisableTelemetry DisableWiFiSense DisableWebSearch DisableStartSuggestions DisableLocationTracking DisableFeedback DisableAdvertisingID DisableCortana DisableErrorReporting RestrictUpdateP2P DisableAutoLogger DisableDiagTrack DisableWAPPush DisableUpdateRestart DisableHomeGroups DisableRemoteAssistance  DisableAutoplay DisableAutorun DisableDefragmentation DisableStickyKeys ShowFileOperationsDetails ShowKnownExtensions ShowThisPCOnDesktop HideDesktopFromThisPC HideDocumentsFromThisPC HideDownloadsFromThisPC HideMusicFromThisPC HidePicturesFromThisPC HideVideosFromThisPC EnableF8BootMenu
Goto end

:TABLET
powershell.exe -NoProfile -ExecutionPolicy Bypass -File Win10.ps1 DisableTelemetry DisableWiFiSense DisableSmartScreen DisableWebSearch DisableStartSuggestions DisableLocationTracking DisableFeedback DisableAdvertisingID DisableCortana DisableErrorReporting RestrictUpdateP2P DisableAutoLogger DisableDiagTrack DisableWAPPush DisableUpdateRestart DisableHomeGroups DisableRemoteAssistance  DisableAutoplay DisableAutorun DisableDefragmentation DisableStickyKeys ShowFileOperationsDetails ShowKnownExtensions ShowThisPCOnDesktop HideDesktopFromThisPC HideDocumentsFromThisPC HideDownloadsFromThisPC HideMusicFromThisPC HidePicturesFromThisPC HideVideosFromThisPC EnableF8BootMenu
Goto end

:end
pause
