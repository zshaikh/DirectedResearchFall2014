.class Lcom/redbox/android/activity/RBBaseActivity$5;
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
    iput-object p1, p0, Lcom/redbox/android/activity/RBBaseActivity$5;->this$0:Lcom/redbox/android/activity/RBBaseActivity;

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 209
    iget-object v0, p0, Lcom/redbox/android/activity/RBBaseActivity$5;->this$0:Lcom/redbox/android/activity/RBBaseActivity;

    .line 210
    new-instance v1, Landroid/content/Intent;

    .line 211
    const-string v2, "android.settings.LOCATION_SOURCE_SETTINGS"

    .line 210
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 212
    const/4 v2, 0x0

    .line 209
    invoke-virtual {v0, v1, v2}, Lcom/redbox/android/activity/RBBaseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 213
    iget-object v0, p0, Lcom/redbox/android/activity/RBBaseActivity$5;->this$0:Lcom/redbox/android/activity/RBBaseActivity;

    invoke-virtual {v0}, Lcom/redbox/android/activity/RBBaseActivity;->finish()V

    .line 214
    return-void
.end method
