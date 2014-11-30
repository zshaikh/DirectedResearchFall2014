.class Lmobi/mgeek/TunnyBrowser/dl;
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
    .line 294
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/dl;->a:Lmobi/mgeek/TunnyBrowser/cz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 299
    invoke-static {}, Lcom/dolphin/browser/search/f/e;->a()Lcom/dolphin/browser/search/f/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/search/f/e;->b()V

    .line 300
    return-void
.end method
