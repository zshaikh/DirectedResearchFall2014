.class Lcom/redbox/android/activity/AddCreditCardActivity$2;
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
    iput-object p1, p0, Lcom/redbox/android/activity/AddCreditCardActivity$2;->this$0:Lcom/redbox/android/activity/AddCreditCardActivity;

    .line 521
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 525
    iget-object v0, p0, Lcom/redbox/android/activity/AddCreditCardActivity$2;->this$0:Lcom/redbox/android/activity/AddCreditCardActivity;

    # invokes: Lcom/redbox/android/activity/AddCreditCardActivity;->isInViewMode()Z
    invoke-static {v0}, Lcom/redbox/android/activity/AddCreditCardActivity;->access$0(Lcom/redbox/android/activity/AddCreditCardActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 526
    iget-object v0, p0, Lcom/redbox/android/activity/AddCreditCardActivity$2;->this$0:Lcom/redbox/android/activity/AddCreditCardActivity;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/redbox/android/activity/AddCreditCardActivity;->access$1(Lcom/redbox/android/activity/AddCreditCardActivity;I)V

    .line 527
    iget-object v0, p0, Lcom/redbox/android/activity/AddCreditCardActivity$2;->this$0:Lcom/redbox/android/activity/AddCreditCardActivity;

    iget-object v1, p0, Lcom/redbox/android/activity/AddCreditCardActivity$2;->this$0:Lcom/redbox/android/activity/AddCreditCardActivity;

    # getter for: Lcom/redbox/android/activity/AddCreditCardActivity;->screenMode:I
    invoke-static {v1}, Lcom/redbox/android/activity/AddCreditCardActivity;->access$2(Lcom/redbox/android/activity/AddCreditCardActivity;)I

    move-result v1

    # invokes: Lcom/redbox/android/activity/AddCreditCardActivity;->setScreenMode(I)V
    invoke-static {v0, v1}, Lcom/redbox/android/activity/AddCreditCardActivity;->access$3(Lcom/redbox/android/activity/AddCreditCardActivity;I)V

    .line 529
    :cond_0
    return-void
.end method
