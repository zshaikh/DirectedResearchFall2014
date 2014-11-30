.class final Ljsr166y/ConcurrentReferenceHashMap$p;
.super Ljsr166y/ConcurrentReferenceHashMap$i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljsr166y/ConcurrentReferenceHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "p"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljsr166y/ConcurrentReferenceHashMap$i",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljsr166y/ConcurrentReferenceHashMap;


# direct methods
.method constructor <init>(Ljsr166y/ConcurrentReferenceHashMap;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .prologue
    .line 1579
    iput-object p1, p0, Ljsr166y/ConcurrentReferenceHashMap$p;->a:Ljsr166y/ConcurrentReferenceHashMap;

    .line 1580
    invoke-direct {p0, p2, p3}, Ljsr166y/ConcurrentReferenceHashMap$i;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1581
    return-void
.end method


# virtual methods
.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .prologue
    .line 1593
    .local p0, "this":Ljsr166y/ConcurrentReferenceHashMap$p;, "Ljsr166y/ConcurrentReferenceHashMap<TK;TV;>.p;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1594
    :cond_0
    invoke-super {p0, p1}, Ljsr166y/ConcurrentReferenceHashMap$i;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1595
    iget-object v1, p0, Ljsr166y/ConcurrentReferenceHashMap$p;->a:Ljsr166y/ConcurrentReferenceHashMap;

    invoke-virtual {p0}, Ljsr166y/ConcurrentReferenceHashMap$p;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljsr166y/ConcurrentReferenceHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1596
    return-object v0
.end method
