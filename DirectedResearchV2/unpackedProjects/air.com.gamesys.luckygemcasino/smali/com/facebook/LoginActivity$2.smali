.class Lcom/facebook/LoginActivity$2;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Lcom/facebook/AuthorizationClient$BackgroundProcessingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/LoginActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/LoginActivity;


# direct methods
.method constructor <init>(Lcom/facebook/LoginActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/facebook/LoginActivity$2;->this$0:Lcom/facebook/LoginActivity;

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackgroundProcessingStarted()V
    .locals 3

    .prologue
    .line 87
    iget-object v1, p0, Lcom/facebook/LoginActivity$2;->this$0:Lcom/facebook/LoginActivity;

    .line 88
    # getter for: Lcom/facebook/LoginActivity;->asContext:Lcom/gamesys/android/social/facebook/ane/FacebookContext;
    invoke-static {}, Lcom/facebook/LoginActivity;->access$1()Lcom/gamesys/android/social/facebook/ane/FacebookContext;

    move-result-object v0

    if-eqz v0, :cond_0

    # getter for: Lcom/facebook/LoginActivity;->asContext:Lcom/gamesys/android/social/facebook/ane/FacebookContext;
    invoke-static {}, Lcom/facebook/LoginActivity;->access$1()Lcom/gamesys/android/social/facebook/ane/FacebookContext;

    move-result-object v0

    const-string v2, "id.com_facebook_login_activity_progress_bar"

    invoke-virtual {v0, v2}, Lcom/gamesys/android/social/facebook/ane/FacebookContext;->getResourceId(Ljava/lang/String;)I

    move-result v0

    .line 87
    :goto_0
    invoke-virtual {v1, v0}, Lcom/facebook/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 89
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 90
    return-void

    .line 89
    :cond_0
    const v0, 0x7f040005

    goto :goto_0
.end method

.method public onBackgroundProcessingStopped()V
    .locals 3

    .prologue
    .line 94
    iget-object v1, p0, Lcom/facebook/LoginActivity$2;->this$0:Lcom/facebook/LoginActivity;

    .line 95
    # getter for: Lcom/facebook/LoginActivity;->asContext:Lcom/gamesys/android/social/facebook/ane/FacebookContext;
    invoke-static {}, Lcom/facebook/LoginActivity;->access$1()Lcom/gamesys/android/social/facebook/ane/FacebookContext;

    move-result-object v0

    if-eqz v0, :cond_0

    # getter for: Lcom/facebook/LoginActivity;->asContext:Lcom/gamesys/android/social/facebook/ane/FacebookContext;
    invoke-static {}, Lcom/facebook/LoginActivity;->access$1()Lcom/gamesys/android/social/facebook/ane/FacebookContext;

    move-result-object v0

    const-string v2, "id.com_facebook_login_activity_progress_bar"

    invoke-virtual {v0, v2}, Lcom/gamesys/android/social/facebook/ane/FacebookContext;->getResourceId(Ljava/lang/String;)I

    move-result v0

    .line 94
    :goto_0
    invoke-virtual {v1, v0}, Lcom/facebook/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 96
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 97
    return-void

    .line 96
    :cond_0
    const v0, 0x7f040005

    goto :goto_0
.end method
