.class Lcom/google/common/collect/CustomConcurrentHashMap$Segment$1;
.super Ljava/lang/Object;
.source "CustomConcurrentHashMap.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/common/collect/CustomConcurrentHashMap$Segment;


# direct methods
.method constructor <init>(Lcom/google/common/collect/CustomConcurrentHashMap$Segment;)V
    .locals 0

    .prologue
    .line 2831
    iput-object p1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment$1;->a:Lcom/google/common/collect/CustomConcurrentHashMap$Segment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 2834
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment$1;->a:Lcom/google/common/collect/CustomConcurrentHashMap$Segment;

    invoke-virtual {v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->j()V

    .line 2835
    return-void
.end method
