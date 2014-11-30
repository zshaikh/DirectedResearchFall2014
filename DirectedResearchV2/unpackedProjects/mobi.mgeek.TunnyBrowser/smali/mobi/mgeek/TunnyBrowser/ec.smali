.class Lmobi/mgeek/TunnyBrowser/ec;
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
    .line 175
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/ec;->a:Lmobi/mgeek/TunnyBrowser/cz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 180
    invoke-static {}, Lcom/dolphin/browser/i/b;->a()Lcom/dolphin/browser/i/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/i/b;->k()V

    .line 181
    return-void
.end method
