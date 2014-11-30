.class public Lcom/pocketchange/android/util/UncaughtExceptionHandlerWrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field private final a:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private final b:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method public constructor <init>(Ljava/lang/Thread$UncaughtExceptionHandler;Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .locals 2
    .param p1, "wrapped"    # Ljava/lang/Thread$UncaughtExceptionHandler;
    .param p2, "wrapper"    # Ljava/lang/Thread$UncaughtExceptionHandler;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    if-nez p1, :cond_0

    .line 14
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Handler to wrap cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 16
    :cond_0
    if-nez p2, :cond_1

    .line 17
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Wrapper handler cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 19
    :cond_1
    if-ne p1, p2, :cond_2

    .line 20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot wrap a handler with itself"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 22
    :cond_2
    iput-object p1, p0, Lcom/pocketchange/android/util/UncaughtExceptionHandlerWrapper;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 23
    iput-object p2, p0, Lcom/pocketchange/android/util/UncaughtExceptionHandlerWrapper;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 24
    return-void
.end method

.method public static handlerClassEquals(Ljava/lang/Thread$UncaughtExceptionHandler;Ljava/lang/Class;)Z
    .locals 4
    .param p0, "handler"    # Ljava/lang/Thread$UncaughtExceptionHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Thread$UncaughtExceptionHandler;",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 45
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    instance-of v1, p0, Lcom/pocketchange/android/util/UncaughtExceptionHandlerWrapper;

    if-nez v1, :cond_0

    .line 46
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 62
    :goto_0
    return v1

    .line 48
    :cond_0
    move-object v0, p0

    check-cast v0, Lcom/pocketchange/android/util/UncaughtExceptionHandlerWrapper;

    move-object v1, v0

    .line 49
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 50
    iget-object v3, v1, Lcom/pocketchange/android/util/UncaughtExceptionHandlerWrapper;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 51
    iget-object v1, v1, Lcom/pocketchange/android/util/UncaughtExceptionHandlerWrapper;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 52
    :cond_1
    :goto_1
    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 53
    invoke-virtual {v2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "handler":Ljava/lang/Thread$UncaughtExceptionHandler;
    check-cast p0, Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 54
    .restart local p0    # "handler":Ljava/lang/Thread$UncaughtExceptionHandler;
    instance-of v1, p0, Lcom/pocketchange/android/util/UncaughtExceptionHandlerWrapper;

    if-eqz v1, :cond_2

    .line 55
    move-object v0, p0

    check-cast v0, Lcom/pocketchange/android/util/UncaughtExceptionHandlerWrapper;

    move-object v1, v0

    .line 56
    iget-object v3, v1, Lcom/pocketchange/android/util/UncaughtExceptionHandlerWrapper;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 57
    iget-object v1, v1, Lcom/pocketchange/android/util/UncaughtExceptionHandlerWrapper;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_1

    .line 58
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 59
    const/4 v1, 0x1

    goto :goto_0

    .line 62
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static wrap(Ljava/lang/Thread$UncaughtExceptionHandler;Ljava/lang/Thread$UncaughtExceptionHandler;)Ljava/lang/Thread$UncaughtExceptionHandler;
    .locals 1
    .param p0, "handler"    # Ljava/lang/Thread$UncaughtExceptionHandler;
    .param p1, "wrapper"    # Ljava/lang/Thread$UncaughtExceptionHandler;

    .prologue
    .line 37
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/pocketchange/android/util/UncaughtExceptionHandlerWrapper;->handlerClassEquals(Ljava/lang/Thread$UncaughtExceptionHandler;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/pocketchange/android/util/UncaughtExceptionHandlerWrapper;

    invoke-direct {v0, p0, p1}, Lcom/pocketchange/android/util/UncaughtExceptionHandlerWrapper;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;Ljava/lang/Thread$UncaughtExceptionHandler;)V

    goto :goto_0
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "thread"    # Ljava/lang/Thread;
    .param p2, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 29
    :try_start_0
    iget-object v0, p0, Lcom/pocketchange/android/util/UncaughtExceptionHandlerWrapper;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    :goto_0
    iget-object v0, p0, Lcom/pocketchange/android/util/UncaughtExceptionHandlerWrapper;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 34
    return-void

    .line 30
    :catch_0
    move-exception v0

    .line 31
    const-string v1, "UncaughtExceptionHandlerWrapper"

    const-string v2, "Error invoking wrapper"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
