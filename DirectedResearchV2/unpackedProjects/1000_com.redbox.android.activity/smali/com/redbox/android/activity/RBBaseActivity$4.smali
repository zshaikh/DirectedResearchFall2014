.class Lcom/redbox/android/activity/RBBaseActivity$4;
.super Ljava/lang/Object;
.source "RBBaseActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/redbox/android/activity/RBBaseActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/redbox/android/activity/RBBaseActivity;


# direct methods
.method constructor <init>(Lcom/redbox/android/activity/RBBaseActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/redbox/android/activity/RBBaseActivity$4;->this$0:Lcom/redbox/android/activity/RBBaseActivity;

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 194
    iget-object v0, p0, Lcom/redbox/android/activity/RBBaseActivity$4;->this$0:Lcom/redbox/android/activity/RBBaseActivity;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/redbox/android/activity/RBBaseActivity;->removeDialog(I)V

    .line 195
    iget-object v0, p0, Lcom/redbox/android/activity/RBBaseActivity$4;->this$0:Lcom/redbox/android/activity/RBBaseActivity;

    invoke-virtual {v0}, Lcom/redbox/android/activity/RBBaseActivity;->finish()V

    .line 196
    return-void
.end method
