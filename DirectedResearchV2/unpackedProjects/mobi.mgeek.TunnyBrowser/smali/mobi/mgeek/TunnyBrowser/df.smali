.class Lmobi/mgeek/TunnyBrowser/df;
.super Ljava/lang/Object;
.source "DeferredTaskManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lmobi/mgeek/TunnyBrowser/cz;


# direct methods
.method constructor <init>(Lmobi/mgeek/TunnyBrowser/cz;)V
    .locals 0

    .prologue
    .line 237
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/df;->a:Lmobi/mgeek/TunnyBrowser/cz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/df;->a:Lmobi/mgeek/TunnyBrowser/cz;

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/cz;->b()V

    .line 243
    return-void
.end method
