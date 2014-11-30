.class public interface abstract Lcom/dolphin/browser/core/ITab;
.super Ljava/lang/Object;
.source "ITab.java"

# interfaces
.implements Lcom/dolphin/browser/core/IWebView;


# annotations
.annotation build Lcom/dolphin/browser/annotation/AddonSDK;
.end annotation

.annotation build Lcom/dolphin/browser/annotation/KeepAll;
.end annotation


# static fields
.field public static final LOCK_ICON_MIXED:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LOCK_ICON_SECURE:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LOCK_ICON_UNSECURE:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SECURE_STATUS_MIXED:I = 0x2

.field public static final SECURE_STATUS_NON_HTTP:I = -0x1

.field public static final SECURE_STATUS_SECURE:I = 0x1

.field public static final SECURE_STATUS_UNKNOWN:I = -0x2

.field public static final SECURE_STATUS_UNSECURE:I = 0x0

.field public static final SECURITY_ICON_NONE:I = 0x0

.field public static final SECURITY_ICON_SAFE:I = 0x2

.field public static final SECURITY_ICON_UNSAFE_MALICIOUS:I = 0x4

.field public static final SECURITY_ICON_UNSAFE_PHISHING:I = 0x3


# virtual methods
.method public abstract addChildTab(Lcom/dolphin/browser/core/ITab;)V
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation
.end method

.method public abstract canStateUndo()Z
.end method

.method public abstract canUndo()Z
.end method

.method public abstract clearContentAndHistory()V
.end method

.method public abstract clearInLoad()V
.end method

.method public abstract clearPageData()V
.end method

.method public abstract closeOnExit()Z
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation
.end method

.method public abstract containsView(Landroid/view/View;)Z
.end method

.method public abstract containsWebView(Lcom/dolphin/browser/core/IWebView;)Z
.end method

.method public abstract getChildTabs()Ljava/util/Vector;
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Lcom/dolphin/browser/core/ITab;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getData(I)Ljava/lang/Object;
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation
.end method

.method public abstract getFakeProgress()I
.end method

.method public abstract getFirstChildTab()Lcom/dolphin/browser/core/ITab;
.end method

.method public abstract getFlatHistoryCount()I
.end method

.method public abstract getFlatHistoryIndex()I
.end method

.method public abstract getLastChildTab()Lcom/dolphin/browser/core/ITab;
.end method

.method public abstract getLastGameModeUrl()Ljava/lang/String;
.end method

.method public abstract getLastVideoModeUrl()Ljava/lang/String;
.end method

.method public abstract getLeftSiblingTab()Lcom/dolphin/browser/core/ITab;
.end method

.method public abstract getLockIconType()I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getMinWebAppModePageIndex()I
.end method

.method public abstract getPageData(I)Ljava/lang/Object;
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation
.end method

.method public abstract getParentTab()Lcom/dolphin/browser/core/ITab;
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation
.end method

.method public abstract getRightSiblingTab()Lcom/dolphin/browser/core/ITab;
.end method

.method public abstract getSSLError()Landroid/net/http/SslError;
.end method

.method public abstract getSavedState()Landroid/os/Bundle;
.end method

.method public abstract getSecureStatus()I
.end method

.method public abstract getSecurityIconType()I
.end method

.method public abstract getType()I
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation
.end method

.method public abstract getWebAppPreviewInfo()Lcom/dolphin/browser/core/bh;
.end method

.method public abstract hasSSLError()Z
.end method

.method public abstract inLoad()Z
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation
.end method

.method public abstract isBackOrForward()Z
.end method

.method public abstract isDeleting()Z
.end method

.method public abstract isGameMode()Z
.end method

.method public abstract isInForeground()Z
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation
.end method

.method public abstract isLoadingReceivedError()Z
.end method

.method public abstract isOpeningContentUrl()Z
.end method

.method public abstract isOpeningInNewTab()Z
.end method

.method public abstract isRecycled()Z
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation
.end method

.method public abstract isTitleReceived()Z
.end method

.method public abstract isVideoMode()Z
.end method

.method public abstract isWebappMode()Z
.end method

.method public abstract needShowSearchEngineTab()Z
.end method

.method public abstract pause()V
.end method

.method public abstract performResume()V
.end method

.method public abstract resetLockIcon(Ljava/lang/String;)V
.end method

.method public abstract restoreState(Landroid/os/Bundle;)Z
.end method

.method public abstract revertLockIcon()V
.end method

.method public abstract saveState()Z
.end method

.method public abstract setBottomBar(Landroid/view/View;)V
.end method

.method public abstract setCloseOnExit(Z)V
.end method

.method public abstract setData(ILjava/lang/Object;)V
.end method

.method public abstract setGameMode(Z)V
.end method

.method public abstract setIsBackOrForward(Z)V
.end method

.method public abstract setIsOpeningContentUrl(Z)V
.end method

.method public abstract setIsOpeningInNewTab(Z)V
.end method

.method public abstract setIsTitleReceived(Z)V
.end method

.method public abstract setLastGameModeUrl(Ljava/lang/String;)V
.end method

.method public abstract setLastVideoModeUrl(Ljava/lang/String;)V
.end method

.method public abstract setLoadingReceivedErrorState(Z)V
.end method

.method public abstract setPageData(ILjava/lang/Object;)V
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation
.end method

.method public abstract setParentTab(Lcom/dolphin/browser/core/ITab;)V
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation
.end method

.method public abstract setSavedState(Landroid/os/Bundle;)V
.end method

.method public abstract setSecurityIconType(I)V
.end method

.method public abstract setShowSearchEngineTabState(Z)V
.end method

.method public abstract setStoppedLoadingByUser(Z)V
.end method

.method public abstract setVideoMode(Z)V
.end method

.method public abstract setWebAppPreviewInfo(Lcom/dolphin/browser/core/bh;)V
.end method

.method public abstract setWebappMode(Z)V
.end method

.method public abstract stoppedLoadingByUser()Z
.end method
