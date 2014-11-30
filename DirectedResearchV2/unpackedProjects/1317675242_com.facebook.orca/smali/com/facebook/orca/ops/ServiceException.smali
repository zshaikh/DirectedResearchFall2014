.class public Lcom/facebook/orca/ops/ServiceException;
.super Ljava/lang/Exception;
.source "ServiceException.java"


# instance fields
.field private final a:Lcom/facebook/orca/server/ErrorCode;

.field private final b:Lcom/facebook/orca/server/OperationResult;


# direct methods
.method public constructor <init>(Lcom/facebook/orca/server/OperationResult;)V
    .locals 2

    .prologue
    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationResult;->c()Lcom/facebook/orca/server/ErrorCode;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationResult;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationResult;->c()Lcom/facebook/orca/server/ErrorCode;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/ops/ServiceException;->a:Lcom/facebook/orca/server/ErrorCode;

    .line 19
    iput-object p1, p0, Lcom/facebook/orca/ops/ServiceException;->b:Lcom/facebook/orca/server/OperationResult;

    .line 20
    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/server/ErrorCode;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/facebook/orca/ops/ServiceException;->a:Lcom/facebook/orca/server/ErrorCode;

    return-object v0
.end method

.method public b()Lcom/facebook/orca/server/OperationResult;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/facebook/orca/ops/ServiceException;->b:Lcom/facebook/orca/server/OperationResult;

    return-object v0
.end method
