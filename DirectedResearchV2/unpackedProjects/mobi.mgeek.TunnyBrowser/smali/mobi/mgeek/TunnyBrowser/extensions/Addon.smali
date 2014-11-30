.class public Lmobi/mgeek/TunnyBrowser/extensions/Addon;
.super Lmobi/mgeek/TunnyBrowser/extensions/DolphinPackage;
.source "Addon.java"


# annotations
.annotation build Lcom/dolphin/browser/annotation/AddonSDK;
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field static final a:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lmobi/mgeek/TunnyBrowser/extensions/Addon;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
    new-instance v0, Lmobi/mgeek/TunnyBrowser/extensions/a;

    invoke-direct {v0}, Lmobi/mgeek/TunnyBrowser/extensions/a;-><init>()V

    sput-object v0, Lmobi/mgeek/TunnyBrowser/extensions/Addon;->a:Ljava/util/Comparator;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lmobi/mgeek/TunnyBrowser/extensions/Addon;->f:I

    return v0
.end method

.method public isEnable()Z
    .locals 2
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 66
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/extensions/Addon;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 67
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/extensions/Addon;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public launch(Landroid/content/Context;)V
    .locals 2
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/extensions/Addon;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 62
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 63
    return-void
.end method
