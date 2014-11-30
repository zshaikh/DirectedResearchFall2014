.class Lmobi/mgeek/TunnyBrowser/da;
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
    .line 82
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/da;->a:Lmobi/mgeek/TunnyBrowser/cz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 85
    invoke-static {}, Lcom/dolphin/browser/s/b;->a()Lcom/dolphin/browser/s/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/s/b;->e()V

    .line 86
    return-void
.end method
