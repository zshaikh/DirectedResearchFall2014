.class Lcom/google/inject/internal/MapMaker$StrategyImpl$FutureValueReference;
.super Ljava/lang/Object;
.source "MapMaker.java"

# interfaces
.implements Lcom/google/inject/internal/MapMaker$ValueReference;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/inject/internal/MapMaker$ValueReference",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final newEntry:Lcom/google/inject/internal/MapMaker$ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/internal/MapMaker$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final original:Lcom/google/inject/internal/MapMaker$ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/internal/MapMaker$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/inject/internal/MapMaker$StrategyImpl;


# direct methods
.method constructor <init>(Lcom/google/inject/internal/MapMaker$StrategyImpl;Lcom/google/inject/internal/MapMaker$ReferenceEntry;Lcom/google/inject/internal/MapMaker$ReferenceEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/internal/MapMaker$ReferenceEntry",
            "<TK;TV;>;",
            "Lcom/google/inject/internal/MapMaker$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 593
    iput-object p1, p0, Lcom/google/inject/internal/MapMaker$StrategyImpl$FutureValueReference;->this$0:Lcom/google/inject/internal/MapMaker$StrategyImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 594
    iput-object p2, p0, Lcom/google/inject/internal/MapMaker$StrategyImpl$FutureValueReference;->original:Lcom/google/inject/internal/MapMaker$ReferenceEntry;

    .line 595
    iput-object p3, p0, Lcom/google/inject/internal/MapMaker$StrategyImpl$FutureValueReference;->newEntry:Lcom/google/inject/internal/MapMaker$ReferenceEntry;

    .line 596
    return-void
.end method


# virtual methods
.method public copyFor(Lcom/google/inject/internal/MapMaker$ReferenceEntry;)Lcom/google/inject/internal/MapMaker$ValueReference;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/internal/MapMaker$ReferenceEntry",
            "<TK;TV;>;)",
            "Lcom/google/inject/internal/MapMaker$ValueReference",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 612
    new-instance v0, Lcom/google/inject/internal/MapMaker$StrategyImpl$FutureValueReference;

    iget-object v1, p0, Lcom/google/inject/internal/MapMaker$StrategyImpl$FutureValueReference;->this$0:Lcom/google/inject/internal/MapMaker$StrategyImpl;

    iget-object v2, p0, Lcom/google/inject/internal/MapMaker$StrategyImpl$FutureValueReference;->original:Lcom/google/inject/internal/MapMaker$ReferenceEntry;

    invoke-direct {v0, v1, v2, p1}, Lcom/google/inject/internal/MapMaker$StrategyImpl$FutureValueReference;-><init>(Lcom/google/inject/internal/MapMaker$StrategyImpl;Lcom/google/inject/internal/MapMaker$ReferenceEntry;Lcom/google/inject/internal/MapMaker$ReferenceEntry;)V

    return-object v0
.end method

.method public get()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 599
    const/4 v0, 0x0

    .line 601
    :try_start_0
    iget-object v1, p0, Lcom/google/inject/internal/MapMaker$StrategyImpl$FutureValueReference;->original:Lcom/google/inject/internal/MapMaker$ReferenceEntry;

    invoke-interface {v1}, Lcom/google/inject/internal/MapMaker$ReferenceEntry;->getValueReference()Lcom/google/inject/internal/MapMaker$ValueReference;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/inject/internal/MapMaker$ValueReference;->get()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 602
    const/4 v1, 0x1

    .line 605
    if-nez v1, :cond_0

    .line 606
    invoke-virtual {p0}, Lcom/google/inject/internal/MapMaker$StrategyImpl$FutureValueReference;->removeEntry()V

    :cond_0
    return-object v0

    .line 605
    :catchall_0
    move-exception v1

    if-nez v0, :cond_1

    .line 606
    invoke-virtual {p0}, Lcom/google/inject/internal/MapMaker$StrategyImpl$FutureValueReference;->removeEntry()V

    :cond_1
    throw v1
.end method

.method removeEntry()V
    .locals 2

    .prologue
    .line 636
    iget-object v0, p0, Lcom/google/inject/internal/MapMaker$StrategyImpl$FutureValueReference;->this$0:Lcom/google/inject/internal/MapMaker$StrategyImpl;

    iget-object v0, v0, Lcom/google/inject/internal/MapMaker$StrategyImpl;->internals:Lcom/google/inject/internal/CustomConcurrentHashMap$Internals;

    iget-object v1, p0, Lcom/google/inject/internal/MapMaker$StrategyImpl$FutureValueReference;->newEntry:Lcom/google/inject/internal/MapMaker$ReferenceEntry;

    invoke-interface {v0, v1}, Lcom/google/inject/internal/CustomConcurrentHashMap$Internals;->removeEntry(Ljava/lang/Object;)Z

    .line 637
    return-void
.end method

.method public waitForValue()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 616
    const/4 v0, 0x0

    .line 619
    :try_start_0
    iget-object v1, p0, Lcom/google/inject/internal/MapMaker$StrategyImpl$FutureValueReference;->this$0:Lcom/google/inject/internal/MapMaker$StrategyImpl;

    iget-object v2, p0, Lcom/google/inject/internal/MapMaker$StrategyImpl$FutureValueReference;->original:Lcom/google/inject/internal/MapMaker$ReferenceEntry;

    invoke-virtual {v1, v2}, Lcom/google/inject/internal/MapMaker$StrategyImpl;->waitForValue(Lcom/google/inject/internal/MapMaker$ReferenceEntry;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 620
    const/4 v1, 0x1

    .line 623
    if-nez v1, :cond_0

    .line 624
    invoke-virtual {p0}, Lcom/google/inject/internal/MapMaker$StrategyImpl$FutureValueReference;->removeEntry()V

    :cond_0
    return-object v0

    .line 623
    :catchall_0
    move-exception v1

    if-nez v0, :cond_1

    .line 624
    invoke-virtual {p0}, Lcom/google/inject/internal/MapMaker$StrategyImpl$FutureValueReference;->removeEntry()V

    :cond_1
    throw v1
.end method
