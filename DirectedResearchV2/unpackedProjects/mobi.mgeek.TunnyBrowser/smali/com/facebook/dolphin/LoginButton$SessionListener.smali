.class Lcom/facebook/dolphin/LoginButton$SessionListener;
.super Ljava/lang/Object;
.source "LoginButton.java"

# interfaces
.implements Lcom/facebook/dolphin/SessionEvents$AuthListener;
.implements Lcom/facebook/dolphin/SessionEvents$LogoutListener;


# instance fields
.field final synthetic this$0:Lcom/facebook/dolphin/LoginButton;


# direct methods
.method private constructor <init>(Lcom/facebook/dolphin/LoginButton;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcom/facebook/dolphin/LoginButton$SessionListener;->this$0:Lcom/facebook/dolphin/LoginButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/dolphin/LoginButton;Lcom/facebook/dolphin/LoginButton$1;)V
    .locals 0

    .prologue
    .line 129
    invoke-direct {p0, p1}, Lcom/facebook/dolphin/LoginButton$SessionListener;-><init>(Lcom/facebook/dolphin/LoginButton;)V

    return-void
.end method


# virtual methods
.method public onAuthFail(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 139
    return-void
.end method

.method public onAuthSucceed()V
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/facebook/dolphin/LoginButton$SessionListener;->this$0:Lcom/facebook/dolphin/LoginButton;

    sget-object v1, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v1, 0x7f0201d9

    invoke-virtual {v0, v1}, Lcom/facebook/dolphin/LoginButton;->setImageResource(I)V

    .line 134
    iget-object v0, p0, Lcom/facebook/dolphin/LoginButton$SessionListener;->this$0:Lcom/facebook/dolphin/LoginButton;

    # getter for: Lcom/facebook/dolphin/LoginButton;->mFb:Lcom/facebook/dolphin/Facebook;
    invoke-static {v0}, Lcom/facebook/dolphin/LoginButton;->access$200(Lcom/facebook/dolphin/LoginButton;)Lcom/facebook/dolphin/Facebook;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/dolphin/LoginButton$SessionListener;->this$0:Lcom/facebook/dolphin/LoginButton;

    invoke-virtual {v1}, Lcom/facebook/dolphin/LoginButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/dolphin/SessionStore;->save(Lcom/facebook/dolphin/Facebook;Landroid/content/Context;)Z

    .line 135
    return-void
.end method

.method public onLogoutBegin()V
    .locals 0

    .prologue
    .line 143
    return-void
.end method

.method public onLogoutFinish()V
    .locals 2

    .prologue
    .line 147
    iget-object v0, p0, Lcom/facebook/dolphin/LoginButton$SessionListener;->this$0:Lcom/facebook/dolphin/LoginButton;

    invoke-virtual {v0}, Lcom/facebook/dolphin/LoginButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/dolphin/SessionStore;->clear(Landroid/content/Context;)V

    .line 148
    iget-object v0, p0, Lcom/facebook/dolphin/LoginButton$SessionListener;->this$0:Lcom/facebook/dolphin/LoginButton;

    sget-object v1, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v1, 0x7f0201d6

    invoke-virtual {v0, v1}, Lcom/facebook/dolphin/LoginButton;->setImageResource(I)V

    .line 149
    return-void
.end method
