.class public abstract Lmobi/mgeek/TunnyBrowser/extensions/AbstractExtension;
.super Landroid/content/ContextWrapper;
.source "AbstractExtension.java"

# interfaces
.implements Lmobi/mgeek/TunnyBrowser/extensions/IExtension;


# annotations
.annotation build Lcom/dolphin/browser/annotation/AddonSDK;
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 29
    return-void
.end method


# virtual methods
.method public getAddonBarIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 97
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAddonBarTitle(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 102
    const/4 v0, 0x0

    return-object v0
.end method

.method public handleTextSelectionOption(Ljava/lang/String;)V
    .locals 0
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 129
    return-void
.end method

.method public onAddonClick(Lmobi/mgeek/TunnyBrowser/BrowserActivity;)I
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 85
    const/4 v0, 0x0

    return v0
.end method

.method public onContextItemSelected(Landroid/webkit/WebView;Landroid/view/MenuItem;)Z
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 71
    const/4 v0, 0x0

    return v0
.end method

.method public onCreateAddonDialog(Landroid/webkit/WebView;Landroid/app/AlertDialog$Builder;)Landroid/app/Dialog;
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 107
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateContextMenu(Landroid/webkit/WebView;Landroid/webkit/WebView$HitTestResult;Landroid/view/ContextMenu;)Z
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method public onCreateHandler()V
    .locals 0
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 112
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/webkit/WebView;Landroid/view/Menu;)Z
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 50
    const/4 v0, 0x0

    return v0
.end method

.method public onDisable()V
    .locals 0
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 120
    return-void
.end method

.method public onDownloadStart(Lmobi/mgeek/TunnyBrowser/BrowserActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 135
    const/4 v0, 0x0

    return v0
.end method

.method public onEnable()V
    .locals 0
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 116
    return-void
.end method

.method public onOptionsItemSelected(Landroid/webkit/WebView;Landroid/view/MenuItem;)Z
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 60
    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .locals 0
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 146
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/webkit/WebView;Landroid/view/Menu;)Z
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method public onResume()V
    .locals 0
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 141
    return-void
.end method

.method public postOnPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 34
    return-void
.end method

.method public postOnReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 46
    return-void
.end method

.method public postOnUpdateWebSettings(Landroid/webkit/WebSettings;Landroid/webkit/WebView;)V
    .locals 0
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 80
    return-void
.end method

.method public preOnReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 40
    const/4 v0, 0x0

    return v0
.end method

.method public refreshConfig(Landroid/content/Context;)V
    .locals 0
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 76
    return-void
.end method

.method public wantToShowInAddonBar(Landroid/content/Context;)Z
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 91
    const/4 v0, 0x0

    return v0
.end method

.method public wantToShowOptionForTextSelection()Z
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 124
    const/4 v0, 0x0

    return v0
.end method
