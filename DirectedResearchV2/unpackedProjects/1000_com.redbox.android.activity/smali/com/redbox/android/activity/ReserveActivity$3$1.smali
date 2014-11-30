.class Lcom/redbox/android/activity/ReserveActivity$3$1;
.super Ljava/lang/Object;
.source "ReserveActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/redbox/android/activity/ReserveActivity$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/redbox/android/activity/ReserveActivity$3;


# direct methods
.method constructor <init>(Lcom/redbox/android/activity/ReserveActivity$3;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/redbox/android/activity/ReserveActivity$3$1;->this$1:Lcom/redbox/android/activity/ReserveActivity$3;

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 190
    iget-object v0, p0, Lcom/redbox/android/activity/ReserveActivity$3$1;->this$1:Lcom/redbox/android/activity/ReserveActivity$3;

    # getter for: Lcom/redbox/android/activity/ReserveActivity$3;->this$0:Lcom/redbox/android/activity/ReserveActivity;
    invoke-static {v0}, Lcom/redbox/android/activity/ReserveActivity$3;->access$0(Lcom/redbox/android/activity/ReserveActivity$3;)Lcom/redbox/android/activity/ReserveActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/redbox/android/activity/ReserveActivity;->finish()V

    .line 191
    return-void
.end method
