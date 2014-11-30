.class Lmobi/mgeek/TunnyBrowser/dn;
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
    .line 303
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/dn;->a:Lmobi/mgeek/TunnyBrowser/cz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 308
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/b;->a()Lmobi/mgeek/TunnyBrowser/b;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/b;->c()V

    .line 309
    return-void
.end method
