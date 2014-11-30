.class Lcom/redbox/android/activity/AddCreditCardActivity$1$1$1;
.super Ljava/lang/Object;
.source "AddCreditCardActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/redbox/android/activity/AddCreditCardActivity$1$1;->dataReceived([B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/redbox/android/activity/AddCreditCardActivity$1$1;

.field private final synthetic val$changedCard:Lcom/redbox/android/model/Card;


# direct methods
.method constructor <init>(Lcom/redbox/android/activity/AddCreditCardActivity$1$1;Lcom/redbox/android/model/Card;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/redbox/android/activity/AddCreditCardActivity$1$1$1;->this$2:Lcom/redbox/android/activity/AddCreditCardActivity$1$1;

    iput-object p2, p0, Lcom/redbox/android/activity/AddCreditCardActivity$1$1$1;->val$changedCard:Lcom/redbox/android/model/Card;

    .line 276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 281
    iget-object v1, p0, Lcom/redbox/android/activity/AddCreditCardActivity$1$1$1;->this$2:Lcom/redbox/android/activity/AddCreditCardActivity$1$1;

    # getter for: Lcom/redbox/android/activity/AddCreditCardActivity$1$1;->this$1:Lcom/redbox/android/activity/AddCreditCardActivity$1;
    invoke-static {v1}, Lcom/redbox/android/activity/AddCreditCardActivity$1$1;->access$0(Lcom/redbox/android/activity/AddCreditCardActivity$1$1;)Lcom/redbox/android/activity/AddCreditCardActivity$1;

    move-result-object v1

    # getter for: Lcom/redbox/android/activity/AddCreditCardActivity$1;->this$0:Lcom/redbox/android/activity/AddCreditCardActivity;
    invoke-static {v1}, Lcom/redbox/android/activity/AddCreditCardActivity$1;->access$0(Lcom/redbox/android/activity/AddCreditCardActivity$1;)Lcom/redbox/android/activity/AddCreditCardActivity;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/redbox/android/activity/AddCreditCardActivity;->removeDialog(I)V

    .line 286
    const-string v1, "Changed Saved card"

    invoke-static {p0, v1}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 287
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 288
    .local v0, "resultIntent":Landroid/content/Intent;
    const-string v1, "card.changed"

    iget-object v2, p0, Lcom/redbox/android/activity/AddCreditCardActivity$1$1$1;->val$changedCard:Lcom/redbox/android/model/Card;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 290
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Card number : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/redbox/android/activity/AddCreditCardActivity$1$1$1;->val$changedCard:Lcom/redbox/android/model/Card;

    invoke-virtual {v2}, Lcom/redbox/android/model/Card;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 291
    const-string v1, "card.index"

    iget-object v2, p0, Lcom/redbox/android/activity/AddCreditCardActivity$1$1$1;->val$changedCard:Lcom/redbox/android/model/Card;

    invoke-virtual {v2}, Lcom/redbox/android/model/Card;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 292
    iget-object v1, p0, Lcom/redbox/android/activity/AddCreditCardActivity$1$1$1;->this$2:Lcom/redbox/android/activity/AddCreditCardActivity$1$1;

    # getter for: Lcom/redbox/android/activity/AddCreditCardActivity$1$1;->this$1:Lcom/redbox/android/activity/AddCreditCardActivity$1;
    invoke-static {v1}, Lcom/redbox/android/activity/AddCreditCardActivity$1$1;->access$0(Lcom/redbox/android/activity/AddCreditCardActivity$1$1;)Lcom/redbox/android/activity/AddCreditCardActivity$1;

    move-result-object v1

    # getter for: Lcom/redbox/android/activity/AddCreditCardActivity$1;->this$0:Lcom/redbox/android/activity/AddCreditCardActivity;
    invoke-static {v1}, Lcom/redbox/android/activity/AddCreditCardActivity$1;->access$0(Lcom/redbox/android/activity/AddCreditCardActivity$1;)Lcom/redbox/android/activity/AddCreditCardActivity;

    move-result-object v1

    const/16 v2, 0xb

    invoke-virtual {v1, v2, v0}, Lcom/redbox/android/activity/AddCreditCardActivity;->setResult(ILandroid/content/Intent;)V

    .line 294
    iget-object v1, p0, Lcom/redbox/android/activity/AddCreditCardActivity$1$1$1;->this$2:Lcom/redbox/android/activity/AddCreditCardActivity$1$1;

    # getter for: Lcom/redbox/android/activity/AddCreditCardActivity$1$1;->this$1:Lcom/redbox/android/activity/AddCreditCardActivity$1;
    invoke-static {v1}, Lcom/redbox/android/activity/AddCreditCardActivity$1$1;->access$0(Lcom/redbox/android/activity/AddCreditCardActivity$1$1;)Lcom/redbox/android/activity/AddCreditCardActivity$1;

    move-result-object v1

    # getter for: Lcom/redbox/android/activity/AddCreditCardActivity$1;->this$0:Lcom/redbox/android/activity/AddCreditCardActivity;
    invoke-static {v1}, Lcom/redbox/android/activity/AddCreditCardActivity$1;->access$0(Lcom/redbox/android/activity/AddCreditCardActivity$1;)Lcom/redbox/android/activity/AddCreditCardActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/redbox/android/activity/AddCreditCardActivity;->finish()V

    .line 295
    return-void
.end method
