.class Lcom/redbox/android/activity/LoginActivity$3;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/redbox/android/activity/LoginActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/redbox/android/activity/LoginActivity;


# direct methods
.method constructor <init>(Lcom/redbox/android/activity/LoginActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/redbox/android/activity/LoginActivity$3;->this$0:Lcom/redbox/android/activity/LoginActivity;

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 124
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/redbox/android/activity/LoginActivity$3;->this$0:Lcom/redbox/android/activity/LoginActivity;

    .line 125
    const-class v2, Lcom/redbox/android/activity/ForgotPasswordActivity;

    .line 124
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 126
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/redbox/android/activity/LoginActivity$3;->this$0:Lcom/redbox/android/activity/LoginActivity;

    invoke-virtual {v1, v0}, Lcom/redbox/android/activity/LoginActivity;->startActivity(Landroid/content/Intent;)V

    .line 128
    return-void
.end method
