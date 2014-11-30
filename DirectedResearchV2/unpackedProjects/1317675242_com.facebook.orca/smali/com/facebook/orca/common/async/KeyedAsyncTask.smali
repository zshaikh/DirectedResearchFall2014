.class public abstract Lcom/facebook/orca/common/async/KeyedAsyncTask;
.super Ljava/lang/Object;
.source "KeyedAsyncTask.java"


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 0

    .prologue
    .line 13
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/facebook/orca/common/async/KeyedAsyncTask;->a:Ljava/lang/String;

    .line 36
    return-void
.end method

.method protected abstract b()V
.end method

.method protected c()V
    .locals 0

    .prologue
    .line 18
    return-void
.end method

.method d()V
    .locals 0

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/facebook/orca/common/async/KeyedAsyncTask;->a()V

    .line 23
    return-void
.end method

.method e()V
    .locals 0

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/facebook/orca/common/async/KeyedAsyncTask;->b()V

    .line 27
    return-void
.end method

.method f()V
    .locals 0

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/facebook/orca/common/async/KeyedAsyncTask;->c()V

    .line 32
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/facebook/orca/common/async/KeyedAsyncTask;->a:Ljava/lang/String;

    return-object v0
.end method
