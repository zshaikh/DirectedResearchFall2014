.class Lmobi/mgeek/TunnyBrowser/hr;
.super Lcom/dolphin/browser/util/f;
.source "UpgradeManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dolphin/browser/util/f",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

.field final synthetic b:Lmobi/mgeek/TunnyBrowser/hq;


# direct methods
.method constructor <init>(Lmobi/mgeek/TunnyBrowser/hq;Lmobi/mgeek/TunnyBrowser/BrowserActivity;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/hr;->b:Lmobi/mgeek/TunnyBrowser/hq;

    iput-object p2, p0, Lmobi/mgeek/TunnyBrowser/hr;->a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-direct {p0}, Lcom/dolphin/browser/util/f;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 90
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lmobi/mgeek/TunnyBrowser/hr;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4

    .prologue
    .line 97
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/hr;->a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-virtual {v1}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "/speed_dial"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 99
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lmobi/mgeek/TunnyBrowser/hr;->a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-virtual {v2}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    const-string v3, "/files/speed_dial"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 104
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->b(Ljava/lang/String;)V

    .line 105
    invoke-static {v0, v1}, Lcom/dolphin/browser/util/IOUtilities;->a(Ljava/io/File;Ljava/io/File;)V

    .line 106
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->b(Ljava/lang/String;)V

    .line 108
    invoke-static {}, Lcom/dolphin/browser/provider/y;->a()Lcom/dolphin/browser/provider/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/provider/y;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 111
    :catch_0
    move-exception v0

    .line 112
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_0
.end method
