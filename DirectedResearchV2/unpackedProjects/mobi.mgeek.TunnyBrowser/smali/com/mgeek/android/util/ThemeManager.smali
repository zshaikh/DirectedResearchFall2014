.class public Lcom/mgeek/android/util/ThemeManager;
.super Ljava/util/Observable;
.source "ThemeManager.java"


# annotations
.annotation build Lcom/dolphin/browser/annotation/AddonSDK;
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static a:Lcom/mgeek/android/util/ThemeManager;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    .line 11
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/mgeek/android/util/ThemeManager;
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 21
    sget-object v0, Lcom/mgeek/android/util/ThemeManager;->a:Lcom/mgeek/android/util/ThemeManager;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Lcom/mgeek/android/util/ThemeManager;

    invoke-direct {v0, p0}, Lcom/mgeek/android/util/ThemeManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/mgeek/android/util/ThemeManager;->a:Lcom/mgeek/android/util/ThemeManager;

    .line 24
    :cond_0
    sget-object v0, Lcom/mgeek/android/util/ThemeManager;->a:Lcom/mgeek/android/util/ThemeManager;

    return-object v0
.end method


# virtual methods
.method public getCurrentTheme()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 34
    const-string v0, ""

    return-object v0
.end method

.method public resetTheme()V
    .locals 0
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 43
    return-void
.end method

.method public setTheme(Ljava/lang/String;)Z
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public switchToNextTheme()V
    .locals 0
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 72
    return-void
.end method

.method public switchToPrevTheme()V
    .locals 0
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 91
    return-void
.end method
