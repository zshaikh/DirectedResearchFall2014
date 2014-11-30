.class Lcom/redbox/android/activity/ForgotPasswordActivity$2$1;
.super Ljava/lang/Object;
.source "ForgotPasswordActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/redbox/android/activity/ForgotPasswordActivity$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/redbox/android/activity/ForgotPasswordActivity$2;


# direct methods
.method constructor <init>(Lcom/redbox/android/activity/ForgotPasswordActivity$2;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/redbox/android/activity/ForgotPasswordActivity$2$1;->this$1:Lcom/redbox/android/activity/ForgotPasswordActivity$2;

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 161
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 162
    iget-object v0, p0, Lcom/redbox/android/activity/ForgotPasswordActivity$2$1;->this$1:Lcom/redbox/android/activity/ForgotPasswordActivity$2;

    # getter for: Lcom/redbox/android/activity/ForgotPasswordActivity$2;->this$0:Lcom/redbox/android/activity/ForgotPasswordActivity;
    invoke-static {v0}, Lcom/redbox/android/activity/ForgotPasswordActivity$2;->access$0(Lcom/redbox/android/activity/ForgotPasswordActivity$2;)Lcom/redbox/android/activity/ForgotPasswordActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/redbox/android/activity/ForgotPasswordActivity;->finish()V

    .line 163
    return-void
.end method
