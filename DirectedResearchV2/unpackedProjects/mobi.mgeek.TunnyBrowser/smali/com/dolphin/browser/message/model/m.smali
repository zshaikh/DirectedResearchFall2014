.class public Lcom/dolphin/browser/message/model/m;
.super Ljava/lang/Object;
.source "MessageGroup.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/dolphin/browser/message/model/m;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/message/model/Message;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/dolphin/browser/message/model/m;->b:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lcom/dolphin/browser/message/model/m;->c:Ljava/lang/String;

    .line 20
    iput-object p3, p0, Lcom/dolphin/browser/message/model/m;->d:Ljava/lang/String;

    .line 21
    iput-boolean p4, p0, Lcom/dolphin/browser/message/model/m;->e:Z

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/message/model/m;->a:Ljava/util/List;

    .line 23
    return-void
.end method


# virtual methods
.method public a(Lcom/dolphin/browser/message/model/m;)I
    .locals 2

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/dolphin/browser/message/model/m;->e:Z

    if-eqz v0, :cond_0

    .line 65
    const/4 v0, -0x1

    .line 67
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/message/model/m;->c:Ljava/lang/String;

    iget-object v1, p1, Lcom/dolphin/browser/message/model/m;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public a(I)Lcom/dolphin/browser/message/model/Message;
    .locals 1

    .prologue
    .line 47
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/dolphin/browser/message/model/m;->b()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/dolphin/browser/message/model/m;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/message/model/Message;

    .line 50
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/dolphin/browser/message/model/m;->c:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lcom/dolphin/browser/message/model/Message;)V
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/dolphin/browser/message/model/m;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/dolphin/browser/message/model/m;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/message/model/m;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 8
    check-cast p1, Lcom/dolphin/browser/message/model/m;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/message/model/m;->a(Lcom/dolphin/browser/message/model/m;)I

    move-result v0

    return v0
.end method
