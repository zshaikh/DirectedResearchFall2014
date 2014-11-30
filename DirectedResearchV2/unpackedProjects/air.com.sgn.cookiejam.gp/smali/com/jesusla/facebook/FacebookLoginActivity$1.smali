.class Lcom/jesusla/facebook/FacebookLoginActivity$1;
.super Ljava/lang/Object;
.source "FacebookLoginActivity.java"

# interfaces
.implements Lcom/facebook/Session$StatusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jesusla/facebook/FacebookLoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jesusla/facebook/FacebookLoginActivity;


# direct methods
.method constructor <init>(Lcom/jesusla/facebook/FacebookLoginActivity;)V
    .locals 0

    .prologue
    .line 16
    iput-object p1, p0, Lcom/jesusla/facebook/FacebookLoginActivity$1;->this$0:Lcom/jesusla/facebook/FacebookLoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;)V
    .locals 1
    .param p1, "session"    # Lcom/facebook/Session;
    .param p2, "state"    # Lcom/facebook/SessionState;
    .param p3, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/jesusla/facebook/FacebookLoginActivity$1;->this$0:Lcom/jesusla/facebook/FacebookLoginActivity;

    # invokes: Lcom/jesusla/facebook/FacebookLoginActivity;->onSessionStateChange(Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;)V
    invoke-static {v0, p1, p2, p3}, Lcom/jesusla/facebook/FacebookLoginActivity;->access$000(Lcom/jesusla/facebook/FacebookLoginActivity;Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;)V

    .line 20
    return-void
.end method
