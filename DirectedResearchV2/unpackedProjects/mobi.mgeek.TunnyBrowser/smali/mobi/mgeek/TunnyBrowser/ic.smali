.class Lmobi/mgeek/TunnyBrowser/ic;
.super Lcom/dolphin/browser/util/f;
.source "WebViewCallbackHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dolphin/browser/util/f",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/dolphin/browser/core/ITab;

.field final synthetic b:Lmobi/mgeek/TunnyBrowser/ib;


# direct methods
.method constructor <init>(Lmobi/mgeek/TunnyBrowser/ib;Lcom/dolphin/browser/core/ITab;)V
    .locals 0

    .prologue
    .line 260
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/ic;->b:Lmobi/mgeek/TunnyBrowser/ib;

    iput-object p2, p0, Lmobi/mgeek/TunnyBrowser/ic;->a:Lcom/dolphin/browser/core/ITab;

    invoke-direct {p0}, Lcom/dolphin/browser/util/f;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 260
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lmobi/mgeek/TunnyBrowser/ic;->a([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs a([Ljava/lang/String;)Ljava/lang/Void;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 265
    invoke-static {}, Lcom/dolphin/browser/util/dk;->a()Lcom/dolphin/browser/util/dk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/util/dk;->f()V

    .line 268
    if-eqz p1, :cond_1

    array-length v0, p1

    if-lez v0, :cond_1

    .line 269
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/ic;->a:Lcom/dolphin/browser/core/ITab;

    invoke-interface {v0}, Lcom/dolphin/browser/core/ITab;->isBackOrForward()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 270
    aget-object v0, p1, v2

    invoke-static {v0}, Lcom/dolphin/browser/search/e/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "blank"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 272
    invoke-static {}, Lcom/dolphin/browser/search/e/a;->a()Lcom/dolphin/browser/search/e/a;

    move-result-object v0

    const-string v1, "forward_back_refresh"

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/search/e/a;->a(Ljava/lang/String;)V

    .line 276
    :cond_0
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/ic;->b:Lmobi/mgeek/TunnyBrowser/ib;

    aget-object v1, p1, v2

    invoke-static {v0, v1}, Lmobi/mgeek/TunnyBrowser/ib;->a(Lmobi/mgeek/TunnyBrowser/ib;Ljava/lang/String;)V

    .line 277
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/ic;->b:Lmobi/mgeek/TunnyBrowser/ib;

    aget-object v1, p1, v2

    invoke-static {v0, v1}, Lmobi/mgeek/TunnyBrowser/ib;->b(Lmobi/mgeek/TunnyBrowser/ib;Ljava/lang/String;)V

    .line 280
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method
