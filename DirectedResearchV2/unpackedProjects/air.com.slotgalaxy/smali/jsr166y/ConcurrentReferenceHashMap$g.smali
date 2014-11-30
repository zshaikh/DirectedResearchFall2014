.class final Ljsr166y/ConcurrentReferenceHashMap$g;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljsr166y/ConcurrentReferenceHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljsr166y/ConcurrentReferenceHashMap;


# direct methods
.method constructor <init>(Ljsr166y/ConcurrentReferenceHashMap;)V
    .locals 0

    .prologue
    .line 1610
    iput-object p1, p0, Ljsr166y/ConcurrentReferenceHashMap$g;->a:Ljsr166y/ConcurrentReferenceHashMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 1627
    iget-object v0, p0, Ljsr166y/ConcurrentReferenceHashMap$g;->a:Ljsr166y/ConcurrentReferenceHashMap;

    invoke-virtual {v0}, Ljsr166y/ConcurrentReferenceHashMap;->clear()V

    .line 1628
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 1621
    .local p0, "this":Ljsr166y/ConcurrentReferenceHashMap$g;, "Ljsr166y/ConcurrentReferenceHashMap<TK;TV;>.g;"
    iget-object v0, p0, Ljsr166y/ConcurrentReferenceHashMap$g;->a:Ljsr166y/ConcurrentReferenceHashMap;

    invoke-virtual {v0, p1}, Ljsr166y/ConcurrentReferenceHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 1618
    iget-object v0, p0, Ljsr166y/ConcurrentReferenceHashMap$g;->a:Ljsr166y/ConcurrentReferenceHashMap;

    invoke-virtual {v0}, Ljsr166y/ConcurrentReferenceHashMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 1612
    new-instance v0, Ljsr166y/ConcurrentReferenceHashMap$e;

    iget-object v1, p0, Ljsr166y/ConcurrentReferenceHashMap$g;->a:Ljsr166y/ConcurrentReferenceHashMap;

    invoke-direct {v0, v1}, Ljsr166y/ConcurrentReferenceHashMap$e;-><init>(Ljsr166y/ConcurrentReferenceHashMap;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 1624
    .local p0, "this":Ljsr166y/ConcurrentReferenceHashMap$g;, "Ljsr166y/ConcurrentReferenceHashMap<TK;TV;>.g;"
    iget-object v0, p0, Ljsr166y/ConcurrentReferenceHashMap$g;->a:Ljsr166y/ConcurrentReferenceHashMap;

    invoke-virtual {v0, p1}, Ljsr166y/ConcurrentReferenceHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 1615
    iget-object v0, p0, Ljsr166y/ConcurrentReferenceHashMap$g;->a:Ljsr166y/ConcurrentReferenceHashMap;

    invoke-virtual {v0}, Ljsr166y/ConcurrentReferenceHashMap;->size()I

    move-result v0

    return v0
.end method
