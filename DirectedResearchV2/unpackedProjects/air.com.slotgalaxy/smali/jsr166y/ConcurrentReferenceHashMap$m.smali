.class final Ljsr166y/ConcurrentReferenceHashMap$m;
.super Ljava/util/AbstractCollection;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljsr166y/ConcurrentReferenceHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "m"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractCollection",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljsr166y/ConcurrentReferenceHashMap;


# direct methods
.method constructor <init>(Ljsr166y/ConcurrentReferenceHashMap;)V
    .locals 0

    .prologue
    .line 1631
    iput-object p1, p0, Ljsr166y/ConcurrentReferenceHashMap$m;->a:Ljsr166y/ConcurrentReferenceHashMap;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 1645
    iget-object v0, p0, Ljsr166y/ConcurrentReferenceHashMap$m;->a:Ljsr166y/ConcurrentReferenceHashMap;

    invoke-virtual {v0}, Ljsr166y/ConcurrentReferenceHashMap;->clear()V

    .line 1646
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 1642
    .local p0, "this":Ljsr166y/ConcurrentReferenceHashMap$m;, "Ljsr166y/ConcurrentReferenceHashMap<TK;TV;>.m;"
    iget-object v0, p0, Ljsr166y/ConcurrentReferenceHashMap$m;->a:Ljsr166y/ConcurrentReferenceHashMap;

    invoke-virtual {v0, p1}, Ljsr166y/ConcurrentReferenceHashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 1639
    iget-object v0, p0, Ljsr166y/ConcurrentReferenceHashMap$m;->a:Ljsr166y/ConcurrentReferenceHashMap;

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
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 1633
    new-instance v0, Ljsr166y/ConcurrentReferenceHashMap$l;

    iget-object v1, p0, Ljsr166y/ConcurrentReferenceHashMap$m;->a:Ljsr166y/ConcurrentReferenceHashMap;

    invoke-direct {v0, v1}, Ljsr166y/ConcurrentReferenceHashMap$l;-><init>(Ljsr166y/ConcurrentReferenceHashMap;)V

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 1636
    iget-object v0, p0, Ljsr166y/ConcurrentReferenceHashMap$m;->a:Ljsr166y/ConcurrentReferenceHashMap;

    invoke-virtual {v0}, Ljsr166y/ConcurrentReferenceHashMap;->size()I

    move-result v0

    return v0
.end method
