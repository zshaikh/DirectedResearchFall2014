.class Lcom/redbox/android/activity/ChangePasswordActivity$2$1;
.super Ljava/lang/Object;
.source "ChangePasswordActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/redbox/android/activity/ChangePasswordActivity$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/redbox/android/activity/ChangePasswordActivity$2;


# direct methods
.method constructor <init>(Lcom/redbox/android/activity/ChangePasswordActivity$2;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/redbox/android/activity/ChangePasswordActivity$2$1;->this$1:Lcom/redbox/android/activity/ChangePasswordActivity$2;

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 157
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 158
    iget-object v0, p0, Lcom/redbox/android/activity/ChangePasswordActivity$2$1;->this$1:Lcom/redbox/android/activity/ChangePasswordActivity$2;

    # getter for: Lcom/redbox/android/activity/ChangePasswordActivity$2;->this$0:Lcom/redbox/android/activity/ChangePasswordActivity;
    invoke-static {v0}, Lcom/redbox/android/activity/ChangePasswordActivity$2;->access$0(Lcom/redbox/android/activity/ChangePasswordActivity$2;)Lcom/redbox/android/activity/ChangePasswordActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/redbox/android/activity/ChangePasswordActivity;->finish()V

    .line 159
    return-void
.end method
