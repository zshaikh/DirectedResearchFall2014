.class public Lcom/fusepowered/crashlog/senders/FuseCrashSender;
.super Ljava/lang/Object;
.source "FuseCrashSender.java"

# interfaces
.implements Lcom/fusepowered/crashlog/senders/CrashSender;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public reportCrashs([Lcom/fusepowered/crashlog/CrashData;Landroid/content/Context;Lcom/fusepowered/crashlog/senders/CrashSender$CrashSenderCallback;)V
    .locals 7
    .parameter "crashes"
    .parameter "context"
    .parameter "callback"

    .prologue
    .line 24
    if-nez p1, :cond_0

    .line 25
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "Crashes may not be null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 27
    :cond_0
    if-nez p2, :cond_1

    .line 28
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "Context may not be null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 31
    :cond_1
    move-object v0, p1

    .local v0, arr$:[Lcom/fusepowered/crashlog/CrashData;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v1, v0, v2

    .line 32
    .local v1, crash:Lcom/fusepowered/crashlog/CrashData;
    invoke-virtual {v1}, Lcom/fusepowered/crashlog/CrashData;->getCrashedThreadState()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/fusepowered/crashlog/CrashData;->getCrashedThreadName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/fusepowered/crashlog/CrashData;->getStackTrace()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/fusepowered/fuseapi/FuseAPI;->registerCrash(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 35
    .end local v1           #crash:Lcom/fusepowered/crashlog/CrashData;
    :cond_2
    if-eqz p3, :cond_3

    .line 36
    const/4 v4, 0x1

    invoke-interface {p3, v4}, Lcom/fusepowered/crashlog/senders/CrashSender$CrashSenderCallback;->onCrashSendFinished(Z)V

    .line 39
    :cond_3
    return-void
.end method
