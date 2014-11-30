.class public Lcom/jesusla/facebook/FacebookLib$SessionStatusCallback;
.super Ljava/lang/Object;
.source "FacebookLib.java"

# interfaces
.implements Lcom/facebook/Session$StatusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jesusla/facebook/FacebookLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SessionStatusCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jesusla/facebook/FacebookLib;


# direct methods
.method public constructor <init>(Lcom/jesusla/facebook/FacebookLib;)V
    .locals 0

    .prologue
    .line 251
    iput-object p1, p0, Lcom/jesusla/facebook/FacebookLib$SessionStatusCallback;->this$0:Lcom/jesusla/facebook/FacebookLib;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;)V
    .locals 4
    .param p1, "session"    # Lcom/facebook/Session;
    .param p2, "state"    # Lcom/facebook/SessionState;
    .param p3, "exception"    # Ljava/lang/Exception;

    .prologue
    const-string v3, "SESSION"

    .line 254
    sget-object v0, Lcom/facebook/SessionState;->OPENED:Lcom/facebook/SessionState;

    if-eq p2, v0, :cond_0

    sget-object v0, Lcom/facebook/SessionState;->OPENED_TOKEN_UPDATED:Lcom/facebook/SessionState;

    if-ne p2, v0, :cond_2

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/jesusla/facebook/FacebookLib$SessionStatusCallback;->this$0:Lcom/jesusla/facebook/FacebookLib;

    const-string v1, "LOGIN"

    const-string v2, "SESSION"

    invoke-virtual {v0, v1, v3}, Lcom/jesusla/facebook/FacebookLib;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    :cond_1
    :goto_0
    return-void

    .line 256
    :cond_2
    sget-object v0, Lcom/facebook/SessionState;->CLOSED_LOGIN_FAILED:Lcom/facebook/SessionState;

    if-ne p2, v0, :cond_1

    .line 257
    iget-object v0, p0, Lcom/jesusla/facebook/FacebookLib$SessionStatusCallback;->this$0:Lcom/jesusla/facebook/FacebookLib;

    const-string v1, "LOGIN_FAILED"

    const-string v2, "SESSION"

    invoke-virtual {v0, v1, v3}, Lcom/jesusla/facebook/FacebookLib;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
