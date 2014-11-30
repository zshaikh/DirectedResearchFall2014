.class Lmobi/mgeek/TunnyBrowser/dq;
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
    .line 330
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/dq;->a:Lmobi/mgeek/TunnyBrowser/cz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 335
    invoke-static {}, Lcom/dolphin/browser/search/d/b;->a()Lcom/dolphin/browser/search/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/search/d/b;->c()V

    .line 336
    return-void
.end method
