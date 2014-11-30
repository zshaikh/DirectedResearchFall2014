.class Lmobi/mgeek/TunnyBrowser/dr;
.super Ljava/lang/Object;
.source "DeferredTaskManager.java"

# interfaces
.implements Lcom/dolphin/browser/update/g;


# instance fields
.field final synthetic a:Lmobi/mgeek/TunnyBrowser/cz;


# direct methods
.method constructor <init>(Lmobi/mgeek/TunnyBrowser/cz;)V
    .locals 0

    .prologue
    .line 341
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/dr;->a:Lmobi/mgeek/TunnyBrowser/cz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 363
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/update/model/UpdateInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 346
    invoke-static {}, Lcom/dolphin/browser/update/f;->a()Lcom/dolphin/browser/update/f;

    move-result-object v0

    .line 347
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 348
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/update/f;->a(Z)V

    .line 358
    :cond_1
    :goto_0
    return-void

    .line 351
    :cond_2
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/update/f;->a(Z)V

    .line 353
    new-instance v0, Lcom/dolphin/browser/update/model/b;

    invoke-direct {v0, p1}, Lcom/dolphin/browser/update/model/b;-><init>(Ljava/util/List;)V

    .line 354
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    move-result-object v1

    .line 355
    if-eqz v1, :cond_1

    .line 356
    invoke-virtual {v1, v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->a(Lcom/dolphin/browser/update/model/b;)V

    goto :goto_0
.end method
