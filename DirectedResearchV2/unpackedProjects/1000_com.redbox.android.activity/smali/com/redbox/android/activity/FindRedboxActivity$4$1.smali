.class Lcom/redbox/android/activity/FindRedboxActivity$4$1;
.super Ljava/lang/Object;
.source "FindRedboxActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/redbox/android/activity/FindRedboxActivity$4;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/redbox/android/activity/FindRedboxActivity$4;


# direct methods
.method constructor <init>(Lcom/redbox/android/activity/FindRedboxActivity$4;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/redbox/android/activity/FindRedboxActivity$4$1;->this$1:Lcom/redbox/android/activity/FindRedboxActivity$4;

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/redbox/android/activity/FindRedboxActivity$4$1;->this$1:Lcom/redbox/android/activity/FindRedboxActivity$4;

    # getter for: Lcom/redbox/android/activity/FindRedboxActivity$4;->this$0:Lcom/redbox/android/activity/FindRedboxActivity;
    invoke-static {v0}, Lcom/redbox/android/activity/FindRedboxActivity$4;->access$0(Lcom/redbox/android/activity/FindRedboxActivity$4;)Lcom/redbox/android/activity/FindRedboxActivity;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/redbox/android/activity/FindRedboxActivity;->showDialog(I)V

    .line 101
    iget-object v0, p0, Lcom/redbox/android/activity/FindRedboxActivity$4$1;->this$1:Lcom/redbox/android/activity/FindRedboxActivity$4;

    # getter for: Lcom/redbox/android/activity/FindRedboxActivity$4;->this$0:Lcom/redbox/android/activity/FindRedboxActivity;
    invoke-static {v0}, Lcom/redbox/android/activity/FindRedboxActivity$4;->access$0(Lcom/redbox/android/activity/FindRedboxActivity$4;)Lcom/redbox/android/activity/FindRedboxActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/redbox/android/activity/FindRedboxActivity;->progressDialog:Landroid/app/ProgressDialog;

    .line 102
    const-string v1, "Updating selected Kiosk Inventory"

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 103
    return-void
.end method
