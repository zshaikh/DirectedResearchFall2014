.class public Lcom/pocketchange/android/util/LoggingThreadExceptionHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field private static final a:Lcom/pocketchange/android/util/ThreadUtils$ThreadInstrumenter;


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Lcom/pocketchange/android/util/ExceptionFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6
    new-instance v0, Lcom/pocketchange/android/util/LoggingThreadExceptionHandler$1;

    invoke-direct {v0}, Lcom/pocketchange/android/util/LoggingThreadExceptionHandler$1;-><init>()V

    sput-object v0, Lcom/pocketchange/android/util/LoggingThreadExceptionHandler;->a:Lcom/pocketchange/android/util/ThreadUtils$ThreadInstrumenter;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 15
    const-string v0, "APPLICATION_EXCEPTION"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/pocketchange/android/util/LoggingThreadExceptionHandler;-><init>(Ljava/lang/String;Lcom/pocketchange/android/util/ExceptionFilter;)V

    .line 16
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/pocketchange/android/util/ExceptionFilter;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "filter"    # Lcom/pocketchange/android/util/ExceptionFilter;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    if-nez p1, :cond_0

    .line 20
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "tag cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 22
    :cond_0
    iput-object p1, p0, Lcom/pocketchange/android/util/LoggingThreadExceptionHandler;->b:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lcom/pocketchange/android/util/LoggingThreadExceptionHandler;->c:Lcom/pocketchange/android/util/ExceptionFilter;

    .line 24
    return-void
.end method

.method public static addToAllThreads()V
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/pocketchange/android/util/LoggingThreadExceptionHandler;->a:Lcom/pocketchange/android/util/ThreadUtils$ThreadInstrumenter;

    invoke-static {v0}, Lcom/pocketchange/android/util/ThreadUtils;->instrumentAllThreads(Lcom/pocketchange/android/util/ThreadUtils$ThreadInstrumenter;)V

    .line 48
    return-void
.end method

.method public static addToMainThread()V
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/pocketchange/android/util/LoggingThreadExceptionHandler;->a:Lcom/pocketchange/android/util/ThreadUtils$ThreadInstrumenter;

    invoke-static {v0}, Lcom/pocketchange/android/util/ThreadUtils;->instrumentMainThread(Lcom/pocketchange/android/util/ThreadUtils$ThreadInstrumenter;)V

    .line 44
    return-void
.end method

.method public static wrap(Ljava/lang/Thread$UncaughtExceptionHandler;)Ljava/lang/Thread$UncaughtExceptionHandler;
    .locals 1
    .param p0, "handler"    # Ljava/lang/Thread$UncaughtExceptionHandler;

    .prologue
    .line 51
    new-instance v0, Lcom/pocketchange/android/util/LoggingThreadExceptionHandler;

    invoke-direct {v0}, Lcom/pocketchange/android/util/LoggingThreadExceptionHandler;-><init>()V

    .line 52
    if-nez p0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, v0}, Lcom/pocketchange/android/util/UncaughtExceptionHandlerWrapper;->wrap(Ljava/lang/Thread$UncaughtExceptionHandler;Ljava/lang/Thread$UncaughtExceptionHandler;)Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/pocketchange/android/util/LoggingThreadExceptionHandler;->b:Ljava/lang/String;

    return-object v0
.end method

.method protected logException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "thread"    # Ljava/lang/Thread;
    .param p2, "exception"    # Ljava/lang/Throwable;

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/pocketchange/android/util/LoggingThreadExceptionHandler;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Uncaught exception in thread ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 36
    return-void
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "thread"    # Ljava/lang/Thread;
    .param p2, "thrown"    # Ljava/lang/Throwable;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/pocketchange/android/util/LoggingThreadExceptionHandler;->c:Lcom/pocketchange/android/util/ExceptionFilter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pocketchange/android/util/LoggingThreadExceptionHandler;->c:Lcom/pocketchange/android/util/ExceptionFilter;

    invoke-interface {v0, p2}, Lcom/pocketchange/android/util/ExceptionFilter;->matches(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 32
    :goto_0
    return-void

    .line 31
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/pocketchange/android/util/LoggingThreadExceptionHandler;->logException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
