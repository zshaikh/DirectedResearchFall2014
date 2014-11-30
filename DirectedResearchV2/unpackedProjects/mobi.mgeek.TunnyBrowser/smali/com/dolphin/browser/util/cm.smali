.class public Lcom/dolphin/browser/util/cm;
.super Ljava/lang/Object;
.source "StorageUtil.java"


# static fields
.field private static final a:Z

.field private static b:Ljava/lang/reflect/Method;

.field private static c:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 34
    :try_start_0
    const-class v2, Landroid/os/Environment;

    .line 35
    const-string v3, "getPhoneStorageDirectory"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lcom/dolphin/browser/util/cm;->c:Ljava/lang/reflect/Method;

    .line 36
    sget-object v3, Lcom/dolphin/browser/util/cm;->c:Ljava/lang/reflect/Method;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 38
    const-string v3, "getPhoneStorageState"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/dolphin/browser/util/cm;->b:Ljava/lang/reflect/Method;

    .line 39
    sget-object v2, Lcom/dolphin/browser/util/cm;->b:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    :goto_0
    sput-boolean v0, Lcom/dolphin/browser/util/cm;->a:Z

    .line 45
    return-void

    .line 41
    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0
.end method

.method public static a()Ljava/io/File;
    .locals 2

    .prologue
    .line 53
    const-string v0, "removed"

    invoke-static {}, Lcom/dolphin/browser/util/cm;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 55
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 69
    :goto_0
    return-object v0

    .line 59
    :cond_0
    sget-boolean v0, Lcom/dolphin/browser/util/cm;->a:Z

    if-eqz v0, :cond_1

    .line 61
    invoke-static {}, Lcom/dolphin/browser/util/cm;->e()Ljava/io/File;

    move-result-object v0

    goto :goto_0

    .line 65
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 77
    const-string v0, "removed"

    .line 78
    sget-boolean v0, Lcom/dolphin/browser/util/cm;->a:Z

    if-eqz v0, :cond_1

    .line 79
    const-string v0, "removed"

    invoke-static {}, Lcom/dolphin/browser/util/cm;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    invoke-static {}, Lcom/dolphin/browser/util/cm;->d()Ljava/lang/String;

    move-result-object v0

    .line 89
    :goto_0
    return-object v0

    .line 83
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 87
    :cond_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static d()Ljava/lang/String;
    .locals 3

    .prologue
    .line 98
    :try_start_0
    sget-boolean v0, Lcom/dolphin/browser/util/cm;->a:Z

    if-eqz v0, :cond_0

    .line 99
    sget-object v0, Lcom/dolphin/browser/util/cm;->b:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    :goto_0
    return-object v0

    .line 101
    :catch_0
    move-exception v0

    .line 102
    const-string v1, "StorageUtil"

    invoke-static {v1, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 104
    :cond_0
    const-string v0, "removed"

    goto :goto_0
.end method

.method private static e()Ljava/io/File;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 109
    :try_start_0
    sget-boolean v0, Lcom/dolphin/browser/util/cm;->a:Z

    if-eqz v0, :cond_0

    .line 110
    sget-object v0, Lcom/dolphin/browser/util/cm;->c:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :goto_0
    return-object v0

    .line 112
    :catch_0
    move-exception v0

    .line 113
    const-string v2, "StorageUtil"

    invoke-static {v2, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    move-object v0, v1

    .line 115
    goto :goto_0
.end method
