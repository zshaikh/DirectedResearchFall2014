.class Lcom/redbox/android/activity/FindRedboxActivity$5;
.super Ljava/lang/Object;
.source "FindRedboxActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/redbox/android/activity/FindRedboxActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/redbox/android/activity/FindRedboxActivity;


# direct methods
.method constructor <init>(Lcom/redbox/android/activity/FindRedboxActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/redbox/android/activity/FindRedboxActivity$5;->this$0:Lcom/redbox/android/activity/FindRedboxActivity;

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 196
    instance-of v2, p1, Lcom/redbox/android/view/SelectKioskImageButton;

    if-eqz v2, :cond_0

    .line 197
    iget-object v2, p0, Lcom/redbox/android/activity/FindRedboxActivity$5;->this$0:Lcom/redbox/android/activity/FindRedboxActivity;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/redbox/android/activity/FindRedboxActivity;->showDialog(I)V

    .line 198
    iget-object v2, p0, Lcom/redbox/android/activity/FindRedboxActivity$5;->this$0:Lcom/redbox/android/activity/FindRedboxActivity;

    iget-object v2, v2, Lcom/redbox/android/activity/FindRedboxActivity;->progressDialog:Landroid/app/ProgressDialog;

    .line 199
    iget-object v3, p0, Lcom/redbox/android/activity/FindRedboxActivity$5;->this$0:Lcom/redbox/android/activity/FindRedboxActivity;

    const v4, 0x7f05003c

    invoke-virtual {v3, v4}, Lcom/redbox/android/activity/FindRedboxActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 200
    move-object v0, p1

    check-cast v0, Lcom/redbox/android/view/SelectKioskImageButton;

    move-object v1, v0

    .line 201
    .local v1, "button":Lcom/redbox/android/view/SelectKioskImageButton;
    invoke-static {}, Lcom/redbox/android/model/SelectedKioskManager;->getInstance()Lcom/redbox/android/model/SelectedKioskManager;

    move-result-object v2

    .line 202
    invoke-virtual {v1}, Lcom/redbox/android/view/SelectKioskImageButton;->getKiosk()Lcom/redbox/android/model/Kiosk;

    move-result-object v3

    .line 201
    invoke-virtual {v2, v3}, Lcom/redbox/android/model/SelectedKioskManager;->changeSelectedKiosk(Lcom/redbox/android/model/Kiosk;)V

    .line 205
    .end local v1    # "button":Lcom/redbox/android/view/SelectKioskImageButton;
    :cond_0
    return-void
.end method
