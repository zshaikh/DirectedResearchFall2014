.class Lmobi/mgeek/TunnyBrowser/dv;
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
    .line 106
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/dv;->a:Lmobi/mgeek/TunnyBrowser/cz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 111
    new-instance v0, Lmobi/mgeek/TunnyBrowser/dw;

    invoke-direct {v0, p0}, Lmobi/mgeek/TunnyBrowser/dw;-><init>(Lmobi/mgeek/TunnyBrowser/dv;)V

    sget-object v1, Lcom/dolphin/browser/util/t;->a:Lcom/dolphin/browser/util/t;

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/r;->a(Ljava/lang/Runnable;Lcom/dolphin/browser/util/t;)V

    .line 119
    return-void
.end method
