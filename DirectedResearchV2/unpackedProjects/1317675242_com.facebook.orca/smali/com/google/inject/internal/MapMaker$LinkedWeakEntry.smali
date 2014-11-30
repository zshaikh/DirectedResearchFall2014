.class Lcom/google/inject/internal/MapMaker$LinkedWeakEntry;
.super Lcom/google/inject/internal/MapMaker$WeakEntry;
.source "MapMaker.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/inject/internal/MapMaker$WeakEntry",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final next:Lcom/google/inject/internal/MapMaker$ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/internal/MapMaker$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/inject/internal/CustomConcurrentHashMap$Internals;Ljava/lang/Object;ILcom/google/inject/internal/MapMaker$ReferenceEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/internal/CustomConcurrentHashMap$Internals",
            "<TK;TV;",
            "Lcom/google/inject/internal/MapMaker$ReferenceEntry",
            "<TK;TV;>;>;TK;I",
            "Lcom/google/inject/internal/MapMaker$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 986
    invoke-direct {p0, p1, p2, p3}, Lcom/google/inject/internal/MapMaker$WeakEntry;-><init>(Lcom/google/inject/internal/CustomConcurrentHashMap$Internals;Ljava/lang/Object;I)V

    .line 987
    iput-object p4, p0, Lcom/google/inject/internal/MapMaker$LinkedWeakEntry;->next:Lcom/google/inject/internal/MapMaker$ReferenceEntry;

    .line 988
    return-void
.end method


# virtual methods
.method public getNext()Lcom/google/inject/internal/MapMaker$ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/inject/internal/MapMaker$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 993
    iget-object v0, p0, Lcom/google/inject/internal/MapMaker$LinkedWeakEntry;->next:Lcom/google/inject/internal/MapMaker$ReferenceEntry;

    return-object v0
.end method
