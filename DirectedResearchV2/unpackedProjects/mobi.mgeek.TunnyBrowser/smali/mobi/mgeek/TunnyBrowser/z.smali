.class Lmobi/mgeek/TunnyBrowser/z;
.super Ljava/lang/Object;
.source "BrowserActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lmobi/mgeek/TunnyBrowser/x;


# direct methods
.method constructor <init>(Lmobi/mgeek/TunnyBrowser/x;)V
    .locals 0

    .prologue
    .line 431
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/z;->a:Lmobi/mgeek/TunnyBrowser/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 438
    const-string v0, "BrowserActivity"

    const-string v1, "Startup completed"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    const-string v0, "App Start, init in main thread"

    invoke-static {v0}, Lcom/dolphin/browser/util/cw;->a(Ljava/lang/String;)J

    .line 440
    const-string v0, "App Start, stage two: init data and view in BrowserActivity"

    invoke-static {v0}, Lcom/dolphin/browser/util/cw;->a(Ljava/lang/String;)J

    .line 441
    const-string v0, "App Start"

    invoke-static {v0}, Lcom/dolphin/browser/util/cw;->a(Ljava/lang/String;)J

    .line 442
    return-void
.end method
