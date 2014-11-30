.class public Lcom/gamesys/android/tools/ane/ConfigChangeManager;
.super Ljava/lang/Object;
.source "ConfigChangeManager.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcom/gamesys/android/tools/ane/ConfigChangeManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gamesys/android/tools/ane/ConfigChangeManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static overrideOnConfigurationChange(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 7
    .param p0, "pkgName"    # Ljava/lang/String;
    .param p1, "appEntryClassName"    # Ljava/lang/String;
    .param p2, "androidContext"    # Landroid/content/Context;

    .prologue
    .line 12
    move-object v0, p1

    .line 13
    .local v0, "activityName":Ljava/lang/String;
    move-object v3, p0

    .line 16
    .local v3, "packageName":Ljava/lang/String;
    if-nez p0, :cond_0

    if-nez p2, :cond_0

    .line 17
    sget-object v4, Lcom/gamesys/android/tools/ane/ConfigChangeManager;->TAG:Ljava/lang/String;

    const-string v5, "Parameter null and Unable to load the current package name"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    :goto_0
    return-void

    .line 21
    :cond_0
    if-nez v3, :cond_1

    .line 22
    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 25
    :cond_1
    if-nez v0, :cond_2

    .line 26
    const-string v0, "AppEntry"

    .line 30
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 32
    .local v1, "className":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 34
    :catch_0
    move-exception v2

    .line 35
    .local v2, "e":Ljava/lang/IllegalStateException;
    sget-object v4, Lcom/gamesys/android/tools/ane/ConfigChangeManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Unable to load the main activity class: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 36
    .end local v2    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v2

    .line 37
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    sget-object v4, Lcom/gamesys/android/tools/ane/ConfigChangeManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Unable to load the main activity class: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
