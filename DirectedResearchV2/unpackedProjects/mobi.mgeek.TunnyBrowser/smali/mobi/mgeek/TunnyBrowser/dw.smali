.class Lmobi/mgeek/TunnyBrowser/dw;
.super Ljava/lang/Object;
.source "DeferredTaskManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lmobi/mgeek/TunnyBrowser/dv;


# direct methods
.method constructor <init>(Lmobi/mgeek/TunnyBrowser/dv;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/dw;->a:Lmobi/mgeek/TunnyBrowser/dv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/dw;->a:Lmobi/mgeek/TunnyBrowser/dv;

    iget-object v0, v0, Lmobi/mgeek/TunnyBrowser/dv;->a:Lmobi/mgeek/TunnyBrowser/cz;

    invoke-static {v0}, Lmobi/mgeek/TunnyBrowser/cz;->a(Lmobi/mgeek/TunnyBrowser/cz;)V

    .line 115
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/dw;->a:Lmobi/mgeek/TunnyBrowser/dv;

    iget-object v0, v0, Lmobi/mgeek/TunnyBrowser/dv;->a:Lmobi/mgeek/TunnyBrowser/cz;

    invoke-static {v0}, Lmobi/mgeek/TunnyBrowser/cz;->b(Lmobi/mgeek/TunnyBrowser/cz;)V

    .line 116
    return-void
.end method
