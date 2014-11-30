.class Lcom/redbox/android/view/RBSelectionView$1;
.super Ljava/lang/Object;
.source "RBSelectionView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/redbox/android/view/RBSelectionView;->refreshSelectedKiosk()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/redbox/android/view/RBSelectionView;


# direct methods
.method constructor <init>(Lcom/redbox/android/view/RBSelectionView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/redbox/android/view/RBSelectionView$1;->this$0:Lcom/redbox/android/view/RBSelectionView;

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 101
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/redbox/android/view/RBSelectionView$1;->this$0:Lcom/redbox/android/view/RBSelectionView;

    # getter for: Lcom/redbox/android/view/RBSelectionView;->context:Landroid/content/Context;
    invoke-static {v1}, Lcom/redbox/android/view/RBSelectionView;->access$0(Lcom/redbox/android/view/RBSelectionView;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/redbox/android/activity/FindRedboxActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 102
    .local v0, "i":Landroid/content/Intent;
    iget-object v1, p0, Lcom/redbox/android/view/RBSelectionView$1;->this$0:Lcom/redbox/android/view/RBSelectionView;

    # getter for: Lcom/redbox/android/view/RBSelectionView;->context:Landroid/content/Context;
    invoke-static {v1}, Lcom/redbox/android/view/RBSelectionView;->access$0(Lcom/redbox/android/view/RBSelectionView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 104
    return-void
.end method
