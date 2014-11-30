.class public Lcom/dolphin/browser/extension/AdBlockAddon;
.super Ljava/lang/Object;
.source "AdBlockAddon.java"

# interfaces
.implements Lcom/dolphin/browser/extensions/IAddonBarExtention;
.implements Lcom/dolphin/browser/extensions/IBaseExtension;
.implements Lcom/dolphin/browser/extensions/x;


# annotations
.annotation build Lcom/dolphin/browser/annotation/KeepAll;
.end annotation


# static fields
.field private static final ADBLOCK_ADDON_DOWNLOAD_URI:Ljava/lang/String; = "market://details?id=com.NeedForSpeed.ToolKit.AdBlock"


# instance fields
.field private final mAdBlockAddonHandler:Lcom/dolphin/browser/extensions/av;

.field private mContext:Landroid/content/Context;

.field private mObserver:Ljava/util/Observer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lcom/dolphin/browser/extension/a;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/extension/a;-><init>(Lcom/dolphin/browser/extension/AdBlockAddon;)V

    iput-object v0, p0, Lcom/dolphin/browser/extension/AdBlockAddon;->mAdBlockAddonHandler:Lcom/dolphin/browser/extensions/av;

    .line 53
    new-instance v0, Lcom/dolphin/browser/extension/b;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/extension/b;-><init>(Lcom/dolphin/browser/extension/AdBlockAddon;)V

    iput-object v0, p0, Lcom/dolphin/browser/extension/AdBlockAddon;->mObserver:Ljava/util/Observer;

    .line 63
    iput-object p1, p0, Lcom/dolphin/browser/extension/AdBlockAddon;->mContext:Landroid/content/Context;

    .line 64
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/extension/AdBlockAddon;->mObserver:Ljava/util/Observer;

    invoke-virtual {v0, v1}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->addObserver(Ljava/util/Observer;)V

    .line 65
    invoke-static {}, Lcom/dolphin/browser/extensions/al;->a()Lcom/dolphin/browser/extensions/al;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/extension/AdBlockAddon;->mAdBlockAddonHandler:Lcom/dolphin/browser/extensions/av;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/al;->a(Lcom/dolphin/browser/extensions/av;)V

    .line 66
    return-void
.end method

.method static synthetic access$000(Lcom/dolphin/browser/extension/AdBlockAddon;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/dolphin/browser/extension/AdBlockAddon;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public getAddonBarIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 77
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v1, 0x7f02015e

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getAddonBarTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/dolphin/browser/extension/AdBlockAddon;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e002a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAddonState()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    return-object v0
.end method

.method public getExtensionDescription()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 166
    iget-object v0, p0, Lcom/dolphin/browser/extension/AdBlockAddon;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e0024

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExtensionIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 172
    iget-object v0, p0, Lcom/dolphin/browser/extension/AdBlockAddon;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v1, 0x7f02015b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getExtensionTitle()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/dolphin/browser/extension/AdBlockAddon;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e002a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getState()I
    .locals 3

    .prologue
    .line 83
    invoke-static {}, Lcom/dolphin/browser/core/WebViewFactory;->isUsingDolphinWebkit()Z

    move-result v0

    .line 84
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getAdBlockEnabled()Z

    move-result v1

    .line 86
    iget-object v2, p0, Lcom/dolphin/browser/extension/AdBlockAddon;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/mgeek/android/util/a;->a(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 87
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 88
    const/4 v0, 0x2

    .line 93
    :goto_0
    return v0

    .line 90
    :cond_0
    const/4 v0, 0x3

    goto :goto_0

    .line 93
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onAddonClick(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 100
    move-object v0, p1

    check-cast v0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    .line 102
    invoke-static {p1}, Lcom/mgeek/android/util/a;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 103
    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->actionToggleAdBlock()Z

    .line 120
    :goto_0
    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getTopWindow()Landroid/webkit/MyWebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/MyWebView;->reload()V

    .line 121
    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getTabControl()Lmobi/mgeek/TunnyBrowser/TabControl;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/mgeek/TunnyBrowser/TabControl;->getCurrentWebView()Landroid/webkit/MyWebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/MyWebView;->getOriginalUrl()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->loadUrl(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 123
    return-void

    .line 105
    :cond_0
    invoke-static {}, Lcom/dolphin/browser/ui/x;->a()Lcom/dolphin/browser/ui/x;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/dolphin/browser/ui/x;->a(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e0026

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e0025

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e018f

    new-instance v3, Lcom/dolphin/browser/extension/c;

    invoke-direct {v3, p0, p1}, Lcom/dolphin/browser/extension/c;-><init>(Lcom/dolphin/browser/extension/AdBlockAddon;Landroid/content/Context;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1040009

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method public onCreateHandler()V
    .locals 0

    .prologue
    .line 145
    return-void
.end method

.method public onDisable()V
    .locals 0

    .prologue
    .line 155
    return-void
.end method

.method public onEnable()V
    .locals 0

    .prologue
    .line 150
    return-void
.end method

.method public onExtensionClick(Landroid/content/Context;)Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 178
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/dolphin/browser/extension/AdBlockAddon;->mContext:Landroid/content/Context;

    const-class v2, Lcom/dolphin/browser/extension/ui/AddonAboutActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 179
    const-string v1, "extra_icon"

    iget-object v2, p0, Lcom/dolphin/browser/extension/AdBlockAddon;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v3, 0x7f0e0027

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 181
    const-string v1, "extra_title"

    iget-object v2, p0, Lcom/dolphin/browser/extension/AdBlockAddon;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v3, 0x7f0e002a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 183
    const-string v1, "extra_message"

    iget-object v2, p0, Lcom/dolphin/browser/extension/AdBlockAddon;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v3, 0x7f0e0023

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 185
    invoke-static {p1}, Lcom/mgeek/android/util/a;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 186
    const-string v1, "extra_show_download"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 187
    const-string v1, "extra_download_uri"

    const-string v2, "market://details?id=com.NeedForSpeed.ToolKit.AdBlock"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 189
    :cond_0
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 190
    iget-object v1, p0, Lcom/dolphin/browser/extension/AdBlockAddon;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 192
    return v4
.end method

.method public refreshConfig()V
    .locals 0

    .prologue
    .line 140
    return-void
.end method

.method public wantToShowInAddonBar()Z
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/dolphin/browser/extension/AdBlockAddon;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mgeek/android/util/a;->a(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method
