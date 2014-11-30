.class Lcom/redbox/android/activity/AddCreditCardActivity$1$2$3;
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


# direct methods
.method constructor <init>(Lcom/redbox/android/activity/AddCreditCardActivity$1$2;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/redbox/android/activity/AddCreditCardActivity$1$2$3;->this$2:Lcom/redbox/android/activity/AddCreditCardActivity$1$2;

    .line 469
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 472
    iget-object v0, p0, Lcom/redbox/android/activity/AddCreditCardActivity$1$2$3;->this$2:Lcom/redbox/android/activity/AddCreditCardActivity$1$2;

    # getter for: Lcom/redbox/android/activity/AddCreditCardActivity$1$2;->this$1:Lcom/redbox/android/activity/AddCreditCardActivity$1;
    invoke-static {v0}, Lcom/redbox/android/activity/AddCreditCardActivity$1$2;->access$0(Lcom/redbox/android/activity/AddCreditCardActivity$1$2;)Lcom/redbox/android/activity/AddCreditCardActivity$1;

    move-result-object v0

    # getter for: Lcom/redbox/android/activity/AddCreditCardActivity$1;->this$0:Lcom/redbox/android/activity/AddCreditCardActivity;
    invoke-static {v0}, Lcom/redbox/android/activity/AddCreditCardActivity$1;->access$0(Lcom/redbox/android/activity/AddCreditCardActivity$1;)Lcom/redbox/android/activity/AddCreditCardActivity;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/redbox/android/activity/AddCreditCardActivity;->removeDialog(I)V

    .line 474
    const-string v0, "Error Encoding"

    .line 473
    invoke-static {p0, v0}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 475
    return-void
.end method
