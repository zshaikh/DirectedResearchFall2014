.class public abstract Lcom/redbox/android/http/ServerResponseHandler;
.super Landroid/os/Handler;
.source "ServerResponseHandler.java"


# static fields
.field public static final MSG_ABORTED:I = 0x4

.field public static final MSG_ERROR:I = 0x3

.field public static final MSG_FINISHED:I = 0x2

.field public static final MSG_ON_RECV:I = 0x1

.field public static final MSG_SET_LENGTH:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public sendAborted()V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/redbox/android/http/ServerResponseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/redbox/android/http/ServerResponseHandler;->sendMessage(Landroid/os/Message;)Z

    .line 40
    return-void
.end method

.method public sendError(Ljava/lang/String;)V
    .locals 1
    .param p1, "errmsg"    # Ljava/lang/String;

    .prologue
    .line 34
    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1}, Lcom/redbox/android/http/ServerResponseHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/redbox/android/http/ServerResponseHandler;->sendMessage(Landroid/os/Message;)Z

    .line 35
    return-void
.end method

.method public sendFinished()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/redbox/android/http/ServerResponseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/redbox/android/http/ServerResponseHandler;->sendMessage(Landroid/os/Message;)Z

    .line 30
    return-void
.end method

.method public sendOnRecv(J)V
    .locals 2
    .param p1, "recvd"    # J

    .prologue
    .line 24
    const/4 v0, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/redbox/android/http/ServerResponseHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/redbox/android/http/ServerResponseHandler;->sendMessage(Landroid/os/Message;)Z

    .line 25
    return-void
.end method

.method public sendSetLength(J)V
    .locals 2
    .param p1, "length"    # J

    .prologue
    .line 19
    const/4 v0, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/redbox/android/http/ServerResponseHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/redbox/android/http/ServerResponseHandler;->sendMessage(Landroid/os/Message;)Z

    .line 20
    return-void
.end method
