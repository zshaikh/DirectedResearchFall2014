.class Lmobi/mgeek/TunnyBrowser/t;
.super Ljava/lang/Object;
.source "Browser.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field final synthetic a:Ljava/lang/Thread$UncaughtExceptionHandler;

.field final synthetic b:Lmobi/mgeek/TunnyBrowser/Browser;


# direct methods
.method constructor <init>(Lmobi/mgeek/TunnyBrowser/Browser;Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .locals 0

    .prologue
    .line 543
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/t;->b:Lmobi/mgeek/TunnyBrowser/Browser;

    iput-object p2, p0, Lmobi/mgeek/TunnyBrowser/t;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 546
    invoke-static {p2}, Lcom/dolphin/browser/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 547
    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "webviewcorethread"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 548
    new-instance v1, Lmobi/mgeek/TunnyBrowser/u;

    invoke-direct {v1, p0, v0}, Lmobi/mgeek/TunnyBrowser/u;-><init>(Lmobi/mgeek/TunnyBrowser/t;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/dolphin/browser/util/df;->a(Ljava/lang/Runnable;)V

    .line 557
    :goto_0
    return-void

    .line 555
    :cond_0
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/t;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
