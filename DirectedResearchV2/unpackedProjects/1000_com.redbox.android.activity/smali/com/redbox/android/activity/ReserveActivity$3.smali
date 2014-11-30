.class Lcom/redbox/android/activity/ReserveActivity$3;
.super Ljava/lang/Object;
.source "ReserveActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/redbox/android/activity/ReserveActivity;->problemReserving(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/redbox/android/activity/ReserveActivity;

.field private final synthetic val$networkError:Z


# direct methods
.method constructor <init>(Lcom/redbox/android/activity/ReserveActivity;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/redbox/android/activity/ReserveActivity$3;->this$0:Lcom/redbox/android/activity/ReserveActivity;

    iput-boolean p2, p0, Lcom/redbox/android/activity/ReserveActivity$3;->val$networkError:Z

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/redbox/android/activity/ReserveActivity$3;)Lcom/redbox/android/activity/ReserveActivity;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/redbox/android/activity/ReserveActivity$3;->this$0:Lcom/redbox/android/activity/ReserveActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 178
    iget-object v2, p0, Lcom/redbox/android/activity/ReserveActivity$3;->this$0:Lcom/redbox/android/activity/ReserveActivity;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/redbox/android/activity/ReserveActivity;->removeDialog(I)V

    .line 180
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/redbox/android/activity/ReserveActivity$3;->this$0:Lcom/redbox/android/activity/ReserveActivity;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 181
    .local v0, "connectionAlert":Landroid/app/AlertDialog$Builder;
    iget-boolean v2, p0, Lcom/redbox/android/activity/ReserveActivity$3;->val$networkError:Z

    if-eqz v2, :cond_0

    .line 182
    iget-object v2, p0, Lcom/redbox/android/activity/ReserveActivity$3;->this$0:Lcom/redbox/android/activity/ReserveActivity;

    const v3, 0x7f05000a

    invoke-virtual {v2, v3}, Lcom/redbox/android/activity/ReserveActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 186
    :goto_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 187
    iget-object v3, p0, Lcom/redbox/android/activity/ReserveActivity$3;->this$0:Lcom/redbox/android/activity/ReserveActivity;

    const v4, 0x7f050008

    invoke-virtual {v3, v4}, Lcom/redbox/android/activity/ReserveActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 188
    new-instance v4, Lcom/redbox/android/activity/ReserveActivity$3$1;

    invoke-direct {v4, p0}, Lcom/redbox/android/activity/ReserveActivity$3$1;-><init>(Lcom/redbox/android/activity/ReserveActivity$3;)V

    .line 187
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 193
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 194
    .local v1, "connectionAlertBox":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 196
    return-void

    .line 184
    .end local v1    # "connectionAlertBox":Landroid/app/AlertDialog;
    :cond_0
    iget-object v2, p0, Lcom/redbox/android/activity/ReserveActivity$3;->this$0:Lcom/redbox/android/activity/ReserveActivity;

    const v3, 0x7f050044

    invoke-virtual {v2, v3}, Lcom/redbox/android/activity/ReserveActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method
