.class public Lmobi/mgeek/TunnyBrowser/AddonConfig;
.super Ljava/lang/Object;
.source "AddonConfig.java"


# annotations
.annotation build Lcom/dolphin/browser/annotation/KeepAll;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAllExtensionInfo()[Lcom/dolphin/browser/extensions/ExtensionInfo;
    .locals 10

    .prologue
    const v5, 0x7fffffff

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v4, 0x0

    .line 41
    new-array v7, v9, [Lcom/dolphin/browser/extensions/ExtensionInfo;

    new-instance v0, Lcom/dolphin/browser/extensions/ExtensionInfo;

    invoke-static {}, Lcom/dolphin/browser/core/Configuration;->getInstance()Lcom/dolphin/browser/core/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/core/Configuration;->getApplicationName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/dolphin/browser/extension/AdBlockAddon;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    sget-object v6, Lcom/dolphin/browser/extensions/IBaseExtension;->TYPE_NAME:Ljava/lang/String;

    aput-object v6, v3, v4

    const-string v6, "IAddonBarExtention"

    aput-object v6, v3, v8

    sget-object v6, Lcom/dolphin/browser/extensions/x;->a:Ljava/lang/String;

    aput-object v6, v3, v9

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/dolphin/browser/extensions/ExtensionInfo;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;IIZ)V

    aput-object v0, v7, v4

    new-instance v0, Lcom/dolphin/browser/extensions/ExtensionInfo;

    invoke-static {}, Lcom/dolphin/browser/core/Configuration;->getInstance()Lcom/dolphin/browser/core/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/core/Configuration;->getApplicationName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/dolphin/browser/extension/QuickInstaller;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-array v3, v8, [Ljava/lang/String;

    sget-object v6, Lcom/dolphin/browser/extensions/IBrowserExtension;->TYPE_NAME:Ljava/lang/String;

    aput-object v6, v3, v4

    move v6, v8

    invoke-direct/range {v0 .. v6}, Lcom/dolphin/browser/extensions/ExtensionInfo;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;IIZ)V

    aput-object v0, v7, v8

    return-object v7
.end method
