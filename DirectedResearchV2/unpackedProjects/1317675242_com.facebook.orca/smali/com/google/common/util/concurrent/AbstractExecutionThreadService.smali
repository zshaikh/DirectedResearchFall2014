.class public abstract Lcom/google/common/util/concurrent/AbstractExecutionThreadService;
.super Ljava/lang/Object;
.source "AbstractExecutionThreadService.java"

# interfaces
.implements Lcom/google/common/util/concurrent/Service;


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation


# instance fields
.field private final a:Lcom/google/common/util/concurrent/Service;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;

    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;-><init>(Lcom/google/common/util/concurrent/AbstractExecutionThreadService;)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/AbstractExecutionThreadService;->a:Lcom/google/common/util/concurrent/Service;

    return-void
.end method

.method static synthetic a(Lcom/google/common/util/concurrent/AbstractExecutionThreadService;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractExecutionThreadService;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/google/common/util/concurrent/Service$State;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractExecutionThreadService;->a:Lcom/google/common/util/concurrent/Service;

    invoke-interface {v0}, Lcom/google/common/util/concurrent/Service;->a()Lcom/google/common/util/concurrent/Service$State;

    move-result-object v0

    return-object v0
.end method

.method protected b()V
    .locals 0

    .prologue
    .line 75
    return-void
.end method

.method protected abstract c()V
.end method

.method protected d()V
    .locals 0

    .prologue
    .line 97
    return-void
.end method

.method protected e()V
    .locals 0

    .prologue
    .line 102
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractExecutionThreadService;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractExecutionThreadService;->a()Lcom/google/common/util/concurrent/Service$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
