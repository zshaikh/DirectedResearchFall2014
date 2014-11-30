.class Lcom/redbox/android/activity/MapViewActivity$1$2;
.super Ljava/lang/Object;
.source "MapViewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/redbox/android/activity/MapViewActivity$1;->locationTimeout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/redbox/android/activity/MapViewActivity$1;


# direct methods
.method constructor <init>(Lcom/redbox/android/activity/MapViewActivity$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/redbox/android/activity/MapViewActivity$1$2;->this$1:Lcom/redbox/android/activity/MapViewActivity$1;

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 209
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/redbox/android/activity/MapViewActivity$1$2;->this$1:Lcom/redbox/android/activity/MapViewActivity$1;

    # getter for: Lcom/redbox/android/activity/MapViewActivity$1;->this$0:Lcom/redbox/android/activity/MapViewActivity;
    invoke-static {v2}, Lcom/redbox/android/activity/MapViewActivity$1;->access$0(Lcom/redbox/android/activity/MapViewActivity$1;)Lcom/redbox/android/activity/MapViewActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 210
    .local v0, "timeOutAlert":Landroid/app/AlertDialog$Builder;
    iget-object v2, p0, Lcom/redbox/android/activity/MapViewActivity$1$2;->this$1:Lcom/redbox/android/activity/MapViewActivity$1;

    # getter for: Lcom/redbox/android/activity/MapViewActivity$1;->this$0:Lcom/redbox/android/activity/MapViewActivity;
    invoke-static {v2}, Lcom/redbox/android/activity/MapViewActivity$1;->access$0(Lcom/redbox/android/activity/MapViewActivity$1;)Lcom/redbox/android/activity/MapViewActivity;

    move-result-object v2

    const v3, 0x7f050030

    invoke-virtual {v2, v3}, Lcom/redbox/android/activity/MapViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 211
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 212
    iget-object v3, p0, Lcom/redbox/android/activity/MapViewActivity$1$2;->this$1:Lcom/redbox/android/activity/MapViewActivity$1;

    # getter for: Lcom/redbox/android/activity/MapViewActivity$1;->this$0:Lcom/redbox/android/activity/MapViewActivity;
    invoke-static {v3}, Lcom/redbox/android/activity/MapViewActivity$1;->access$0(Lcom/redbox/android/activity/MapViewActivity$1;)Lcom/redbox/android/activity/MapViewActivity;

    move-result-object v3

    const v4, 0x7f050008

    invoke-virtual {v3, v4}, Lcom/redbox/android/activity/MapViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 213
    new-instance v4, Lcom/redbox/android/activity/MapViewActivity$1$2$1;

    invoke-direct {v4, p0}, Lcom/redbox/android/activity/MapViewActivity$1$2$1;-><init>(Lcom/redbox/android/activity/MapViewActivity$1$2;)V

    .line 212
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 218
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 219
    .local v1, "timeoutAlertBox":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 221
    return-void
.end method
