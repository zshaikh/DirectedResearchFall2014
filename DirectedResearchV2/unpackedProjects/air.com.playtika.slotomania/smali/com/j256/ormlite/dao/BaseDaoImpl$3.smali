.class Lcom/j256/ormlite/dao/BaseDaoImpl$3;
.super Ljava/lang/Object;
.source "BaseDaoImpl.java"

# interfaces
.implements Lcom/j256/ormlite/dao/CloseableIterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/j256/ormlite/dao/BaseDaoImpl;->getWrappedIterable(Lcom/j256/ormlite/stmt/PreparedQuery;)Lcom/j256/ormlite/dao/CloseableWrappedIterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/j256/ormlite/dao/CloseableIterable",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/j256/ormlite/dao/BaseDaoImpl;

.field final synthetic val$preparedQuery:Lcom/j256/ormlite/stmt/PreparedQuery;


# direct methods
.method constructor <init>(Lcom/j256/ormlite/dao/BaseDaoImpl;Lcom/j256/ormlite/stmt/PreparedQuery;)V
    .locals 0

    .prologue
    .line 502
    .local p0, "this":Lcom/j256/ormlite/dao/BaseDaoImpl$3;, "Lcom/j256/ormlite/dao/BaseDaoImpl.3;"
    iput-object p1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl$3;->this$0:Lcom/j256/ormlite/dao/BaseDaoImpl;

    iput-object p2, p0, Lcom/j256/ormlite/dao/BaseDaoImpl$3;->val$preparedQuery:Lcom/j256/ormlite/stmt/PreparedQuery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public closeableIterator()Lcom/j256/ormlite/dao/CloseableIterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/CloseableIterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 508
    .local p0, "this":Lcom/j256/ormlite/dao/BaseDaoImpl$3;, "Lcom/j256/ormlite/dao/BaseDaoImpl.3;"
    :try_start_0
    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl$3;->this$0:Lcom/j256/ormlite/dao/BaseDaoImpl;

    iget-object v2, p0, Lcom/j256/ormlite/dao/BaseDaoImpl$3;->val$preparedQuery:Lcom/j256/ormlite/stmt/PreparedQuery;

    const/4 v3, -0x1

    # invokes: Lcom/j256/ormlite/dao/BaseDaoImpl;->createIterator(Lcom/j256/ormlite/stmt/PreparedQuery;I)Lcom/j256/ormlite/dao/CloseableIterator;
    invoke-static {v1, v2, v3}, Lcom/j256/ormlite/dao/BaseDaoImpl;->access$200(Lcom/j256/ormlite/dao/BaseDaoImpl;Lcom/j256/ormlite/stmt/PreparedQuery;I)Lcom/j256/ormlite/dao/CloseableIterator;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 509
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 510
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not build prepared-query iterator for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/j256/ormlite/dao/BaseDaoImpl$3;->this$0:Lcom/j256/ormlite/dao/BaseDaoImpl;

    iget-object v3, v3, Lcom/j256/ormlite/dao/BaseDaoImpl;->dataClass:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 504
    .local p0, "this":Lcom/j256/ormlite/dao/BaseDaoImpl$3;, "Lcom/j256/ormlite/dao/BaseDaoImpl.3;"
    invoke-virtual {p0}, Lcom/j256/ormlite/dao/BaseDaoImpl$3;->closeableIterator()Lcom/j256/ormlite/dao/CloseableIterator;

    move-result-object v0

    return-object v0
.end method
