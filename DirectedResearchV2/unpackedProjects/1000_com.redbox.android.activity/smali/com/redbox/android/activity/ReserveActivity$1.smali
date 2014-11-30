.class Lcom/redbox/android/activity/ReserveActivity$1;
.super Ljava/lang/Object;
.source "ReserveActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/redbox/android/activity/ReserveActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/redbox/android/activity/ReserveActivity;


# direct methods
.method constructor <init>(Lcom/redbox/android/activity/ReserveActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/redbox/android/activity/ReserveActivity$1;->this$0:Lcom/redbox/android/activity/ReserveActivity;

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const v5, 0x7f05004c

    const/4 v3, -0x1

    const/16 v4, 0xb

    .line 87
    iget-object v1, p0, Lcom/redbox/android/activity/ReserveActivity$1;->this$0:Lcom/redbox/android/activity/ReserveActivity;

    iget-object v1, v1, Lcom/redbox/android/activity/ReserveActivity;->movie:Lcom/redbox/android/model/MovieDetail;

    invoke-virtual {v1}, Lcom/redbox/android/model/MovieDetail;->isRRated()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 88
    iget-object v1, p0, Lcom/redbox/android/activity/ReserveActivity$1;->this$0:Lcom/redbox/android/activity/ReserveActivity;

    iget-object v1, v1, Lcom/redbox/android/activity/ReserveActivity;->rRatingCb:Landroid/widget/CheckBox;

    if-nez v1, :cond_0

    .line 89
    iget-object v1, p0, Lcom/redbox/android/activity/ReserveActivity$1;->this$0:Lcom/redbox/android/activity/ReserveActivity;

    # invokes: Lcom/redbox/android/activity/ReserveActivity;->updateUI()V
    invoke-static {v1}, Lcom/redbox/android/activity/ReserveActivity;->access$1(Lcom/redbox/android/activity/ReserveActivity;)V

    .line 91
    :cond_0
    iget-object v1, p0, Lcom/redbox/android/activity/ReserveActivity$1;->this$0:Lcom/redbox/android/activity/ReserveActivity;

    iget-object v1, v1, Lcom/redbox/android/activity/ReserveActivity;->rRatingCb:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-nez v1, :cond_1

    .line 92
    iget-object v1, p0, Lcom/redbox/android/activity/ReserveActivity$1;->this$0:Lcom/redbox/android/activity/ReserveActivity;

    iget-object v2, p0, Lcom/redbox/android/activity/ReserveActivity$1;->this$0:Lcom/redbox/android/activity/ReserveActivity;

    invoke-virtual {v2, v5}, Lcom/redbox/android/activity/ReserveActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/redbox/android/activity/ReserveActivity;->alertBoxMsg:Ljava/lang/String;

    .line 93
    iget-object v1, p0, Lcom/redbox/android/activity/ReserveActivity$1;->this$0:Lcom/redbox/android/activity/ReserveActivity;

    invoke-virtual {v1, v4}, Lcom/redbox/android/activity/ReserveActivity;->showDialog(I)V

    .line 136
    :goto_0
    return-void

    .line 97
    :cond_1
    iget-object v1, p0, Lcom/redbox/android/activity/ReserveActivity$1;->this$0:Lcom/redbox/android/activity/ReserveActivity;

    iget-object v1, v1, Lcom/redbox/android/activity/ReserveActivity;->movie:Lcom/redbox/android/model/MovieDetail;

    invoke-virtual {v1}, Lcom/redbox/android/model/MovieDetail;->isMRated()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 98
    iget-object v1, p0, Lcom/redbox/android/activity/ReserveActivity$1;->this$0:Lcom/redbox/android/activity/ReserveActivity;

    iget-object v1, v1, Lcom/redbox/android/activity/ReserveActivity;->mRatingCb:Landroid/widget/CheckBox;

    if-nez v1, :cond_2

    .line 99
    iget-object v1, p0, Lcom/redbox/android/activity/ReserveActivity$1;->this$0:Lcom/redbox/android/activity/ReserveActivity;

    # invokes: Lcom/redbox/android/activity/ReserveActivity;->updateUI()V
    invoke-static {v1}, Lcom/redbox/android/activity/ReserveActivity;->access$1(Lcom/redbox/android/activity/ReserveActivity;)V

    .line 101
    :cond_2
    iget-object v1, p0, Lcom/redbox/android/activity/ReserveActivity$1;->this$0:Lcom/redbox/android/activity/ReserveActivity;

    iget-object v1, v1, Lcom/redbox/android/activity/ReserveActivity;->mRatingCb:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-nez v1, :cond_3

    .line 102
    iget-object v1, p0, Lcom/redbox/android/activity/ReserveActivity$1;->this$0:Lcom/redbox/android/activity/ReserveActivity;

    iget-object v2, p0, Lcom/redbox/android/activity/ReserveActivity$1;->this$0:Lcom/redbox/android/activity/ReserveActivity;

    invoke-virtual {v2, v5}, Lcom/redbox/android/activity/ReserveActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/redbox/android/activity/ReserveActivity;->alertBoxMsg:Ljava/lang/String;

    .line 103
    iget-object v1, p0, Lcom/redbox/android/activity/ReserveActivity$1;->this$0:Lcom/redbox/android/activity/ReserveActivity;

    invoke-virtual {v1, v4}, Lcom/redbox/android/activity/ReserveActivity;->showDialog(I)V

    goto :goto_0

    .line 107
    :cond_3
    iget-object v1, p0, Lcom/redbox/android/activity/ReserveActivity$1;->this$0:Lcom/redbox/android/activity/ReserveActivity;

    iget-object v1, v1, Lcom/redbox/android/activity/ReserveActivity;->movie:Lcom/redbox/android/model/MovieDetail;

    invoke-virtual {v1}, Lcom/redbox/android/model/MovieDetail;->isBluRay()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 108
    iget-object v1, p0, Lcom/redbox/android/activity/ReserveActivity$1;->this$0:Lcom/redbox/android/activity/ReserveActivity;

    iget-object v1, v1, Lcom/redbox/android/activity/ReserveActivity;->blurayFormatCb:Landroid/widget/CheckBox;

    if-nez v1, :cond_4

    .line 109
    iget-object v1, p0, Lcom/redbox/android/activity/ReserveActivity$1;->this$0:Lcom/redbox/android/activity/ReserveActivity;

    # invokes: Lcom/redbox/android/activity/ReserveActivity;->updateUI()V
    invoke-static {v1}, Lcom/redbox/android/activity/ReserveActivity;->access$1(Lcom/redbox/android/activity/ReserveActivity;)V

    .line 111
    :cond_4
    iget-object v1, p0, Lcom/redbox/android/activity/ReserveActivity$1;->this$0:Lcom/redbox/android/activity/ReserveActivity;

    iget-object v1, v1, Lcom/redbox/android/activity/ReserveActivity;->blurayFormatCb:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-nez v1, :cond_5

    .line 112
    iget-object v1, p0, Lcom/redbox/android/activity/ReserveActivity$1;->this$0:Lcom/redbox/android/activity/ReserveActivity;

    iget-object v2, p0, Lcom/redbox/android/activity/ReserveActivity$1;->this$0:Lcom/redbox/android/activity/ReserveActivity;

    const v3, 0x7f05004e

    invoke-virtual {v2, v3}, Lcom/redbox/android/activity/ReserveActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/redbox/android/activity/ReserveActivity;->alertBoxMsg:Ljava/lang/String;

    .line 113
    iget-object v1, p0, Lcom/redbox/android/activity/ReserveActivity$1;->this$0:Lcom/redbox/android/activity/ReserveActivity;

    invoke-virtual {v1, v4}, Lcom/redbox/android/activity/ReserveActivity;->showDialog(I)V

    goto :goto_0

    .line 117
    :cond_5
    iget-object v1, p0, Lcom/redbox/android/activity/ReserveActivity$1;->this$0:Lcom/redbox/android/activity/ReserveActivity;

    iget v1, v1, Lcom/redbox/android/activity/ReserveActivity;->indexOfCardShown:I

    if-ne v1, v3, :cond_6

    .line 118
    iget-object v1, p0, Lcom/redbox/android/activity/ReserveActivity$1;->this$0:Lcom/redbox/android/activity/ReserveActivity;

    iget-object v2, p0, Lcom/redbox/android/activity/ReserveActivity$1;->this$0:Lcom/redbox/android/activity/ReserveActivity;

    const v3, 0x7f050031

    invoke-virtual {v2, v3}, Lcom/redbox/android/activity/ReserveActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/redbox/android/activity/ReserveActivity;->alertBoxMsg:Ljava/lang/String;

    .line 119
    iget-object v1, p0, Lcom/redbox/android/activity/ReserveActivity$1;->this$0:Lcom/redbox/android/activity/ReserveActivity;

    invoke-virtual {v1, v4}, Lcom/redbox/android/activity/ReserveActivity;->showDialog(I)V

    goto :goto_0

    .line 122
    :cond_6
    iget-object v1, p0, Lcom/redbox/android/activity/ReserveActivity$1;->this$0:Lcom/redbox/android/activity/ReserveActivity;

    iget-object v1, v1, Lcom/redbox/android/activity/ReserveActivity;->cards:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/redbox/android/activity/ReserveActivity$1;->this$0:Lcom/redbox/android/activity/ReserveActivity;

    iget v2, v2, Lcom/redbox/android/activity/ReserveActivity;->indexOfCardShown:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/redbox/android/model/Card;

    .line 123
    .local v0, "c":Lcom/redbox/android/model/Card;
    iget-object v1, p0, Lcom/redbox/android/activity/ReserveActivity$1;->this$0:Lcom/redbox/android/activity/ReserveActivity;

    iget v1, v1, Lcom/redbox/android/activity/ReserveActivity;->indexOfCardShown:I

    if-eq v1, v3, :cond_8

    .line 125
    iget-object v1, p0, Lcom/redbox/android/activity/ReserveActivity$1;->this$0:Lcom/redbox/android/activity/ReserveActivity;

    iget-object v1, v1, Lcom/redbox/android/activity/ReserveActivity;->cvv:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 126
    iget-object v1, p0, Lcom/redbox/android/activity/ReserveActivity$1;->this$0:Lcom/redbox/android/activity/ReserveActivity;

    iget-object v2, p0, Lcom/redbox/android/activity/ReserveActivity$1;->this$0:Lcom/redbox/android/activity/ReserveActivity;

    const v3, 0x7f05004d

    invoke-virtual {v2, v3}, Lcom/redbox/android/activity/ReserveActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/redbox/android/activity/ReserveActivity;->alertBoxMsg:Ljava/lang/String;

    .line 127
    iget-object v1, p0, Lcom/redbox/android/activity/ReserveActivity$1;->this$0:Lcom/redbox/android/activity/ReserveActivity;

    invoke-virtual {v1, v4}, Lcom/redbox/android/activity/ReserveActivity;->showDialog(I)V

    goto/16 :goto_0

    .line 130
    :cond_7
    iget-object v1, p0, Lcom/redbox/android/activity/ReserveActivity$1;->this$0:Lcom/redbox/android/activity/ReserveActivity;

    iget-object v1, v1, Lcom/redbox/android/activity/ReserveActivity;->cvv:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/redbox/android/model/Card;->setCvv(Ljava/lang/String;)V

    .line 132
    :cond_8
    iget-object v1, p0, Lcom/redbox/android/activity/ReserveActivity$1;->this$0:Lcom/redbox/android/activity/ReserveActivity;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/redbox/android/activity/ReserveActivity;->showDialog(I)V

    .line 133
    iget-object v1, p0, Lcom/redbox/android/activity/ReserveActivity$1;->this$0:Lcom/redbox/android/activity/ReserveActivity;

    iget-object v1, v1, Lcom/redbox/android/activity/ReserveActivity;->progressDialog:Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/redbox/android/activity/ReserveActivity$1;->this$0:Lcom/redbox/android/activity/ReserveActivity;

    const v3, 0x7f05000d

    invoke-virtual {v2, v3}, Lcom/redbox/android/activity/ReserveActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 134
    invoke-static {}, Lcom/redbox/android/http/ServerCommunicationHandler;->getInstance()Lcom/redbox/android/http/ServerCommunicationHandler;

    move-result-object v1

    .line 135
    new-instance v2, Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest;

    iget-object v3, p0, Lcom/redbox/android/activity/ReserveActivity$1;->this$0:Lcom/redbox/android/activity/ReserveActivity;

    invoke-direct {v2, v3}, Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest;-><init>(Lcom/redbox/android/activity/ReserveActivity;)V

    iget-object v3, p0, Lcom/redbox/android/activity/ReserveActivity$1;->this$0:Lcom/redbox/android/activity/ReserveActivity;

    iget-object v3, v3, Lcom/redbox/android/activity/ReserveActivity;->cart:Lcom/redbox/android/model/Cart;

    .line 134
    invoke-virtual {v1, v2, v0, v3}, Lcom/redbox/android/http/ServerCommunicationHandler;->reserveMovie(Lcom/redbox/android/http/ServerCommunicationListener;Lcom/redbox/android/model/Card;Lcom/redbox/android/model/Cart;)V

    goto/16 :goto_0
.end method
