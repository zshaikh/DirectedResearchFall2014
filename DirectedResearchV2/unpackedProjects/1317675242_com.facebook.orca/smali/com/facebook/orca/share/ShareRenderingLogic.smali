.class public Lcom/facebook/orca/share/ShareRenderingLogic;
.super Ljava/lang/Object;
.source "ShareRenderingLogic.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/orca/threads/Message;)Lcom/facebook/orca/share/Share;
    .locals 2

    .prologue
    .line 16
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->i()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 17
    const/4 v0, 0x0

    .line 20
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->i()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/facebook/orca/share/Share;

    move-object v0, p0

    goto :goto_0
.end method

.method public a(Lcom/facebook/orca/share/Share;)Lcom/facebook/orca/share/ShareMedia;
    .locals 3

    .prologue
    .line 24
    invoke-virtual {p1}, Lcom/facebook/orca/share/Share;->d()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/facebook/orca/share/ShareMedia;

    .line 25
    const-string v1, "link"

    invoke-virtual {p0}, Lcom/facebook/orca/share/ShareMedia;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v0, p0

    .line 33
    :goto_0
    return-object v0

    .line 27
    :cond_1
    const-string v1, "photo"

    invoke-virtual {p0}, Lcom/facebook/orca/share/ShareMedia;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v0, p0

    .line 28
    goto :goto_0

    .line 29
    :cond_2
    const-string v1, "video"

    invoke-virtual {p0}, Lcom/facebook/orca/share/ShareMedia;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v0, p0

    .line 30
    goto :goto_0

    .line 33
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method
