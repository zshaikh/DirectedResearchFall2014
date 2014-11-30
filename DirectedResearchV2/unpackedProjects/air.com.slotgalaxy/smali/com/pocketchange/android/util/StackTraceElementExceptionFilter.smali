.class public abstract Lcom/pocketchange/android/util/StackTraceElementExceptionFilter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/pocketchange/android/util/ExceptionFilter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public matches(Ljava/lang/Throwable;)Z
    .locals 5
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    const/4 v4, 0x0

    .line 5
    :goto_0
    if-eqz p1, :cond_2

    .line 6
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 7
    array-length v1, v0

    move v2, v4

    :goto_1
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 8
    invoke-virtual {p0, v3}, Lcom/pocketchange/android/util/StackTraceElementExceptionFilter;->traceElementMatches(Ljava/lang/StackTraceElement;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 9
    const/4 v0, 0x1

    .line 13
    :goto_2
    return v0

    .line 7
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 5
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    goto :goto_0

    :cond_2
    move v0, v4

    .line 13
    goto :goto_2
.end method

.method public abstract traceElementMatches(Ljava/lang/StackTraceElement;)Z
.end method
