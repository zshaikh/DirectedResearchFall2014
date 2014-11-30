.class Lcom/redbox/android/activity/CreateAccountActivity$1;
.super Ljava/lang/Object;
.source "CreateAccountActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/redbox/android/activity/CreateAccountActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/redbox/android/activity/CreateAccountActivity;


# direct methods
.method constructor <init>(Lcom/redbox/android/activity/CreateAccountActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/redbox/android/activity/CreateAccountActivity$1;->this$0:Lcom/redbox/android/activity/CreateAccountActivity;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 74
    const-string v0, "Shutting down connections"

    invoke-static {p0, v0}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    invoke-static {}, Lcom/redbox/android/http/ConnectionManager;->getInstance()Lcom/redbox/android/http/ConnectionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/redbox/android/http/ConnectionManager;->shutDown()V

    .line 76
    iget-object v0, p0, Lcom/redbox/android/activity/CreateAccountActivity$1;->this$0:Lcom/redbox/android/activity/CreateAccountActivity;

    invoke-virtual {v0}, Lcom/redbox/android/activity/CreateAccountActivity;->finish()V

    .line 77
    return-void
.end method
