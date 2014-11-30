.class Lmobi/mgeek/TunnyBrowser/de;
.super Ljava/lang/Object;
.source "DeferredTaskManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lmobi/mgeek/TunnyBrowser/dd;


# direct methods
.method constructor <init>(Lmobi/mgeek/TunnyBrowser/dd;)V
    .locals 0

    .prologue
    .line 222
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/de;->a:Lmobi/mgeek/TunnyBrowser/dd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 227
    invoke-static {}, Lcom/dolphin/browser/update/f;->a()Lcom/dolphin/browser/update/f;

    move-result-object v0

    .line 229
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/de;->a:Lmobi/mgeek/TunnyBrowser/dd;

    iget-object v1, v1, Lmobi/mgeek/TunnyBrowser/dd;->c:Lmobi/mgeek/TunnyBrowser/cz;

    invoke-static {v1}, Lmobi/mgeek/TunnyBrowser/cz;->c(Lmobi/mgeek/TunnyBrowser/cz;)Lcom/dolphin/browser/update/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/update/f;->a(Lcom/dolphin/browser/update/g;)V

    .line 230
    return-void
.end method
