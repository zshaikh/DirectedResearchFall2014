.class public Lcom/pocketchange/android/util/SDKThreadExceptionHandler;
.super Lcom/pocketchange/android/util/LoggingThreadExceptionHandler;
.source "SourceFile"


# static fields
.field private static final a:Lcom/pocketchange/android/util/ThreadUtils$ThreadInstrumenter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6
    new-instance v0, Lcom/pocketchange/android/util/SDKThreadExceptionHandler$1;

    invoke-direct {v0}, Lcom/pocketchange/android/util/SDKThreadExceptionHandler$1;-><init>()V

    sput-object v0, Lcom/pocketchange/android/util/SDKThreadExceptionHandler;->a:Lcom/pocketchange/android/util/ThreadUtils$ThreadInstrumenter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/pocketchange/android/util/LoggingThreadExceptionHandler;-><init>()V

    return-void
.end method

.method public static addToAllThreads()V
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/pocketchange/android/util/SDKThreadExceptionHandler;->a:Lcom/pocketchange/android/util/ThreadUtils$ThreadInstrumenter;

    invoke-static {v0}, Lcom/pocketchange/android/util/ThreadUtils;->instrumentAllThreads(Lcom/pocketchange/android/util/ThreadUtils$ThreadInstrumenter;)V

    .line 23
    return-void
.end method

.method public static addToMainThread()V
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/pocketchange/android/util/SDKThreadExceptionHandler;->a:Lcom/pocketchange/android/util/ThreadUtils$ThreadInstrumenter;

    invoke-static {v0}, Lcom/pocketchange/android/util/ThreadUtils;->instrumentMainThread(Lcom/pocketchange/android/util/ThreadUtils$ThreadInstrumenter;)V

    .line 19
    return-void
.end method

.method public static wrap(Ljava/lang/Thread$UncaughtExceptionHandler;)Ljava/lang/Thread$UncaughtExceptionHandler;
    .locals 1
    .param p0, "handler"    # Ljava/lang/Thread$UncaughtExceptionHandler;

    .prologue
    .line 26
    new-instance v0, Lcom/pocketchange/android/util/SDKThreadExceptionHandler;

    invoke-direct {v0}, Lcom/pocketchange/android/util/SDKThreadExceptionHandler;-><init>()V

    .line 27
    if-nez p0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, v0}, Lcom/pocketchange/android/util/UncaughtExceptionHandlerWrapper;->wrap(Ljava/lang/Thread$UncaughtExceptionHandler;Ljava/lang/Thread$UncaughtExceptionHandler;)Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected logException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "thread"    # Ljava/lang/Thread;
    .param p2, "exception"    # Ljava/lang/Throwable;

    .prologue
    .line 14
    invoke-static {p1}, Lcom/pocketchange/android/util/ThreadUtils;->isMainThread(Ljava/lang/Thread;)Z

    move-result v0

    const/4 v1, 0x0

    invoke-static {p2, v0, v1}, Lcom/pocketchange/android/PCSingleton;->staticRecordException(Ljava/lang/Throwable;ZZ)V

    .line 15
    return-void
.end method
