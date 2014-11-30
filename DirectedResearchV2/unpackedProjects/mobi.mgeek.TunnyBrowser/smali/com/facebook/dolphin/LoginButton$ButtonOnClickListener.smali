.class final Lcom/facebook/dolphin/LoginButton$ButtonOnClickListener;
.super Ljava/lang/Object;
.source "LoginButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/facebook/dolphin/LoginButton;


# direct methods
.method private constructor <init>(Lcom/facebook/dolphin/LoginButton;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/facebook/dolphin/LoginButton$ButtonOnClickListener;->this$0:Lcom/facebook/dolphin/LoginButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/dolphin/LoginButton;Lcom/facebook/dolphin/LoginButton$1;)V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/facebook/dolphin/LoginButton$ButtonOnClickListener;-><init>(Lcom/facebook/dolphin/LoginButton;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 81
    iget-object v0, p0, Lcom/facebook/dolphin/LoginButton$ButtonOnClickListener;->this$0:Lcom/facebook/dolphin/LoginButton;

    # getter for: Lcom/facebook/dolphin/LoginButton;->mFb:Lcom/facebook/dolphin/Facebook;
    invoke-static {v0}, Lcom/facebook/dolphin/LoginButton;->access$200(Lcom/facebook/dolphin/LoginButton;)Lcom/facebook/dolphin/Facebook;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/dolphin/Facebook;->isSessionValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    invoke-static {}, Lcom/facebook/dolphin/SessionEvents;->onLogoutBegin()V

    .line 83
    new-instance v0, Lcom/facebook/dolphin/AsyncFacebookRunner;

    iget-object v1, p0, Lcom/facebook/dolphin/LoginButton$ButtonOnClickListener;->this$0:Lcom/facebook/dolphin/LoginButton;

    # getter for: Lcom/facebook/dolphin/LoginButton;->mFb:Lcom/facebook/dolphin/Facebook;
    invoke-static {v1}, Lcom/facebook/dolphin/LoginButton;->access$200(Lcom/facebook/dolphin/LoginButton;)Lcom/facebook/dolphin/Facebook;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/dolphin/AsyncFacebookRunner;-><init>(Lcom/facebook/dolphin/Facebook;)V

    .line 84
    iget-object v1, p0, Lcom/facebook/dolphin/LoginButton$ButtonOnClickListener;->this$0:Lcom/facebook/dolphin/LoginButton;

    invoke-virtual {v1}, Lcom/facebook/dolphin/LoginButton;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/facebook/dolphin/LoginButton$LogoutRequestListener;

    iget-object v3, p0, Lcom/facebook/dolphin/LoginButton$ButtonOnClickListener;->this$0:Lcom/facebook/dolphin/LoginButton;

    invoke-direct {v2, v3, v6}, Lcom/facebook/dolphin/LoginButton$LogoutRequestListener;-><init>(Lcom/facebook/dolphin/LoginButton;Lcom/facebook/dolphin/LoginButton$1;)V

    invoke-virtual {v0, v1, v2}, Lcom/facebook/dolphin/AsyncFacebookRunner;->logout(Landroid/content/Context;Lcom/facebook/dolphin/AsyncFacebookRunner$RequestListener;)V

    .line 88
    :goto_0
    return-void

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/facebook/dolphin/LoginButton$ButtonOnClickListener;->this$0:Lcom/facebook/dolphin/LoginButton;

    # getter for: Lcom/facebook/dolphin/LoginButton;->mFb:Lcom/facebook/dolphin/Facebook;
    invoke-static {v0}, Lcom/facebook/dolphin/LoginButton;->access$200(Lcom/facebook/dolphin/LoginButton;)Lcom/facebook/dolphin/Facebook;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/dolphin/LoginButton$ButtonOnClickListener;->this$0:Lcom/facebook/dolphin/LoginButton;

    # getter for: Lcom/facebook/dolphin/LoginButton;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/facebook/dolphin/LoginButton;->access$400(Lcom/facebook/dolphin/LoginButton;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/dolphin/LoginButton$ButtonOnClickListener;->this$0:Lcom/facebook/dolphin/LoginButton;

    # getter for: Lcom/facebook/dolphin/LoginButton;->mPermissions:[Ljava/lang/String;
    invoke-static {v2}, Lcom/facebook/dolphin/LoginButton;->access$500(Lcom/facebook/dolphin/LoginButton;)[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/dolphin/LoginButton$ButtonOnClickListener;->this$0:Lcom/facebook/dolphin/LoginButton;

    # getter for: Lcom/facebook/dolphin/LoginButton;->mActivityCode:I
    invoke-static {v3}, Lcom/facebook/dolphin/LoginButton;->access$600(Lcom/facebook/dolphin/LoginButton;)I

    move-result v3

    new-instance v4, Lcom/facebook/dolphin/LoginButton$LoginDialogListener;

    iget-object v5, p0, Lcom/facebook/dolphin/LoginButton$ButtonOnClickListener;->this$0:Lcom/facebook/dolphin/LoginButton;

    invoke-direct {v4, v5, v6}, Lcom/facebook/dolphin/LoginButton$LoginDialogListener;-><init>(Lcom/facebook/dolphin/LoginButton;Lcom/facebook/dolphin/LoginButton$1;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/facebook/dolphin/Facebook;->authorize(Landroid/app/Activity;[Ljava/lang/String;ILcom/facebook/dolphin/Facebook$DialogListener;)V

    goto :goto_0
.end method
