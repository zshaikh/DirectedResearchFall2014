.class Ldolphin/webkit/iw;
.super Ldolphin/webkit/WebBackForwardListClient;
.source "WebViewClassic.java"


# instance fields
.field a:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ldolphin/webkit/WebBackForwardListClient;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic b:Ldolphin/webkit/WebViewClassic;


# direct methods
.method private constructor <init>(Ldolphin/webkit/WebViewClassic;)V
    .locals 1

    .prologue
    .line 1498
    iput-object p1, p0, Ldolphin/webkit/iw;->b:Ldolphin/webkit/WebViewClassic;

    invoke-direct {p0}, Ldolphin/webkit/WebBackForwardListClient;-><init>()V

    .line 1500
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Ldolphin/webkit/iw;->a:Ljava/util/Vector;

    return-void
.end method

.method synthetic constructor <init>(Ldolphin/webkit/WebViewClassic;Ldolphin/webkit/ic;)V
    .locals 0

    .prologue
    .line 1498
    invoke-direct {p0, p1}, Ldolphin/webkit/iw;-><init>(Ldolphin/webkit/WebViewClassic;)V

    return-void
.end method

.method private a()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Ldolphin/webkit/WebBackForwardListClient;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1521
    iget-object v0, p0, Ldolphin/webkit/iw;->a:Ljava/util/Vector;

    return-object v0
.end method


# virtual methods
.method public a(Ldolphin/webkit/WebBackForwardListClient;)V
    .locals 1

    .prologue
    .line 1503
    instance-of v0, p1, Ldolphin/webkit/iw;

    if-eqz v0, :cond_1

    .line 1504
    check-cast p1, Ldolphin/webkit/iw;

    invoke-virtual {p0, p1}, Ldolphin/webkit/iw;->a(Ldolphin/webkit/iw;)V

    .line 1511
    :cond_0
    :goto_0
    return-void

    .line 1508
    :cond_1
    iget-object v0, p0, Ldolphin/webkit/iw;->a:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1510
    iget-object v0, p0, Ldolphin/webkit/iw;->a:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public a(Ldolphin/webkit/iw;)V
    .locals 2

    .prologue
    .line 1514
    invoke-direct {p1}, Ldolphin/webkit/iw;->a()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldolphin/webkit/WebBackForwardListClient;

    .line 1515
    invoke-virtual {p0, v0}, Ldolphin/webkit/iw;->a(Ldolphin/webkit/WebBackForwardListClient;)V

    goto :goto_0

    .line 1518
    :cond_0
    return-void
.end method

.method public onIndexChanged(Ldolphin/webkit/WebHistoryItem;I)V
    .locals 2

    .prologue
    .line 1531
    iget-object v0, p0, Ldolphin/webkit/iw;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldolphin/webkit/WebBackForwardListClient;

    .line 1532
    invoke-virtual {v0, p1, p2}, Ldolphin/webkit/WebBackForwardListClient;->onIndexChanged(Ldolphin/webkit/WebHistoryItem;I)V

    goto :goto_0

    .line 1534
    :cond_0
    return-void
.end method

.method public onNewHistoryItem(Ldolphin/webkit/WebHistoryItem;)V
    .locals 2

    .prologue
    .line 1525
    iget-object v0, p0, Ldolphin/webkit/iw;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldolphin/webkit/WebBackForwardListClient;

    .line 1526
    invoke-virtual {v0, p1}, Ldolphin/webkit/WebBackForwardListClient;->onNewHistoryItem(Ldolphin/webkit/WebHistoryItem;)V

    goto :goto_0

    .line 1528
    :cond_0
    return-void
.end method

.method public onNewPrereadItem(Ldolphin/webkit/WebHistoryItem;)V
    .locals 2

    .prologue
    .line 1537
    iget-object v0, p0, Ldolphin/webkit/iw;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldolphin/webkit/WebBackForwardListClient;

    .line 1538
    invoke-virtual {v0, p1}, Ldolphin/webkit/WebBackForwardListClient;->onNewPrereadItem(Ldolphin/webkit/WebHistoryItem;)V

    goto :goto_0

    .line 1540
    :cond_0
    return-void
.end method

.method public prereadItemStatusChanged(Ldolphin/webkit/WebHistoryItem;)V
    .locals 2

    .prologue
    .line 1543
    iget-object v0, p0, Ldolphin/webkit/iw;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldolphin/webkit/WebBackForwardListClient;

    .line 1544
    invoke-virtual {v0, p1}, Ldolphin/webkit/WebBackForwardListClient;->prereadItemStatusChanged(Ldolphin/webkit/WebHistoryItem;)V

    goto :goto_0

    .line 1546
    :cond_0
    return-void
.end method
