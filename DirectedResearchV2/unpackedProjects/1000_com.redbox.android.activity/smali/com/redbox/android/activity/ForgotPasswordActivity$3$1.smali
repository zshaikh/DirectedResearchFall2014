.class Lcom/redbox/android/activity/ForgotPasswordActivity$3$1;
.super Ljava/lang/Object;
.source "ForgotPasswordActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/redbox/android/activity/ForgotPasswordActivity$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/redbox/android/activity/ForgotPasswordActivity$3;


# direct methods
.method constructor <init>(Lcom/redbox/android/activity/ForgotPasswordActivity$3;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/redbox/android/activity/ForgotPasswordActivity$3$1;->this$1:Lcom/redbox/android/activity/ForgotPasswordActivity$3;

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 184
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 185
    return-void
.end method