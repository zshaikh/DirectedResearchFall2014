.class Lcom/redbox/android/activity/FindRedboxActivity$7;
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
    iput-object p1, p0, Lcom/redbox/android/activity/FindRedboxActivity$7;->this$0:Lcom/redbox/android/activity/FindRedboxActivity;

    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 241
    iget-object v0, p0, Lcom/redbox/android/activity/FindRedboxActivity$7;->this$0:Lcom/redbox/android/activity/FindRedboxActivity;

    iget-object v0, v0, Lcom/redbox/android/activity/FindRedboxActivity;->input:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/redbox/android/activity/FindRedboxActivity$7;->this$0:Lcom/redbox/android/activity/FindRedboxActivity;

    const-string v1, "Please enter an address"

    iput-object v1, v0, Lcom/redbox/android/activity/FindRedboxActivity;->alertBoxMsg:Ljava/lang/String;

    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "No address entered , msg : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 247
    iget-object v1, p0, Lcom/redbox/android/activity/FindRedboxActivity$7;->this$0:Lcom/redbox/android/activity/FindRedboxActivity;

    iget-object v1, v1, Lcom/redbox/android/activity/FindRedboxActivity;->alertBoxMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 246
    invoke-static {p0, v0}, Lcom/redbox/android/utils/RBLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 248
    iget-object v0, p0, Lcom/redbox/android/activity/FindRedboxActivity$7;->this$0:Lcom/redbox/android/activity/FindRedboxActivity;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/redbox/android/activity/FindRedboxActivity;->showDialog(I)V

    .line 257
    :goto_0
    return-void

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/redbox/android/activity/FindRedboxActivity$7;->this$0:Lcom/redbox/android/activity/FindRedboxActivity;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/redbox/android/activity/FindRedboxActivity;->showDialog(I)V

    .line 252
    iget-object v0, p0, Lcom/redbox/android/activity/FindRedboxActivity$7;->this$0:Lcom/redbox/android/activity/FindRedboxActivity;

    iget-object v0, v0, Lcom/redbox/android/activity/FindRedboxActivity;->progressDialog:Landroid/app/ProgressDialog;

    .line 253
    iget-object v1, p0, Lcom/redbox/android/activity/FindRedboxActivity$7;->this$0:Lcom/redbox/android/activity/FindRedboxActivity;

    const v2, 0x7f05001c

    invoke-virtual {v1, v2}, Lcom/redbox/android/activity/FindRedboxActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 254
    iget-object v0, p0, Lcom/redbox/android/activity/FindRedboxActivity$7;->this$0:Lcom/redbox/android/activity/FindRedboxActivity;

    invoke-virtual {v0}, Lcom/redbox/android/activity/FindRedboxActivity;->findgeocode()V

    goto :goto_0
.end method
