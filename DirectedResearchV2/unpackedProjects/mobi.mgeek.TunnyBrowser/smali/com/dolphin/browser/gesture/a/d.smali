.class public Lcom/dolphin/browser/gesture/a/d;
.super Lcom/dolphin/browser/gesture/a/a;
.source "ActionGroup.java"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/gesture/a/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 11
    invoke-direct {p0, v0, p1, v0}, Lcom/dolphin/browser/gesture/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;)V

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/gesture/a/d;->a:Ljava/util/List;

    .line 13
    return-void
.end method


# virtual methods
.method public a(I)Lcom/dolphin/browser/gesture/a/a;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/dolphin/browser/gesture/a/d;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/gesture/a/a;

    return-object v0
.end method

.method public a(Ljava/lang/String;)Lcom/dolphin/browser/gesture/a/a;
    .locals 3

    .prologue
    .line 28
    iget-object v0, p0, Lcom/dolphin/browser/gesture/a/d;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/gesture/a/a;

    .line 29
    invoke-virtual {v0}, Lcom/dolphin/browser/gesture/a/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 33
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/dolphin/browser/gesture/a/a;)V
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/dolphin/browser/gesture/a/d;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    return-void
.end method

.method public e()I
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/dolphin/browser/gesture/a/d;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public f()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/gesture/a/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 41
    iget-object v0, p0, Lcom/dolphin/browser/gesture/a/d;->a:Ljava/util/List;

    return-object v0
.end method
