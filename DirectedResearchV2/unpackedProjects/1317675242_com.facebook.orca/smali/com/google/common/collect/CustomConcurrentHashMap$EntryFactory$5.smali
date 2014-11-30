.class final enum Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory$5;
.super Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory;
.source "CustomConcurrentHashMap.java"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 399
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory;-><init>(Ljava/lang/String;ILcom/google/common/collect/CustomConcurrentHashMap$1;)V

    return-void
.end method


# virtual methods
.method newEntry(Lcom/google/common/collect/CustomConcurrentHashMap;Ljava/lang/Object;ILcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;
    .locals 1
    .param p4    # Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/CustomConcurrentHashMap",
            "<TK;TV;>;TK;I",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;)",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 403
    new-instance v0, Lcom/google/common/collect/CustomConcurrentHashMap$SoftEntry;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/common/collect/CustomConcurrentHashMap$SoftEntry;-><init>(Lcom/google/common/collect/CustomConcurrentHashMap;Ljava/lang/Object;ILcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)V

    return-object v0
.end method
