.class Lcom/redbox/android/activity/ReserveActivity$5;
.super Ljava/lang/Object;
.source "ReserveActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/redbox/android/activity/ReserveActivity;->updateUI()V
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
    iput-object p1, p0, Lcom/redbox/android/activity/ReserveActivity$5;->this$0:Lcom/redbox/android/activity/ReserveActivity;

    .line 267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 271
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/redbox/android/activity/ReserveActivity$5;->this$0:Lcom/redbox/android/activity/ReserveActivity;

    .line 272
    const-class v2, Lcom/redbox/android/activity/AddCreditCardActivity;

    .line 271
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 274
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "cards.index"

    .line 275
    iget-object v2, p0, Lcom/redbox/android/activity/ReserveActivity$5;->this$0:Lcom/redbox/android/activity/ReserveActivity;

    iget v2, v2, Lcom/redbox/android/activity/ReserveActivity;->indexOfCardShown:I

    .line 274
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 276
    iget-object v1, p0, Lcom/redbox/android/activity/ReserveActivity$5;->this$0:Lcom/redbox/android/activity/ReserveActivity;

    const/4 v2, 0x7

    invoke-virtual {v1, v0, v2}, Lcom/redbox/android/activity/ReserveActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 277
    return-void
.end method
