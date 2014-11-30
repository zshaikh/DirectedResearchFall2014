.class Lmobi/mgeek/TunnyBrowser/bi;
.super Ljava/lang/Object;
.source "BrowserActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;


# direct methods
.method constructor <init>(Lmobi/mgeek/TunnyBrowser/BrowserActivity;)V
    .locals 0

    .prologue
    .line 855
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/bi;->a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 861
    :try_start_0
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/bi;->a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-static {v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->n(Lmobi/mgeek/TunnyBrowser/BrowserActivity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 864
    :goto_0
    return-void

    .line 862
    :catch_0
    move-exception v0

    goto :goto_0
.end method
