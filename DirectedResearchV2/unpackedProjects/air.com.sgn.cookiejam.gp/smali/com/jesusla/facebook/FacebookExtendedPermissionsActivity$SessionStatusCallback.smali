.class public Lcom/jesusla/facebook/FacebookExtendedPermissionsActivity$SessionStatusCallback;
.super Ljava/lang/Object;
.source "FacebookExtendedPermissionsActivity.java"

# interfaces
.implements Lcom/facebook/Session$StatusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jesusla/facebook/FacebookExtendedPermissionsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SessionStatusCallback"
.end annotation


# instance fields
.field private callbackHash:Ljava/lang/String;

.field final synthetic this$0:Lcom/jesusla/facebook/FacebookExtendedPermissionsActivity;


# direct methods
.method constructor <init>(Lcom/jesusla/facebook/FacebookExtendedPermissionsActivity;Ljava/lang/String;)V
    .locals 0
    .param p2, "pCallbackHash"    # Ljava/lang/String;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/jesusla/facebook/FacebookExtendedPermissionsActivity$SessionStatusCallback;->this$0:Lcom/jesusla/facebook/FacebookExtendedPermissionsActivity;

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p2, p0, Lcom/jesusla/facebook/FacebookExtendedPermissionsActivity$SessionStatusCallback;->callbackHash:Ljava/lang/String;

    .line 25
    return-void
.end method


# virtual methods
.method public call(Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;)V
    .locals 2
    .param p1, "session"    # Lcom/facebook/Session;
    .param p2, "state"    # Lcom/facebook/SessionState;
    .param p3, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 29
    invoke-static {}, Lcom/jesusla/facebook/FacebookLib;->getCurrentInstance()Lcom/jesusla/facebook/FacebookLib;

    move-result-object v0

    iget-object v1, p0, Lcom/jesusla/facebook/FacebookExtendedPermissionsActivity$SessionStatusCallback;->callbackHash:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/jesusla/facebook/FacebookLib;->extendedPermissionsComplete(Ljava/lang/String;Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;)V

    .line 31
    # getter for: Lcom/jesusla/facebook/FacebookExtendedPermissionsActivity;->activity:Lcom/jesusla/facebook/FacebookExtendedPermissionsActivity;
    invoke-static {}, Lcom/jesusla/facebook/FacebookExtendedPermissionsActivity;->access$000()Lcom/jesusla/facebook/FacebookExtendedPermissionsActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 32
    # getter for: Lcom/jesusla/facebook/FacebookExtendedPermissionsActivity;->activity:Lcom/jesusla/facebook/FacebookExtendedPermissionsActivity;
    invoke-static {}, Lcom/jesusla/facebook/FacebookExtendedPermissionsActivity;->access$000()Lcom/jesusla/facebook/FacebookExtendedPermissionsActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jesusla/facebook/FacebookExtendedPermissionsActivity;->finish()V

    .line 34
    :cond_0
    return-void
.end method
