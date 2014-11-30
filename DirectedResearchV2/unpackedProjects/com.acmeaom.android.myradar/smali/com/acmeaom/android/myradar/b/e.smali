.class public Lcom/acmeaom/android/myradar/b/e;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field private static a:Ljava/lang/Boolean;


# direct methods
.method public static a()Z
    .locals 3

    .prologue
    .line 16
    sget-object v0, Lcom/acmeaom/android/myradar/b/e;->a:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/acmeaom/android/myradar/b/e;->a:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 29
    :goto_0
    return v0

    .line 18
    :cond_0
    sget-object v0, Lcom/acmeaom/android/myradar/app/MyRadarApplication;->a:Landroid/content/Context;

    .line 19
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 22
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x80

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 23
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 24
    const-string v1, "debug_features"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 25
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/acmeaom/android/myradar/b/e;->a:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 26
    :catch_0
    move-exception v0

    .line 27
    invoke-static {v0}, Lcom/acmeaom/android/myradar/b/a;->a(Ljava/lang/Throwable;)V

    .line 29
    const/4 v0, 0x0

    goto :goto_0
.end method
