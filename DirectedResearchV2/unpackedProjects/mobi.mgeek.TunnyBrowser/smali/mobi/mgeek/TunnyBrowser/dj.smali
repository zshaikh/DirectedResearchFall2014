.class Lmobi/mgeek/TunnyBrowser/dj;
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
    .line 274
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/dj;->a:Lmobi/mgeek/TunnyBrowser/cz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 279
    invoke-static {}, Lcom/dolphin/browser/push/ab;->a()Lcom/dolphin/browser/push/ab;

    move-result-object v0

    invoke-static {}, Lcom/dolphin/browser/push/w;->a()Lcom/dolphin/browser/push/w;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/push/ab;->addObserver(Ljava/util/Observer;)V

    .line 281
    invoke-static {}, Lcom/dolphin/browser/push/ab;->a()Lcom/dolphin/browser/push/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/push/ab;->c()V

    .line 282
    return-void
.end method
