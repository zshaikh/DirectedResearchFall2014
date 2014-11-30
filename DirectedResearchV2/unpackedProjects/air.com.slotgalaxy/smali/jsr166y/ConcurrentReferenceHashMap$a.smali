.class final Ljsr166y/ConcurrentReferenceHashMap$a;
.super Ljsr166y/ConcurrentReferenceHashMap$d;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljsr166y/ConcurrentReferenceHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljsr166y/ConcurrentReferenceHashMap",
        "<TK;TV;>.d;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljsr166y/ConcurrentReferenceHashMap;


# direct methods
.method constructor <init>(Ljsr166y/ConcurrentReferenceHashMap;)V
    .locals 0

    .prologue
    .line 1600
    iput-object p1, p0, Ljsr166y/ConcurrentReferenceHashMap$a;->a:Ljsr166y/ConcurrentReferenceHashMap;

    invoke-direct {p0, p1}, Ljsr166y/ConcurrentReferenceHashMap$d;-><init>(Ljsr166y/ConcurrentReferenceHashMap;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map$Entry;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1605
    invoke-super {p0}, Ljsr166y/ConcurrentReferenceHashMap$d;->c()Ljsr166y/ConcurrentReferenceHashMap$c;

    move-result-object v0

    .line 1606
    new-instance v1, Ljsr166y/ConcurrentReferenceHashMap$p;

    iget-object v2, p0, Ljsr166y/ConcurrentReferenceHashMap$a;->a:Ljsr166y/ConcurrentReferenceHashMap;

    invoke-virtual {v0}, Ljsr166y/ConcurrentReferenceHashMap$c;->a()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0}, Ljsr166y/ConcurrentReferenceHashMap$c;->b()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v1, v2, v3, v0}, Ljsr166y/ConcurrentReferenceHashMap$p;-><init>(Ljsr166y/ConcurrentReferenceHashMap;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method

.method public synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1600
    invoke-virtual {p0}, Ljsr166y/ConcurrentReferenceHashMap$a;->a()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method
