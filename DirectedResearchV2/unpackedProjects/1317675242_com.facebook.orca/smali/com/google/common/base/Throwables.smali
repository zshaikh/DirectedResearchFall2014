.class public final Lcom/google/common/base/Throwables;
.super Ljava/lang/Object;
.source "Throwables.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;
    .locals 1

    .prologue
    .line 154
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    invoke-static {v0}, Lcom/google/common/base/Throwables;->propagateIfPossible(Ljava/lang/Throwable;)V

    .line 155
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static propagateIfInstanceOf(Ljava/lang/Throwable;Ljava/lang/Class;)V
    .locals 1
    .param p0    # Ljava/lang/Throwable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Class",
            "<TX;>;)V^TX;"
        }
    .end annotation

    .prologue
    .line 58
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {p1, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Throwable;

    throw p0

    .line 61
    :cond_0
    return-void
.end method

.method public static propagateIfPossible(Ljava/lang/Throwable;)V
    .locals 1
    .param p0    # Ljava/lang/Throwable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 78
    const-class v0, Ljava/lang/Error;

    invoke-static {p0, v0}, Lcom/google/common/base/Throwables;->propagateIfInstanceOf(Ljava/lang/Throwable;Ljava/lang/Class;)V

    .line 79
    const-class v0, Ljava/lang/RuntimeException;

    invoke-static {p0, v0}, Lcom/google/common/base/Throwables;->propagateIfInstanceOf(Ljava/lang/Throwable;Ljava/lang/Class;)V

    .line 80
    return-void
.end method

.method public static propagateIfPossible(Ljava/lang/Throwable;Ljava/lang/Class;)V
    .locals 0
    .param p0    # Ljava/lang/Throwable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Class",
            "<TX;>;)V^TX;"
        }
    .end annotation

    .prologue
    .line 103
    invoke-static {p0, p1}, Lcom/google/common/base/Throwables;->propagateIfInstanceOf(Ljava/lang/Throwable;Ljava/lang/Class;)V

    .line 104
    invoke-static {p0}, Lcom/google/common/base/Throwables;->propagateIfPossible(Ljava/lang/Throwable;)V

    .line 105
    return-void
.end method

.method public static throwCause(Ljava/lang/Exception;Z)Ljava/lang/Exception;
    .locals 7
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 231
    invoke-virtual {p0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 232
    if-nez v1, :cond_0

    .line 233
    throw p0

    .line 235
    :cond_0
    if-eqz p1, :cond_1

    .line 236
    invoke-virtual {v1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    .line 237
    invoke-virtual {p0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    .line 238
    array-length v4, v2

    array-length v5, v3

    add-int/2addr v4, v5

    new-array v4, v4, [Ljava/lang/StackTraceElement;

    .line 240
    array-length v5, v2

    invoke-static {v2, v6, v4, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 241
    array-length v2, v2

    array-length v5, v3

    invoke-static {v3, v6, v4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 243
    invoke-virtual {v1, v4}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 245
    :cond_1
    instance-of v2, v1, Ljava/lang/Exception;

    if-eqz v2, :cond_2

    .line 246
    move-object v0, v1

    check-cast v0, Ljava/lang/Exception;

    move-object p0, v0

    throw p0

    .line 248
    :cond_2
    instance-of v2, v1, Ljava/lang/Error;

    if-eqz v2, :cond_3

    .line 249
    check-cast v1, Ljava/lang/Error;

    throw v1

    .line 252
    :cond_3
    throw p0
.end method
