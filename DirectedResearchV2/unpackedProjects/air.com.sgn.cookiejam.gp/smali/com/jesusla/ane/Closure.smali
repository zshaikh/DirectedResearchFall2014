.class public Lcom/jesusla/ane/Closure;
.super Ljava/lang/Object;
.source "Closure.java"


# instance fields
.field private final closure:I

.field private final context:Lcom/jesusla/ane/Context;


# direct methods
.method public constructor <init>(Lcom/jesusla/ane/Context;Lcom/adobe/fre/FREObject;)V
    .locals 1
    .param p1, "context"    # Lcom/jesusla/ane/Context;
    .param p2, "closure"    # Lcom/adobe/fre/FREObject;

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/jesusla/ane/Closure;->context:Lcom/jesusla/ane/Context;

    .line 11
    invoke-virtual {p1, p2}, Lcom/jesusla/ane/Context;->retainObject(Lcom/adobe/fre/FREObject;)I

    move-result v0

    iput v0, p0, Lcom/jesusla/ane/Closure;->closure:I

    .line 12
    return-void
.end method

.method static synthetic access$000(Lcom/jesusla/ane/Closure;)I
    .locals 1
    .param p0, "x0"    # Lcom/jesusla/ane/Closure;

    .prologue
    .line 5
    iget v0, p0, Lcom/jesusla/ane/Closure;->closure:I

    return v0
.end method

.method static synthetic access$100(Lcom/jesusla/ane/Closure;)Lcom/jesusla/ane/Context;
    .locals 1
    .param p0, "x0"    # Lcom/jesusla/ane/Closure;

    .prologue
    .line 5
    iget-object v0, p0, Lcom/jesusla/ane/Closure;->context:Lcom/jesusla/ane/Context;

    return-object v0
.end method


# virtual methods
.method public varargs asyncInvoke([Ljava/lang/Object;)V
    .locals 2
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/jesusla/ane/Closure;->context:Lcom/jesusla/ane/Context;

    new-instance v1, Lcom/jesusla/ane/Closure$1;

    invoke-direct {v1, p0, p1}, Lcom/jesusla/ane/Closure$1;-><init>(Lcom/jesusla/ane/Closure;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/jesusla/ane/Context;->executeOnActionScriptThread(Ljava/lang/Runnable;)V

    .line 36
    return-void
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 16
    invoke-virtual {p0}, Lcom/jesusla/ane/Closure;->release()V

    .line 17
    return-void
.end method

.method public varargs invoke(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 24
    .local p1, "returnType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v1, p0, Lcom/jesusla/ane/Closure;->context:Lcom/jesusla/ane/Context;

    iget v2, p0, Lcom/jesusla/ane/Closure;->closure:I

    invoke-virtual {v1, v2}, Lcom/jesusla/ane/Context;->getObject(I)Lcom/adobe/fre/FREObject;

    move-result-object v0

    .line 25
    .local v0, "object":Lcom/adobe/fre/FREObject;
    iget-object v1, p0, Lcom/jesusla/ane/Closure;->context:Lcom/jesusla/ane/Context;

    const-string v2, "apply"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-virtual {v1, p1, v0, v2, v3}, Lcom/jesusla/ane/Context;->flashCall(Ljava/lang/Class;Lcom/adobe/fre/FREObject;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public release()V
    .locals 2

    .prologue
    .line 20
    iget-object v0, p0, Lcom/jesusla/ane/Closure;->context:Lcom/jesusla/ane/Context;

    iget v1, p0, Lcom/jesusla/ane/Closure;->closure:I

    invoke-virtual {v0, v1}, Lcom/jesusla/ane/Context;->releaseObject(I)V

    .line 21
    return-void
.end method
