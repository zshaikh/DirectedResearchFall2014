.class public Lcom/facebook/orca/server/PreProcessingServiceHandler;
.super Ljava/lang/Object;
.source "PreProcessingServiceHandler.java"

# interfaces
.implements Lcom/facebook/orca/server/OrcaServiceHandler$Filter;


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/server/OrcaServiceHandlerHook;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/facebook/orca/server/IOrcaService$Stub;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/server/OrcaServiceHandlerHook;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/facebook/orca/server/PreProcessingServiceHandler;->a:Ljava/util/List;

    .line 23
    return-void
.end method


# virtual methods
.method a(Lcom/facebook/orca/server/IOrcaService$Stub;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/facebook/orca/server/PreProcessingServiceHandler;->b:Lcom/facebook/orca/server/IOrcaService$Stub;

    .line 27
    return-void
.end method

.method public w(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 4

    .prologue
    .line 32
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->a()Ljava/lang/String;

    move-result-object v1

    .line 33
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->b()Landroid/os/Bundle;

    move-result-object v2

    .line 34
    const-string v0, "login"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/facebook/orca/server/PreProcessingServiceHandler;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/OrcaServiceHandlerHook;

    .line 36
    invoke-interface {v0, v2}, Lcom/facebook/orca/server/OrcaServiceHandlerHook;->a(Landroid/os/Bundle;)V

    goto :goto_0

    .line 38
    :cond_0
    const-string v0, "logout"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 39
    iget-object v0, p0, Lcom/facebook/orca/server/PreProcessingServiceHandler;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/OrcaServiceHandlerHook;

    .line 40
    invoke-interface {v0, v2}, Lcom/facebook/orca/server/OrcaServiceHandlerHook;->b(Landroid/os/Bundle;)V

    goto :goto_1

    .line 46
    :cond_1
    :try_start_0
    invoke-interface {p2, p1}, Lcom/facebook/orca/server/OrcaServiceHandler;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v2, v0

    .line 56
    :goto_2
    const-string v0, "logout"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 58
    iget-object v0, p0, Lcom/facebook/orca/server/PreProcessingServiceHandler;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/facebook/orca/server/OrcaServiceHandlerHook;

    .line 59
    invoke-interface {p0}, Lcom/facebook/orca/server/OrcaServiceHandlerHook;->c()V

    goto :goto_3

    .line 47
    :catch_0
    move-exception v0

    .line 48
    const-string v2, "logout"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 50
    invoke-static {}, Lcom/facebook/orca/server/OperationResult;->a()Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    move-object v2, v0

    goto :goto_2

    .line 52
    :cond_2
    throw v0

    .line 62
    :cond_3
    const-string v0, "login"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 63
    iget-object v0, p0, Lcom/facebook/orca/server/PreProcessingServiceHandler;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/OrcaServiceHandlerHook;

    .line 64
    invoke-interface {v0}, Lcom/facebook/orca/server/OrcaServiceHandlerHook;->a()V

    goto :goto_4

    .line 67
    :cond_4
    iget-object v0, p0, Lcom/facebook/orca/server/PreProcessingServiceHandler;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/facebook/orca/server/OrcaServiceHandlerHook;

    .line 68
    invoke-interface {p0}, Lcom/facebook/orca/server/OrcaServiceHandlerHook;->b()V

    goto :goto_5

    .line 71
    :cond_5
    return-object v2
.end method
