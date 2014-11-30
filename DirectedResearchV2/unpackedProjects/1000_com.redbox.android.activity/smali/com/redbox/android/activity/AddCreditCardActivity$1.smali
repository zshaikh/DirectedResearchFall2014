.class Lcom/redbox/android/activity/AddCreditCardActivity$1;
.super Ljava/lang/Object;
.source "AddCreditCardActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/redbox/android/activity/AddCreditCardActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/redbox/android/activity/AddCreditCardActivity;


# direct methods
.method constructor <init>(Lcom/redbox/android/activity/AddCreditCardActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/redbox/android/activity/AddCreditCardActivity$1;->this$0:Lcom/redbox/android/activity/AddCreditCardActivity;

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/redbox/android/activity/AddCreditCardActivity$1;)Lcom/redbox/android/activity/AddCreditCardActivity;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/redbox/android/activity/AddCreditCardActivity$1;->this$0:Lcom/redbox/android/activity/AddCreditCardActivity;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 14
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x5

    const/4 v2, 0x3

    const/16 v3, 0xb

    const/4 v13, 0x0

    const/4 v9, 0x1

    .line 199
    iget-object v0, p0, Lcom/redbox/android/activity/AddCreditCardActivity$1;->this$0:Lcom/redbox/android/activity/AddCreditCardActivity;

    # invokes: Lcom/redbox/android/activity/AddCreditCardActivity;->isInViewMode()Z
    invoke-static {v0}, Lcom/redbox/android/activity/AddCreditCardActivity;->access$0(Lcom/redbox/android/activity/AddCreditCardActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 200
    iget-object v0, p0, Lcom/redbox/android/activity/AddCreditCardActivity$1;->this$0:Lcom/redbox/android/activity/AddCreditCardActivity;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/redbox/android/activity/AddCreditCardActivity;->access$1(Lcom/redbox/android/activity/AddCreditCardActivity;I)V

    .line 201
    iget-object v0, p0, Lcom/redbox/android/activity/AddCreditCardActivity$1;->this$0:Lcom/redbox/android/activity/AddCreditCardActivity;

    iget-object v1, p0, Lcom/redbox/android/activity/AddCreditCardActivity$1;->this$0:Lcom/redbox/android/activity/AddCreditCardActivity;

    # getter for: Lcom/redbox/android/activity/AddCreditCardActivity;->screenMode:I
    invoke-static {v1}, Lcom/redbox/android/activity/AddCreditCardActivity;->access$2(Lcom/redbox/android/activity/AddCreditCardActivity;)I

    move-result v1

    # invokes: Lcom/redbox/android/activity/AddCreditCardActivity;->setScreenMode(I)V
    invoke-static {v0, v1}, Lcom/redbox/android/activity/AddCreditCardActivity;->access$3(Lcom/redbox/android/activity/AddCreditCardActivity;I)V

    .line 518
    :cond_0
    :goto_0
    return-void

    .line 202
    :cond_1
    iget-object v0, p0, Lcom/redbox/android/activity/AddCreditCardActivity$1;->this$0:Lcom/redbox/android/activity/AddCreditCardActivity;

    # invokes: Lcom/redbox/android/activity/AddCreditCardActivity;->isInEditMode()Z
    invoke-static {v0}, Lcom/redbox/android/activity/AddCreditCardActivity;->access$4(Lcom/redbox/android/activity/AddCreditCardActivity;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Text :"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/redbox/android/activity/AddCreditCardActivity$1;->this$0:Lcom/redbox/android/activity/AddCreditCardActivity;

    # getter for: Lcom/redbox/android/activity/AddCreditCardActivity;->txtCardAlias:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/redbox/android/activity/AddCreditCardActivity;->access$5(Lcom/redbox/android/activity/AddCreditCardActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 207
    iget-object v0, p0, Lcom/redbox/android/activity/AddCreditCardActivity$1;->this$0:Lcom/redbox/android/activity/AddCreditCardActivity;

    # getter for: Lcom/redbox/android/activity/AddCreditCardActivity;->txtCardAlias:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/redbox/android/activity/AddCreditCardActivity;->access$5(Lcom/redbox/android/activity/AddCreditCardActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 208
    iget-object v0, p0, Lcom/redbox/android/activity/AddCreditCardActivity$1;->this$0:Lcom/redbox/android/activity/AddCreditCardActivity;

    # getter for: Lcom/redbox/android/activity/AddCreditCardActivity;->txtCardNumber:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/redbox/android/activity/AddCreditCardActivity;->access$6(Lcom/redbox/android/activity/AddCreditCardActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 209
    iget-object v0, p0, Lcom/redbox/android/activity/AddCreditCardActivity$1;->this$0:Lcom/redbox/android/activity/AddCreditCardActivity;

    # getter for: Lcom/redbox/android/activity/AddCreditCardActivity;->txtNameOnCard:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/redbox/android/activity/AddCreditCardActivity;->access$7(Lcom/redbox/android/activity/AddCreditCardActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 210
    iget-object v0, p0, Lcom/redbox/android/activity/AddCreditCardActivity$1;->this$0:Lcom/redbox/android/activity/AddCreditCardActivity;

    # getter for: Lcom/redbox/android/activity/AddCreditCardActivity;->txtBillingZip:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/redbox/android/activity/AddCreditCardActivity;->access$8(Lcom/redbox/android/activity/AddCreditCardActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 211
    :cond_2
    iget-object v0, p0, Lcom/redbox/android/activity/AddCreditCardActivity$1;->this$0:Lcom/redbox/android/activity/AddCreditCardActivity;

    iget-object v1, p0, Lcom/redbox/android/activity/AddCreditCardActivity$1;->this$0:Lcom/redbox/android/activity/AddCreditCardActivity;

    const v2, 0x7f050033

    invoke-virtual {v1, v2}, Lcom/redbox/android/activity/AddCreditCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/redbox/android/activity/AddCreditCardActivity;->alertBoxMsg:Ljava/lang/String;

    .line 212
    iget-object v0, p0, Lcom/redbox/android/activity/AddCreditCardActivity$1;->this$0:Lcom/redbox/android/activity/AddCreditCardActivity;

    invoke-virtual {v0, v3}, Lcom/redbox/android/activity/AddCreditCardActivity;->showDialog(I)V

    goto/16 :goto_0

    .line 220
    :cond_3
    iget-object v0, p0, Lcom/redbox/android/activity/AddCreditCardActivity$1;->this$0:Lcom/redbox/android/activity/AddCreditCardActivity;

    # getter for: Lcom/redbox/android/activity/AddCreditCardActivity;->txtBillingZip:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/redbox/android/activity/AddCreditCardActivity;->access$8(Lcom/redbox/android/activity/AddCreditCardActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v0, v4, :cond_4

    .line 221
    iget-object v0, p0, Lcom/redbox/android/activity/AddCreditCardActivity$1;->this$0:Lcom/redbox/android/activity/AddCreditCardActivity;

    iget-object v1, p0, Lcom/redbox/android/activity/AddCreditCardActivity$1;->this$0:Lcom/redbox/android/activity/AddCreditCardActivity;

    const v2, 0x7f050034

    invoke-virtual {v1, v2}, Lcom/redbox/android/activity/AddCreditCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/redbox/android/activity/AddCreditCardActivity;->alertBoxMsg:Ljava/lang/String;

    .line 222
    iget-object v0, p0, Lcom/redbox/android/activity/AddCreditCardActivity$1;->this$0:Lcom/redbox/android/activity/AddCreditCardActivity;

    invoke-virtual {v0, v3}, Lcom/redbox/android/activity/AddCreditCardActivity;->showDialog(I)V

    goto/16 :goto_0

    .line 225
    :cond_4
    const-string v0, "changing card"

    invoke-static {p0, v0}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Lcom/redbox/android/activity/AddCreditCardActivity$1;->this$0:Lcom/redbox/android/activity/AddCreditCardActivity;

    iget-object v0, v0, Lcom/redbox/android/activity/AddCreditCardActivity;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_5

    .line 227
    iget-object v0, p0, Lcom/redbox/android/activity/AddCreditCardActivity$1;->this$0:Lcom/redbox/android/activity/AddCreditCardActivity;

    invoke-virtual {v0, v2}, Lcom/redbox/android/activity/AddCreditCardActivity;->removeDialog(I)V

    .line 229
    :cond_5
    iget-object v0, p0, Lcom/redbox/android/activity/AddCreditCardActivity$1;->this$0:Lcom/redbox/android/activity/AddCreditCardActivity;

    invoke-virtual {v0, v2}, Lcom/redbox/android/activity/AddCreditCardActivity;->showDialog(I)V

    .line 230
    iget-object v0, p0, Lcom/redbox/android/activity/AddCreditCardActivity$1;->this$0:Lcom/redbox/android/activity/AddCreditCardActivity;

    iget-object v0, v0, Lcom/redbox/android/activity/AddCreditCardActivity;->progressDialog:Landroid/app/ProgressDialog;

    const-string v1, "Loading ... "

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 231
    iget-object v0, p0, Lcom/redbox/android/activity/AddCreditCardActivity$1;->this$0:Lcom/redbox/android/activity/AddCreditCardActivity;

    # getter for: Lcom/redbox/android/activity/AddCreditCardActivity;->cardsList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/redbox/android/activity/AddCreditCardActivity;->access$9(Lcom/redbox/android/activity/AddCreditCardActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/redbox/android/activity/AddCreditCardActivity$1;->this$0:Lcom/redbox/android/activity/AddCreditCardActivity;

    # getter for: Lcom/redbox/android/activity/AddCreditCardActivity;->selectedIndex:I
    invoke-static {v1}, Lcom/redbox/android/activity/AddCreditCardActivity;->access$10(Lcom/redbox/android/activity/AddCreditCardActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/redbox/android/model/Card;

    .line 232
    .local v11, "card":Lcom/redbox/android/model/Card;
    const-string v0, "%02d"

    new-array v1, v9, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/redbox/android/activity/AddCreditCardActivity$1;->this$0:Lcom/redbox/android/activity/AddCreditCardActivity;

    iget-object v2, v2, Lcom/redbox/android/activity/AddCreditCardActivity;->yearSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, v13

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 233
    .local v7, "expMonth":Ljava/lang/String;
    const-string v0, "%02d"

    new-array v1, v9, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/redbox/android/activity/AddCreditCardActivity$1;->this$0:Lcom/redbox/android/activity/AddCreditCardActivity;

    iget-object v2, v2, Lcom/redbox/android/activity/AddCreditCardActivity;->monthSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v13

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 234
    .local v8, "expYear":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Expiry date : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 235
    invoke-static {}, Lcom/redbox/android/http/ServerCommunicationHandler;->getInstance()Lcom/redbox/android/http/ServerCommunicationHandler;

    move-result-object v0

    .line 236
    new-instance v1, Lcom/redbox/android/activity/AddCreditCardActivity$1$1;

    invoke-direct {v1, p0}, Lcom/redbox/android/activity/AddCreditCardActivity$1$1;-><init>(Lcom/redbox/android/activity/AddCreditCardActivity$1;)V

    .line 350
    invoke-virtual {v11}, Lcom/redbox/android/model/Card;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 351
    iget-object v3, p0, Lcom/redbox/android/activity/AddCreditCardActivity$1;->this$0:Lcom/redbox/android/activity/AddCreditCardActivity;

    # getter for: Lcom/redbox/android/activity/AddCreditCardActivity;->txtCardNumber:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/redbox/android/activity/AddCreditCardActivity;->access$6(Lcom/redbox/android/activity/AddCreditCardActivity;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 352
    iget-object v4, p0, Lcom/redbox/android/activity/AddCreditCardActivity$1;->this$0:Lcom/redbox/android/activity/AddCreditCardActivity;

    # getter for: Lcom/redbox/android/activity/AddCreditCardActivity;->txtNameOnCard:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/redbox/android/activity/AddCreditCardActivity;->access$7(Lcom/redbox/android/activity/AddCreditCardActivity;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 353
    iget-object v5, p0, Lcom/redbox/android/activity/AddCreditCardActivity$1;->this$0:Lcom/redbox/android/activity/AddCreditCardActivity;

    # getter for: Lcom/redbox/android/activity/AddCreditCardActivity;->txtCardAlias:Landroid/widget/EditText;
    invoke-static {v5}, Lcom/redbox/android/activity/AddCreditCardActivity;->access$5(Lcom/redbox/android/activity/AddCreditCardActivity;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 354
    iget-object v6, p0, Lcom/redbox/android/activity/AddCreditCardActivity$1;->this$0:Lcom/redbox/android/activity/AddCreditCardActivity;

    # getter for: Lcom/redbox/android/activity/AddCreditCardActivity;->txtBillingZip:Landroid/widget/EditText;
    invoke-static {v6}, Lcom/redbox/android/activity/AddCreditCardActivity;->access$8(Lcom/redbox/android/activity/AddCreditCardActivity;)Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 358
    invoke-virtual {v11}, Lcom/redbox/android/model/Card;->isPreferred()Z

    move-result v10

    .line 235
    invoke-virtual/range {v0 .. v10}, Lcom/redbox/android/http/ServerCommunicationHandler;->addCreditCard(Lcom/redbox/android/http/ServerCommunicationListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 361
    iget-object v0, p0, Lcom/redbox/android/activity/AddCreditCardActivity$1;->this$0:Lcom/redbox/android/activity/AddCreditCardActivity;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Lcom/redbox/android/activity/AddCreditCardActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/inputmethod/InputMethodManager;

    .line 362
    .local v12, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v0, p0, Lcom/redbox/android/activity/AddCreditCardActivity$1;->this$0:Lcom/redbox/android/activity/AddCreditCardActivity;

    # getter for: Lcom/redbox/android/activity/AddCreditCardActivity;->txtCardAlias:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/redbox/android/activity/AddCreditCardActivity;->access$5(Lcom/redbox/android/activity/AddCreditCardActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v12, v0, v13}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 364
    const-string v0, "card changed"

    invoke-static {p0, v0}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 365
    iget-object v0, p0, Lcom/redbox/android/activity/AddCreditCardActivity$1;->this$0:Lcom/redbox/android/activity/AddCreditCardActivity;

    invoke-static {v0, v9}, Lcom/redbox/android/activity/AddCreditCardActivity;->access$1(Lcom/redbox/android/activity/AddCreditCardActivity;I)V

    .line 366
    iget-object v0, p0, Lcom/redbox/android/activity/AddCreditCardActivity$1;->this$0:Lcom/redbox/android/activity/AddCreditCardActivity;

    iget-object v1, p0, Lcom/redbox/android/activity/AddCreditCardActivity$1;->this$0:Lcom/redbox/android/activity/AddCreditCardActivity;

    # getter for: Lcom/redbox/android/activity/AddCreditCardActivity;->screenMode:I
    invoke-static {v1}, Lcom/redbox/android/activity/AddCreditCardActivity;->access$2(Lcom/redbox/android/activity/AddCreditCardActivity;)I

    move-result v1

    # invokes: Lcom/redbox/android/activity/AddCreditCardActivity;->setScreenMode(I)V
    invoke-static {v0, v1}, Lcom/redbox/android/activity/AddCreditCardActivity;->access$3(Lcom/redbox/android/activity/AddCreditCardActivity;I)V

    goto/16 :goto_0

    .line 367
    .end local v7    # "expMonth":Ljava/lang/String;
    .end local v8    # "expYear":Ljava/lang/String;
    .end local v11    # "card":Lcom/redbox/android/model/Card;
    .end local v12    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_6
    iget-object v0, p0, Lcom/redbox/android/activity/AddCreditCardActivity$1;->this$0:Lcom/redbox/android/activity/AddCreditCardActivity;

    # invokes: Lcom/redbox/android/activity/AddCreditCardActivity;->isInAddMode()Z
    invoke-static {v0}, Lcom/redbox/android/activity/AddCreditCardActivity;->access$11(Lcom/redbox/android/activity/AddCreditCardActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 369
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Text :"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/redbox/android/activity/AddCreditCardActivity$1;->this$0:Lcom/redbox/android/activity/AddCreditCardActivity;

    # getter for: Lcom/redbox/android/activity/AddCreditCardActivity;->txtCardAlias:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/redbox/android/activity/AddCreditCardActivity;->access$5(Lcom/redbox/android/activity/AddCreditCardActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 370
    iget-object v0, p0, Lcom/redbox/android/activity/AddCreditCardActivity$1;->this$0:Lcom/redbox/android/activity/AddCreditCardActivity;

    # getter for: Lcom/redbox/android/activity/AddCreditCardActivity;->txtCardAlias:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/redbox/android/activity/AddCreditCardActivity;->access$5(Lcom/redbox/android/activity/AddCreditCardActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 371
    iget-object v0, p0, Lcom/redbox/android/activity/AddCreditCardActivity$1;->this$0:Lcom/redbox/android/activity/AddCreditCardActivity;

    # getter for: Lcom/redbox/android/activity/AddCreditCardActivity;->txtCardNumber:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/redbox/android/activity/AddCreditCardActivity;->access$6(Lcom/redbox/android/activity/AddCreditCardActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 372
    iget-object v0, p0, Lcom/redbox/android/activity/AddCreditCardActivity$1;->this$0:Lcom/redbox/android/activity/AddCreditCardActivity;

    # getter for: Lcom/redbox/android/activity/AddCreditCardActivity;->txtNameOnCard:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/redbox/android/activity/AddCreditCardActivity;->access$7(Lcom/redbox/android/activity/AddCreditCardActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 373
    iget-object v0, p0, Lcom/redbox/android/activity/AddCreditCardActivity$1;->this$0:Lcom/redbox/android/activity/AddCreditCardActivity;

    # getter for: Lcom/redbox/android/activity/AddCreditCardActivity;->txtBillingZip:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/redbox/android/activity/AddCreditCardActivity;->access$8(Lcom/redbox/android/activity/AddCreditCardActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 374
    :cond_7
    iget-object v0, p0, Lcom/redbox/android/activity/AddCreditCardActivity$1;->this$0:Lcom/redbox/android/activity/AddCreditCardActivity;

    const-string v1, "Please fill all the card details."

    iput-object v1, v0, Lcom/redbox/android/activity/AddCreditCardActivity;->alertBoxMsg:Ljava/lang/String;

    .line 375
    iget-object v0, p0, Lcom/redbox/android/activity/AddCreditCardActivity$1;->this$0:Lcom/redbox/android/activity/AddCreditCardActivity;

    invoke-virtual {v0, v3}, Lcom/redbox/android/activity/AddCreditCardActivity;->showDialog(I)V

    goto/16 :goto_0

    .line 383
    :cond_8
    iget-object v0, p0, Lcom/redbox/android/activity/AddCreditCardActivity$1;->this$0:Lcom/redbox/android/activity/AddCreditCardActivity;

    # getter for: Lcom/redbox/android/activity/AddCreditCardActivity;->txtBillingZip:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/redbox/android/activity/AddCreditCardActivity;->access$8(Lcom/redbox/android/activity/AddCreditCardActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v0, v4, :cond_9

    .line 384
    iget-object v0, p0, Lcom/redbox/android/activity/AddCreditCardActivity$1;->this$0:Lcom/redbox/android/activity/AddCreditCardActivity;

    iget-object v1, p0, Lcom/redbox/android/activity/AddCreditCardActivity$1;->this$0:Lcom/redbox/android/activity/AddCreditCardActivity;

    const v2, 0x7f050034

    invoke-virtual {v1, v2}, Lcom/redbox/android/activity/AddCreditCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/redbox/android/activity/AddCreditCardActivity;->alertBoxMsg:Ljava/lang/String;

    .line 385
    iget-object v0, p0, Lcom/redbox/android/activity/AddCreditCardActivity$1;->this$0:Lcom/redbox/android/activity/AddCreditCardActivity;

    invoke-virtual {v0, v3}, Lcom/redbox/android/activity/AddCreditCardActivity;->showDialog(I)V

    goto/16 :goto_0

    .line 388
    :cond_9
    iget-object v0, p0, Lcom/redbox/android/activity/AddCreditCardActivity$1;->this$0:Lcom/redbox/android/activity/AddCreditCardActivity;

    invoke-virtual {v0, v2}, Lcom/redbox/android/activity/AddCreditCardActivity;->showDialog(I)V

    .line 389
    iget-object v0, p0, Lcom/redbox/android/activity/AddCreditCardActivity$1;->this$0:Lcom/redbox/android/activity/AddCreditCardActivity;

    iget-object v0, v0, Lcom/redbox/android/activity/AddCreditCardActivity;->progressDialog:Landroid/app/ProgressDialog;

    const-string v1, "Loading ... "

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 390
    const-string v0, "%02d"

    new-array v1, v9, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/redbox/android/activity/AddCreditCardActivity$1;->this$0:Lcom/redbox/android/activity/AddCreditCardActivity;

    iget-object v2, v2, Lcom/redbox/android/activity/AddCreditCardActivity;->yearSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, v13

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 391
    .restart local v7    # "expMonth":Ljava/lang/String;
    const-string v0, "%02d"

    new-array v1, v9, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/redbox/android/activity/AddCreditCardActivity$1;->this$0:Lcom/redbox/android/activity/AddCreditCardActivity;

    iget-object v2, v2, Lcom/redbox/android/activity/AddCreditCardActivity;->monthSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v13

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 392
    .restart local v8    # "expYear":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Expiry date : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 393
    invoke-static {}, Lcom/redbox/android/http/ServerCommunicationHandler;->getInstance()Lcom/redbox/android/http/ServerCommunicationHandler;

    move-result-object v0

    .line 394
    new-instance v1, Lcom/redbox/android/activity/AddCreditCardActivity$1$2;

    invoke-direct {v1, p0}, Lcom/redbox/android/activity/AddCreditCardActivity$1$2;-><init>(Lcom/redbox/android/activity/AddCreditCardActivity$1;)V

    .line 506
    const-string v2, "-1"

    .line 507
    iget-object v3, p0, Lcom/redbox/android/activity/AddCreditCardActivity$1;->this$0:Lcom/redbox/android/activity/AddCreditCardActivity;

    # getter for: Lcom/redbox/android/activity/AddCreditCardActivity;->txtCardNumber:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/redbox/android/activity/AddCreditCardActivity;->access$6(Lcom/redbox/android/activity/AddCreditCardActivity;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 508
    iget-object v4, p0, Lcom/redbox/android/activity/AddCreditCardActivity$1;->this$0:Lcom/redbox/android/activity/AddCreditCardActivity;

    # getter for: Lcom/redbox/android/activity/AddCreditCardActivity;->txtNameOnCard:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/redbox/android/activity/AddCreditCardActivity;->access$7(Lcom/redbox/android/activity/AddCreditCardActivity;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 509
    iget-object v5, p0, Lcom/redbox/android/activity/AddCreditCardActivity$1;->this$0:Lcom/redbox/android/activity/AddCreditCardActivity;

    # getter for: Lcom/redbox/android/activity/AddCreditCardActivity;->txtCardAlias:Landroid/widget/EditText;
    invoke-static {v5}, Lcom/redbox/android/activity/AddCreditCardActivity;->access$5(Lcom/redbox/android/activity/AddCreditCardActivity;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 510
    iget-object v6, p0, Lcom/redbox/android/activity/AddCreditCardActivity$1;->this$0:Lcom/redbox/android/activity/AddCreditCardActivity;

    # getter for: Lcom/redbox/android/activity/AddCreditCardActivity;->txtBillingZip:Landroid/widget/EditText;
    invoke-static {v6}, Lcom/redbox/android/activity/AddCreditCardActivity;->access$8(Lcom/redbox/android/activity/AddCreditCardActivity;)Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    move v10, v13

    .line 393
    invoke-virtual/range {v0 .. v10}, Lcom/redbox/android/http/ServerCommunicationHandler;->addCreditCard(Lcom/redbox/android/http/ServerCommunicationListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto/16 :goto_0
.end method
