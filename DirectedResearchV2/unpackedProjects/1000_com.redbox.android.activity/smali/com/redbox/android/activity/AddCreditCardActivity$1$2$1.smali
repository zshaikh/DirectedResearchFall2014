.class Lcom/redbox/android/activity/AddCreditCardActivity$1$2$1;
.super Ljava/lang/Object;
.source "AddCreditCardActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/redbox/android/activity/AddCreditCardActivity$1$2;->dataReceived([B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/redbox/android/activity/AddCreditCardActivity$1$2;

.field private final synthetic val$newCard:Lcom/redbox/android/model/Card;


# direct methods
.method constructor <init>(Lcom/redbox/android/activity/AddCreditCardActivity$1$2;Lcom/redbox/android/model/Card;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/redbox/android/activity/AddCreditCardActivity$1$2$1;->this$2:Lcom/redbox/android/activity/AddCreditCardActivity$1$2;

    iput-object p2, p0, Lcom/redbox/android/activity/AddCreditCardActivity$1$2$1;->val$newCard:Lcom/redbox/android/model/Card;

    .line 432
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 435
    iget-object v2, p0, Lcom/redbox/android/activity/AddCreditCardActivity$1$2$1;->this$2:Lcom/redbox/android/activity/AddCreditCardActivity$1$2;

    # getter for: Lcom/redbox/android/activity/AddCreditCardActivity$1$2;->this$1:Lcom/redbox/android/activity/AddCreditCardActivity$1;
    invoke-static {v2}, Lcom/redbox/android/activity/AddCreditCardActivity$1$2;->access$0(Lcom/redbox/android/activity/AddCreditCardActivity$1$2;)Lcom/redbox/android/activity/AddCreditCardActivity$1;

    move-result-object v2

    # getter for: Lcom/redbox/android/activity/AddCreditCardActivity$1;->this$0:Lcom/redbox/android/activity/AddCreditCardActivity;
    invoke-static {v2}, Lcom/redbox/android/activity/AddCreditCardActivity$1;->access$0(Lcom/redbox/android/activity/AddCreditCardActivity$1;)Lcom/redbox/android/activity/AddCreditCardActivity;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/redbox/android/activity/AddCreditCardActivity;->removeDialog(I)V

    .line 436
    iget-object v2, p0, Lcom/redbox/android/activity/AddCreditCardActivity$1$2$1;->this$2:Lcom/redbox/android/activity/AddCreditCardActivity$1$2;

    # getter for: Lcom/redbox/android/activity/AddCreditCardActivity$1$2;->this$1:Lcom/redbox/android/activity/AddCreditCardActivity$1;
    invoke-static {v2}, Lcom/redbox/android/activity/AddCreditCardActivity$1$2;->access$0(Lcom/redbox/android/activity/AddCreditCardActivity$1$2;)Lcom/redbox/android/activity/AddCreditCardActivity$1;

    move-result-object v2

    # getter for: Lcom/redbox/android/activity/AddCreditCardActivity$1;->this$0:Lcom/redbox/android/activity/AddCreditCardActivity;
    invoke-static {v2}, Lcom/redbox/android/activity/AddCreditCardActivity$1;->access$0(Lcom/redbox/android/activity/AddCreditCardActivity$1;)Lcom/redbox/android/activity/AddCreditCardActivity;

    move-result-object v2

    # getter for: Lcom/redbox/android/activity/AddCreditCardActivity;->selectedIndex:I
    invoke-static {v2}, Lcom/redbox/android/activity/AddCreditCardActivity;->access$10(Lcom/redbox/android/activity/AddCreditCardActivity;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 437
    iget-object v2, p0, Lcom/redbox/android/activity/AddCreditCardActivity$1$2$1;->this$2:Lcom/redbox/android/activity/AddCreditCardActivity$1$2;

    # getter for: Lcom/redbox/android/activity/AddCreditCardActivity$1$2;->this$1:Lcom/redbox/android/activity/AddCreditCardActivity$1;
    invoke-static {v2}, Lcom/redbox/android/activity/AddCreditCardActivity$1$2;->access$0(Lcom/redbox/android/activity/AddCreditCardActivity$1$2;)Lcom/redbox/android/activity/AddCreditCardActivity$1;

    move-result-object v2

    # getter for: Lcom/redbox/android/activity/AddCreditCardActivity$1;->this$0:Lcom/redbox/android/activity/AddCreditCardActivity;
    invoke-static {v2}, Lcom/redbox/android/activity/AddCreditCardActivity$1;->access$0(Lcom/redbox/android/activity/AddCreditCardActivity$1;)Lcom/redbox/android/activity/AddCreditCardActivity;

    move-result-object v2

    # getter for: Lcom/redbox/android/activity/AddCreditCardActivity;->cardsList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/redbox/android/activity/AddCreditCardActivity;->access$9(Lcom/redbox/android/activity/AddCreditCardActivity;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/redbox/android/activity/AddCreditCardActivity$1$2$1;->val$newCard:Lcom/redbox/android/model/Card;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 443
    :cond_0
    const-string v2, "Saved card"

    invoke-static {p0, v2}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 444
    iget-object v2, p0, Lcom/redbox/android/activity/AddCreditCardActivity$1$2$1;->this$2:Lcom/redbox/android/activity/AddCreditCardActivity$1$2;

    # getter for: Lcom/redbox/android/activity/AddCreditCardActivity$1$2;->this$1:Lcom/redbox/android/activity/AddCreditCardActivity$1;
    invoke-static {v2}, Lcom/redbox/android/activity/AddCreditCardActivity$1$2;->access$0(Lcom/redbox/android/activity/AddCreditCardActivity$1$2;)Lcom/redbox/android/activity/AddCreditCardActivity$1;

    move-result-object v2

    # getter for: Lcom/redbox/android/activity/AddCreditCardActivity$1;->this$0:Lcom/redbox/android/activity/AddCreditCardActivity;
    invoke-static {v2}, Lcom/redbox/android/activity/AddCreditCardActivity$1;->access$0(Lcom/redbox/android/activity/AddCreditCardActivity$1;)Lcom/redbox/android/activity/AddCreditCardActivity;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Lcom/redbox/android/activity/AddCreditCardActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 445
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v2, p0, Lcom/redbox/android/activity/AddCreditCardActivity$1$2$1;->this$2:Lcom/redbox/android/activity/AddCreditCardActivity$1$2;

    # getter for: Lcom/redbox/android/activity/AddCreditCardActivity$1$2;->this$1:Lcom/redbox/android/activity/AddCreditCardActivity$1;
    invoke-static {v2}, Lcom/redbox/android/activity/AddCreditCardActivity$1$2;->access$0(Lcom/redbox/android/activity/AddCreditCardActivity$1$2;)Lcom/redbox/android/activity/AddCreditCardActivity$1;

    move-result-object v2

    # getter for: Lcom/redbox/android/activity/AddCreditCardActivity$1;->this$0:Lcom/redbox/android/activity/AddCreditCardActivity;
    invoke-static {v2}, Lcom/redbox/android/activity/AddCreditCardActivity$1;->access$0(Lcom/redbox/android/activity/AddCreditCardActivity$1;)Lcom/redbox/android/activity/AddCreditCardActivity;

    move-result-object v2

    # getter for: Lcom/redbox/android/activity/AddCreditCardActivity;->txtCardAlias:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/redbox/android/activity/AddCreditCardActivity;->access$5(Lcom/redbox/android/activity/AddCreditCardActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 446
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 447
    .local v1, "resultIntent":Landroid/content/Intent;
    const-string v2, "new.card"

    iget-object v3, p0, Lcom/redbox/android/activity/AddCreditCardActivity$1$2$1;->val$newCard:Lcom/redbox/android/model/Card;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 448
    iget-object v2, p0, Lcom/redbox/android/activity/AddCreditCardActivity$1$2$1;->this$2:Lcom/redbox/android/activity/AddCreditCardActivity$1$2;

    # getter for: Lcom/redbox/android/activity/AddCreditCardActivity$1$2;->this$1:Lcom/redbox/android/activity/AddCreditCardActivity$1;
    invoke-static {v2}, Lcom/redbox/android/activity/AddCreditCardActivity$1$2;->access$0(Lcom/redbox/android/activity/AddCreditCardActivity$1$2;)Lcom/redbox/android/activity/AddCreditCardActivity$1;

    move-result-object v2

    # getter for: Lcom/redbox/android/activity/AddCreditCardActivity$1;->this$0:Lcom/redbox/android/activity/AddCreditCardActivity;
    invoke-static {v2}, Lcom/redbox/android/activity/AddCreditCardActivity$1;->access$0(Lcom/redbox/android/activity/AddCreditCardActivity$1;)Lcom/redbox/android/activity/AddCreditCardActivity;

    move-result-object v2

    const/4 v3, 0x7

    invoke-virtual {v2, v3, v1}, Lcom/redbox/android/activity/AddCreditCardActivity;->setResult(ILandroid/content/Intent;)V

    .line 450
    iget-object v2, p0, Lcom/redbox/android/activity/AddCreditCardActivity$1$2$1;->this$2:Lcom/redbox/android/activity/AddCreditCardActivity$1$2;

    # getter for: Lcom/redbox/android/activity/AddCreditCardActivity$1$2;->this$1:Lcom/redbox/android/activity/AddCreditCardActivity$1;
    invoke-static {v2}, Lcom/redbox/android/activity/AddCreditCardActivity$1$2;->access$0(Lcom/redbox/android/activity/AddCreditCardActivity$1$2;)Lcom/redbox/android/activity/AddCreditCardActivity$1;

    move-result-object v2

    # getter for: Lcom/redbox/android/activity/AddCreditCardActivity$1;->this$0:Lcom/redbox/android/activity/AddCreditCardActivity;
    invoke-static {v2}, Lcom/redbox/android/activity/AddCreditCardActivity$1;->access$0(Lcom/redbox/android/activity/AddCreditCardActivity$1;)Lcom/redbox/android/activity/AddCreditCardActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/redbox/android/activity/AddCreditCardActivity;->finish()V

    .line 451
    return-void
.end method
