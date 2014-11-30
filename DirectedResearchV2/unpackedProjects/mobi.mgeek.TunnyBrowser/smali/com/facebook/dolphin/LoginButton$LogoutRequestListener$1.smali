.class Lcom/facebook/dolphin/LoginButton$LogoutRequestListener$1;
.super Ljava/lang/Object;
.source "LoginButton.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/facebook/dolphin/LoginButton$LogoutRequestListener;


# direct methods
.method constructor <init>(Lcom/facebook/dolphin/LoginButton$LogoutRequestListener;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/facebook/dolphin/LoginButton$LogoutRequestListener$1;->this$1:Lcom/facebook/dolphin/LoginButton$LogoutRequestListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 123
    invoke-static {}, Lcom/facebook/dolphin/SessionEvents;->onLogoutFinish()V

    .line 124
    return-void
.end method
