.class public Lcom/fusepowered/crashlog/CrashDetector;
.super Ljava/lang/Object;
.source "CrashDetector.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field private static final TAG:Ljava/lang/String; = "CrashDetector"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCrashHandler:Lcom/fusepowered/crashlog/handlers/CrashHandler;

.field private mCrashSender:Lcom/fusepowered/crashlog/senders/CrashSender;

.field mExternalExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private mHasStarted:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, v0, v0, p1}, Lcom/fusepowered/crashlog/CrashDetector;-><init>(Lcom/fusepowered/crashlog/handlers/CrashHandler;Lcom/fusepowered/crashlog/senders/CrashSender;Landroid/content/Context;)V

    .line 32
    return-void
.end method

.method private constructor <init>(Lcom/fusepowered/crashlog/handlers/CrashHandler;Lcom/fusepowered/crashlog/senders/CrashSender;Landroid/content/Context;)V
    .locals 2
    .param p1, "crashHandler"    # Lcom/fusepowered/crashlog/handlers/CrashHandler;
    .param p2, "crashSender"    # Lcom/fusepowered/crashlog/senders/CrashSender;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fusepowered/crashlog/CrashDetector;->mExternalExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fusepowered/crashlog/CrashDetector;->mHasStarted:Z

    .line 44
    if-nez p3, :cond_0

    .line 45
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "context may not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_0
    iput-object p3, p0, Lcom/fusepowered/crashlog/CrashDetector;->mContext:Landroid/content/Context;

    .line 50
    if-eqz p1, :cond_1

    .line 51
    iput-object p1, p0, Lcom/fusepowered/crashlog/CrashDetector;->mCrashHandler:Lcom/fusepowered/crashlog/handlers/CrashHandler;

    .line 56
    :goto_0
    if-eqz p2, :cond_2

    .line 57
    iput-object p2, p0, Lcom/fusepowered/crashlog/CrashDetector;->mCrashSender:Lcom/fusepowered/crashlog/senders/CrashSender;

    .line 61
    :goto_1
    return-void

    .line 53
    :cond_1
    new-instance v0, Lcom/fusepowered/crashlog/handlers/CacheForStartupCrashHandler;

    iget-object v1, p0, Lcom/fusepowered/crashlog/CrashDetector;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/fusepowered/crashlog/handlers/CacheForStartupCrashHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fusepowered/crashlog/CrashDetector;->mCrashHandler:Lcom/fusepowered/crashlog/handlers/CrashHandler;

    goto :goto_0

    .line 59
    :cond_2
    new-instance v0, Lcom/fusepowered/crashlog/senders/FuseCrashSender;

    invoke-direct {v0}, Lcom/fusepowered/crashlog/senders/FuseCrashSender;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/crashlog/CrashDetector;->mCrashSender:Lcom/fusepowered/crashlog/senders/CrashSender;

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/fusepowered/crashlog/CrashDetector;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/crashlog/CrashDetector;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/fusepowered/crashlog/CrashDetector;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private formattedStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 4
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 180
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 181
    .local v2, "stringWriter":Ljava/io/StringWriter;
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 183
    .local v1, "printWriter":Ljava/io/PrintWriter;
    move-object v0, p1

    .line 184
    .local v0, "cause":Ljava/lang/Throwable;
    :goto_0
    if-eqz v0, :cond_0

    .line 185
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 186
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_0

    .line 188
    :cond_0
    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private gatherCrashData(Ljava/lang/Thread;Ljava/lang/Throwable;)Lcom/fusepowered/crashlog/CrashData;
    .locals 5
    .param p1, "thread"    # Ljava/lang/Thread;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 160
    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    .line 161
    .local v2, "threadName":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread$State;->name()Ljava/lang/String;

    move-result-object v3

    .line 163
    .local v3, "threadState":Ljava/lang/String;
    invoke-direct {p0, p2}, Lcom/fusepowered/crashlog/CrashDetector;->formattedStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    .line 165
    .local v1, "stackTrace":Ljava/lang/String;
    new-instance v0, Lcom/fusepowered/crashlog/CrashData;

    invoke-direct {v0}, Lcom/fusepowered/crashlog/CrashData;-><init>()V

    .line 166
    .local v0, "crashData":Lcom/fusepowered/crashlog/CrashData;
    invoke-virtual {v0, v1}, Lcom/fusepowered/crashlog/CrashData;->setStackTrace(Ljava/lang/String;)V

    .line 167
    invoke-virtual {v0, v2}, Lcom/fusepowered/crashlog/CrashData;->setCrashedThreadName(Ljava/lang/String;)V

    .line 168
    invoke-virtual {v0, v3}, Lcom/fusepowered/crashlog/CrashData;->setCrashedThreadState(Ljava/lang/String;)V

    .line 169
    return-object v0
.end method

.method private registerAsUncaughtExceptionHandler()V
    .locals 3

    .prologue
    .line 85
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    .line 86
    .local v0, "currentExceptionHandler":Ljava/lang/Thread$UncaughtExceptionHandler;
    if-eqz v0, :cond_0

    .line 87
    iput-object v0, p0, Lcom/fusepowered/crashlog/CrashDetector;->mExternalExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 90
    :cond_0
    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 91
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/fusepowered/crashlog/CrashDetector;->mHasStarted:Z

    .line 92
    const-string v1, "CrashDetector"

    const-string v2, "Crash Detection enabled"

    invoke-static {v1, v2}, Lcom/fusepowered/logging/FuseLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method private sendCachedCrashes()V
    .locals 4

    .prologue
    const-string v3, "CrashDetector"

    .line 100
    iget-object v1, p0, Lcom/fusepowered/crashlog/CrashDetector;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/fusepowered/crashlog/handlers/CacheForStartupCrashHandler;->getCachedCrashes(Landroid/content/Context;)[Lcom/fusepowered/crashlog/CrashData;

    move-result-object v0

    .line 102
    .local v0, "cachedCrashes":[Lcom/fusepowered/crashlog/CrashData;
    if-eqz v0, :cond_0

    array-length v1, v0

    if-nez v1, :cond_1

    .line 103
    :cond_0
    const-string v1, "CrashDetector"

    const-string v1, "No cached crashes waiting to be sent"

    invoke-static {v3, v1}, Lcom/fusepowered/logging/FuseLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    :goto_0
    return-void

    .line 107
    :cond_1
    const-string v1, "CrashDetector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cached crashes.  Attempting to report them now."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/fusepowered/logging/FuseLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iget-object v1, p0, Lcom/fusepowered/crashlog/CrashDetector;->mCrashSender:Lcom/fusepowered/crashlog/senders/CrashSender;

    iget-object v2, p0, Lcom/fusepowered/crashlog/CrashDetector;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/fusepowered/crashlog/CrashDetector$1;

    invoke-direct {v3, p0}, Lcom/fusepowered/crashlog/CrashDetector$1;-><init>(Lcom/fusepowered/crashlog/CrashDetector;)V

    invoke-interface {v1, v0, v2, v3}, Lcom/fusepowered/crashlog/senders/CrashSender;->reportCrashs([Lcom/fusepowered/crashlog/CrashData;Landroid/content/Context;Lcom/fusepowered/crashlog/senders/CrashSender$CrashSenderCallback;)V

    goto :goto_0
.end method


# virtual methods
.method public start()V
    .locals 2

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/fusepowered/crashlog/CrashDetector;->mHasStarted:Z

    if-eqz v0, :cond_0

    .line 70
    const-string v0, "CrashDetector"

    const-string v1, "Start called but crash detection has already been enabled."

    invoke-static {v0, v1}, Lcom/fusepowered/logging/FuseLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    :goto_0
    return-void

    .line 74
    :cond_0
    invoke-direct {p0}, Lcom/fusepowered/crashlog/CrashDetector;->registerAsUncaughtExceptionHandler()V

    .line 75
    invoke-direct {p0}, Lcom/fusepowered/crashlog/CrashDetector;->sendCachedCrashes()V

    goto :goto_0
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "thread"    # Ljava/lang/Thread;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    const-string v3, "CrashDetector"

    .line 134
    const-string v1, "CrashDetector"

    const-string v1, "Crash detected.  Attempting to record it."

    invoke-static {v3, v1}, Lcom/fusepowered/logging/FuseLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 138
    iget-object v1, p0, Lcom/fusepowered/crashlog/CrashDetector;->mCrashHandler:Lcom/fusepowered/crashlog/handlers/CrashHandler;

    if-eqz v1, :cond_0

    .line 139
    invoke-direct {p0, p1, p2}, Lcom/fusepowered/crashlog/CrashDetector;->gatherCrashData(Ljava/lang/Thread;Ljava/lang/Throwable;)Lcom/fusepowered/crashlog/CrashData;

    move-result-object v0

    .line 140
    .local v0, "crashData":Lcom/fusepowered/crashlog/CrashData;
    const-string v1, "CrashDetector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Gathered crash data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/fusepowered/crashlog/CrashData;->toJson()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/fusepowered/logging/FuseLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    iget-object v1, p0, Lcom/fusepowered/crashlog/CrashDetector;->mCrashHandler:Lcom/fusepowered/crashlog/handlers/CrashHandler;

    iget-object v2, p0, Lcom/fusepowered/crashlog/CrashDetector;->mContext:Landroid/content/Context;

    invoke-interface {v1, v0, v2}, Lcom/fusepowered/crashlog/handlers/CrashHandler;->handleCrash(Lcom/fusepowered/crashlog/CrashData;Landroid/content/Context;)Z

    .line 145
    .end local v0    # "crashData":Lcom/fusepowered/crashlog/CrashData;
    :cond_0
    iget-object v1, p0, Lcom/fusepowered/crashlog/CrashDetector;->mExternalExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v1, :cond_1

    .line 146
    const-string v1, "CrashDetector"

    const-string v1, "Forwarding exception to external exception handler"

    invoke-static {v3, v1}, Lcom/fusepowered/logging/FuseLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    iget-object v1, p0, Lcom/fusepowered/crashlog/CrashDetector;->mExternalExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v1, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 150
    :cond_1
    return-void
.end method
