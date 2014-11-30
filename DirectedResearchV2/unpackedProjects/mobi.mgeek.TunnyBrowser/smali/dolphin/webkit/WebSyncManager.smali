.class abstract Ldolphin/webkit/WebSyncManager;
.super Ljava/lang/Object;
.source "WebSyncManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation build Ldolphin/webkit/annotation/KeepAll;
.end annotation


# static fields
.field protected static final LOGTAG:Ljava/lang/String; = "websync"

.field private static SYNC_LATER_INTERVAL:I = 0x0

.field private static final SYNC_MESSAGE:I = 0x65

.field private static SYNC_NOW_INTERVAL:I


# instance fields
.field protected mDataBase:Ldolphin/webkit/WebViewDatabase;

.field protected mHandler:Landroid/os/Handler;

.field private mStartSyncRefCount:I

.field private mSyncThread:Ljava/lang/Thread;

.field private mThreadName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/16 v0, 0x64

    sput v0, Ldolphin/webkit/WebSyncManager;->SYNC_NOW_INTERVAL:I

    .line 35
    const v0, 0x493e0

    sput v0, Ldolphin/webkit/WebSyncManager;->SYNC_LATER_INTERVAL:I

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p2, p0, Ldolphin/webkit/WebSyncManager;->mThreadName:Ljava/lang/String;

    .line 70
    if-eqz p1, :cond_0

    .line 71
    invoke-static {p1}, Ldolphin/webkit/WebViewDatabase;->getInstance(Landroid/content/Context;)Ldolphin/webkit/WebViewDatabase;

    move-result-object v0

    iput-object v0, p0, Ldolphin/webkit/WebSyncManager;->mDataBase:Ldolphin/webkit/WebViewDatabase;

    .line 72
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Ldolphin/webkit/WebSyncManager;->mSyncThread:Ljava/lang/Thread;

    .line 73
    iget-object v0, p0, Ldolphin/webkit/WebSyncManager;->mSyncThread:Ljava/lang/Thread;

    iget-object v1, p0, Ldolphin/webkit/WebSyncManager;->mThreadName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Ldolphin/webkit/WebSyncManager;->mSyncThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 79
    return-void

    .line 76
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "WebSyncManager can\'t be created without context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 29
    sget v0, Ldolphin/webkit/WebSyncManager;->SYNC_LATER_INTERVAL:I

    return v0
.end method


# virtual methods
.method protected clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 82
    new-instance v0, Ljava/lang/CloneNotSupportedException;

    const-string v1, "doesn\'t implement Cloneable"

    invoke-direct {v0, v1}, Ljava/lang/CloneNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected onSyncInit()V
    .locals 0

    .prologue
    .line 164
    return-void
.end method

.method public resetSync()V
    .locals 4

    .prologue
    const/16 v1, 0x65

    .line 121
    iget-object v0, p0, Ldolphin/webkit/WebSyncManager;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 127
    :goto_0
    return-void

    .line 124
    :cond_0
    iget-object v0, p0, Ldolphin/webkit/WebSyncManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 125
    iget-object v0, p0, Ldolphin/webkit/WebSyncManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 126
    iget-object v1, p0, Ldolphin/webkit/WebSyncManager;->mHandler:Landroid/os/Handler;

    sget v2, Ldolphin/webkit/WebSyncManager;->SYNC_LATER_INTERVAL:I

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method public run()V
    .locals 4

    .prologue
    .line 87
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 88
    new-instance v0, Ldolphin/webkit/hx;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ldolphin/webkit/hx;-><init>(Ldolphin/webkit/WebSyncManager;Ldolphin/webkit/hw;)V

    iput-object v0, p0, Ldolphin/webkit/WebSyncManager;->mHandler:Landroid/os/Handler;

    .line 89
    invoke-virtual {p0}, Ldolphin/webkit/WebSyncManager;->onSyncInit()V

    .line 91
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 93
    iget-object v0, p0, Ldolphin/webkit/WebSyncManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 94
    iget-object v1, p0, Ldolphin/webkit/WebSyncManager;->mHandler:Landroid/os/Handler;

    sget v2, Ldolphin/webkit/WebSyncManager;->SYNC_LATER_INTERVAL:I

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 96
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 97
    return-void
.end method

.method public startSync()V
    .locals 4

    .prologue
    .line 137
    iget-object v0, p0, Ldolphin/webkit/WebSyncManager;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 144
    :cond_0
    :goto_0
    return-void

    .line 140
    :cond_1
    iget v0, p0, Ldolphin/webkit/WebSyncManager;->mStartSyncRefCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ldolphin/webkit/WebSyncManager;->mStartSyncRefCount:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 141
    iget-object v0, p0, Ldolphin/webkit/WebSyncManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 142
    iget-object v1, p0, Ldolphin/webkit/WebSyncManager;->mHandler:Landroid/os/Handler;

    sget v2, Ldolphin/webkit/WebSyncManager;->SYNC_LATER_INTERVAL:I

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method public stopSync()V
    .locals 2

    .prologue
    .line 155
    iget-object v0, p0, Ldolphin/webkit/WebSyncManager;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 158
    :cond_1
    iget v0, p0, Ldolphin/webkit/WebSyncManager;->mStartSyncRefCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ldolphin/webkit/WebSyncManager;->mStartSyncRefCount:I

    if-nez v0, :cond_0

    .line 159
    iget-object v0, p0, Ldolphin/webkit/WebSyncManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0
.end method

.method public sync()V
    .locals 4

    .prologue
    const/16 v1, 0x65

    .line 106
    iget-object v0, p0, Ldolphin/webkit/WebSyncManager;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 112
    :goto_0
    return-void

    .line 109
    :cond_0
    iget-object v0, p0, Ldolphin/webkit/WebSyncManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 110
    iget-object v0, p0, Ldolphin/webkit/WebSyncManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 111
    iget-object v1, p0, Ldolphin/webkit/WebSyncManager;->mHandler:Landroid/os/Handler;

    sget v2, Ldolphin/webkit/WebSyncManager;->SYNC_NOW_INTERVAL:I

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method abstract syncFromRamToFlash()V
.end method
