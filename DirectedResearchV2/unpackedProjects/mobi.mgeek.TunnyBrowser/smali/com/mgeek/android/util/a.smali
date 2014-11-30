.class public Lcom/mgeek/android/util/a;
.super Ljava/lang/Object;
.source "AdBlockHelpUtil.java"


# direct methods
.method public static a(Landroid/content/Context;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 16
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 18
    :try_start_0
    const-string v2, "com.NeedForSpeed.ToolKit.AdBlock"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 19
    :catch_0
    move-exception v1

    goto :goto_0
.end method
