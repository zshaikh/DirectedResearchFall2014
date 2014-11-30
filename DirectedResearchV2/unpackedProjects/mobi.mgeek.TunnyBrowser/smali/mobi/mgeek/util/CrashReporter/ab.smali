.class Lmobi/mgeek/util/CrashReporter/ab;
.super Lcom/dolphin/browser/util/f;
.source "NativeCrashStateHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dolphin/browser/util/f",
        "<",
        "Landroid/os/Bundle;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lmobi/mgeek/util/CrashReporter/z;


# direct methods
.method private constructor <init>(Lmobi/mgeek/util/CrashReporter/z;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lmobi/mgeek/util/CrashReporter/ab;->a:Lmobi/mgeek/util/CrashReporter/z;

    invoke-direct {p0}, Lcom/dolphin/browser/util/f;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmobi/mgeek/util/CrashReporter/z;Lmobi/mgeek/util/CrashReporter/aa;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lmobi/mgeek/util/CrashReporter/ab;-><init>(Lmobi/mgeek/util/CrashReporter/z;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 52
    check-cast p1, [Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Lmobi/mgeek/util/CrashReporter/ab;->a([Landroid/os/Bundle;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs a([Landroid/os/Bundle;)Ljava/lang/Void;
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 56
    invoke-virtual {p0}, Lmobi/mgeek/util/CrashReporter/ab;->f()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    .line 76
    :cond_0
    :goto_0
    return-object v2

    .line 60
    :cond_1
    aget-object v0, p1, v1

    .line 61
    if-eqz v0, :cond_0

    .line 67
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-static {}, Lcom/dolphin/browser/core/BrowserSettings;->getInstance()Lcom/dolphin/browser/core/BrowserSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/dolphin/browser/core/BrowserSettings;->getTabStateFile()Ljava/io/File;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    :try_start_1
    invoke-static {v0, v1}, Lcom/dolphin/browser/util/IOUtilities;->a(Landroid/os/Bundle;Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 73
    invoke-static {v1}, Lcom/dolphin/browser/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    goto :goto_0

    .line 70
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 71
    :goto_1
    :try_start_2
    const-string v3, "NativeCrashStateHandler"

    invoke-static {v3, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 73
    invoke-static {v1}, Lcom/dolphin/browser/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_2
    invoke-static {v2}, Lcom/dolphin/browser/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_2

    .line 70
    :catch_1
    move-exception v0

    goto :goto_1
.end method
