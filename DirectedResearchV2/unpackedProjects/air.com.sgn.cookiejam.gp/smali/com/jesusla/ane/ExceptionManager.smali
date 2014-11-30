.class public Lcom/jesusla/ane/ExceptionManager;
.super Ljava/lang/Object;
.source "ExceptionManager.java"


# static fields
.field private static final instance:Lcom/jesusla/ane/ExceptionManager;


# instance fields
.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/jesusla/ane/ExceptionListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    new-instance v0, Lcom/jesusla/ane/ExceptionManager;

    invoke-direct {v0}, Lcom/jesusla/ane/ExceptionManager;-><init>()V

    sput-object v0, Lcom/jesusla/ane/ExceptionManager;->instance:Lcom/jesusla/ane/ExceptionManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/jesusla/ane/ExceptionManager;->listeners:Ljava/util/List;

    return-void
.end method

.method public static getInstance()Lcom/jesusla/ane/ExceptionManager;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/jesusla/ane/ExceptionManager;->instance:Lcom/jesusla/ane/ExceptionManager;

    return-object v0
.end method

.method private notifyException(Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 34
    iget-object v3, p0, Lcom/jesusla/ane/ExceptionManager;->listeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jesusla/ane/ExceptionListener;

    .line 36
    .local v1, "listener":Lcom/jesusla/ane/ExceptionListener;
    :try_start_0
    invoke-interface {v1, p1}, Lcom/jesusla/ane/ExceptionListener;->notifyException(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 37
    :catch_0
    move-exception v2

    .line 38
    .local v2, "t":Ljava/lang/Throwable;
    const-string v3, "ExceptionManager: Exception notifying listener %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-static {v2, v3, v4}, Lcom/jesusla/ane/Extension;->warn(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 41
    .end local v1    # "listener":Lcom/jesusla/ane/ExceptionListener;
    .end local v2    # "t":Ljava/lang/Throwable;
    :cond_0
    return-void
.end method


# virtual methods
.method handleException(Ljava/lang/Throwable;)Ljava/lang/Object;
    .locals 4
    .param p1, "e"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Throwable;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 26
    :try_start_0
    invoke-direct {p0, p1}, Lcom/jesusla/ane/ExceptionManager;->notifyException(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    :goto_0
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 27
    :catch_0
    move-exception v0

    .line 28
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "ExceptionManager: Exception handling exception %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/jesusla/ane/Extension;->warn(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public registerListener(Lcom/jesusla/ane/ExceptionListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/jesusla/ane/ExceptionListener;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/jesusla/ane/ExceptionManager;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    return-void
.end method

.method public unregisterListener(Lcom/jesusla/ane/ExceptionListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/jesusla/ane/ExceptionListener;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/jesusla/ane/ExceptionManager;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 22
    return-void
.end method
