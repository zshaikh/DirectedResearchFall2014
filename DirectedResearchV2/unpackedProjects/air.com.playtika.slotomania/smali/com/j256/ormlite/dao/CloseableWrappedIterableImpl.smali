.class public Lcom/j256/ormlite/dao/CloseableWrappedIterableImpl;
.super Ljava/lang/Object;
.source "CloseableWrappedIterableImpl.java"

# interfaces
.implements Lcom/j256/ormlite/dao/CloseableWrappedIterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/j256/ormlite/dao/CloseableWrappedIterable",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final iterable:Lcom/j256/ormlite/dao/CloseableIterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/CloseableIterable",
            "<TT;>;"
        }
    .end annotation
.end field

.field private iterator:Lcom/j256/ormlite/dao/CloseableIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/CloseableIterator",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/j256/ormlite/dao/CloseableIterable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/dao/CloseableIterable",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 17
    .local p0, "this":Lcom/j256/ormlite/dao/CloseableWrappedIterableImpl;, "Lcom/j256/ormlite/dao/CloseableWrappedIterableImpl<TT;>;"
    .local p1, "iterable":Lcom/j256/ormlite/dao/CloseableIterable;, "Lcom/j256/ormlite/dao/CloseableIterable<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/j256/ormlite/dao/CloseableWrappedIterableImpl;->iterable:Lcom/j256/ormlite/dao/CloseableIterable;

    .line 19
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 37
    .local p0, "this":Lcom/j256/ormlite/dao/CloseableWrappedIterableImpl;, "Lcom/j256/ormlite/dao/CloseableWrappedIterableImpl<TT;>;"
    iget-object v0, p0, Lcom/j256/ormlite/dao/CloseableWrappedIterableImpl;->iterator:Lcom/j256/ormlite/dao/CloseableIterator;

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/j256/ormlite/dao/CloseableWrappedIterableImpl;->iterator:Lcom/j256/ormlite/dao/CloseableIterator;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/CloseableIterator;->close()V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/j256/ormlite/dao/CloseableWrappedIterableImpl;->iterator:Lcom/j256/ormlite/dao/CloseableIterator;

    .line 41
    :cond_0
    return-void
.end method

.method public closeableIterator()Lcom/j256/ormlite/dao/CloseableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/CloseableIterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 28
    .local p0, "this":Lcom/j256/ormlite/dao/CloseableWrappedIterableImpl;, "Lcom/j256/ormlite/dao/CloseableWrappedIterableImpl<TT;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/j256/ormlite/dao/CloseableWrappedIterableImpl;->close()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    :goto_0
    iget-object v0, p0, Lcom/j256/ormlite/dao/CloseableWrappedIterableImpl;->iterable:Lcom/j256/ormlite/dao/CloseableIterable;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/CloseableIterable;->closeableIterator()Lcom/j256/ormlite/dao/CloseableIterator;

    move-result-object v0

    iput-object v0, p0, Lcom/j256/ormlite/dao/CloseableWrappedIterableImpl;->iterator:Lcom/j256/ormlite/dao/CloseableIterator;

    .line 33
    iget-object v0, p0, Lcom/j256/ormlite/dao/CloseableWrappedIterableImpl;->iterator:Lcom/j256/ormlite/dao/CloseableIterator;

    return-object v0

    .line 29
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public iterator()Lcom/j256/ormlite/dao/CloseableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/CloseableIterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 22
    .local p0, "this":Lcom/j256/ormlite/dao/CloseableWrappedIterableImpl;, "Lcom/j256/ormlite/dao/CloseableWrappedIterableImpl<TT;>;"
    invoke-virtual {p0}, Lcom/j256/ormlite/dao/CloseableWrappedIterableImpl;->closeableIterator()Lcom/j256/ormlite/dao/CloseableIterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 12
    .local p0, "this":Lcom/j256/ormlite/dao/CloseableWrappedIterableImpl;, "Lcom/j256/ormlite/dao/CloseableWrappedIterableImpl<TT;>;"
    invoke-virtual {p0}, Lcom/j256/ormlite/dao/CloseableWrappedIterableImpl;->iterator()Lcom/j256/ormlite/dao/CloseableIterator;

    move-result-object v0

    return-object v0
.end method
