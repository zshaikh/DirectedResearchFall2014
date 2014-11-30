.class Lmobi/mgeek/TunnyBrowser/di;
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
    .line 265
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/di;->a:Lmobi/mgeek/TunnyBrowser/cz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 270
    invoke-static {}, Lcom/dolphin/browser/mostvisit/b;->a()Lcom/dolphin/browser/mostvisit/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/mostvisit/b;->e()V

    .line 271
    return-void
.end method
