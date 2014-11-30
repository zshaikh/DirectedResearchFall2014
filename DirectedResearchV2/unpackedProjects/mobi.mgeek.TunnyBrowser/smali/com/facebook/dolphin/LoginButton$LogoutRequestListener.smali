.class Lcom/facebook/dolphin/LoginButton$LogoutRequestListener;
.super Lcom/facebook/dolphin/BaseRequestListener;
.source "LoginButton.java"


# instance fields
.field final synthetic this$0:Lcom/facebook/dolphin/LoginButton;


# direct methods
.method private constructor <init>(Lcom/facebook/dolphin/LoginButton;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/facebook/dolphin/LoginButton$LogoutRequestListener;->this$0:Lcom/facebook/dolphin/LoginButton;

    invoke-direct {p0}, Lcom/facebook/dolphin/BaseRequestListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/dolphin/LoginButton;Lcom/facebook/dolphin/LoginButton$1;)V
    .locals 0

    .prologue
    .line 113
    invoke-direct {p0, p1}, Lcom/facebook/dolphin/LoginButton$LogoutRequestListener;-><init>(Lcom/facebook/dolphin/LoginButton;)V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/facebook/dolphin/LoginButton$LogoutRequestListener;->this$0:Lcom/facebook/dolphin/LoginButton;

    # getter for: Lcom/facebook/dolphin/LoginButton;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/facebook/dolphin/LoginButton;->access$800(Lcom/facebook/dolphin/LoginButton;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/facebook/dolphin/LoginButton$LogoutRequestListener$1;

    invoke-direct {v1, p0}, Lcom/facebook/dolphin/LoginButton$LogoutRequestListener$1;-><init>(Lcom/facebook/dolphin/LoginButton$LogoutRequestListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 126
    return-void
.end method
