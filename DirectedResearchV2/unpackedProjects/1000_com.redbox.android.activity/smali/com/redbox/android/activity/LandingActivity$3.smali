.class Lcom/redbox/android/activity/LandingActivity$3;
.super Ljava/lang/Object;
.source "LandingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/redbox/android/activity/LandingActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/redbox/android/activity/LandingActivity;


# direct methods
.method constructor <init>(Lcom/redbox/android/activity/LandingActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/redbox/android/activity/LandingActivity$3;->this$0:Lcom/redbox/android/activity/LandingActivity;

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, -0x2

    const/4 v3, 0x0

    .line 123
    iget-object v1, p0, Lcom/redbox/android/activity/LandingActivity$3;->this$0:Lcom/redbox/android/activity/LandingActivity;

    iget-object v1, v1, Lcom/redbox/android/activity/LandingActivity;->moviesList:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/redbox/android/activity/LandingActivity$3;->this$0:Lcom/redbox/android/activity/LandingActivity;

    iget-object v2, v2, Lcom/redbox/android/activity/LandingActivity;->listHeaderView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z

    .line 124
    iget-object v1, p0, Lcom/redbox/android/activity/LandingActivity$3;->this$0:Lcom/redbox/android/activity/LandingActivity;

    iget-object v1, v1, Lcom/redbox/android/activity/LandingActivity;->headerView:Lcom/redbox/android/view/HeaderView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/redbox/android/view/HeaderView;->setVisibility(I)V

    .line 125
    iget-object v1, p0, Lcom/redbox/android/activity/LandingActivity$3;->this$0:Lcom/redbox/android/activity/LandingActivity;

    iget-object v1, v1, Lcom/redbox/android/activity/LandingActivity;->inputMgr:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v1, v3, v3}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 126
    iget-object v1, p0, Lcom/redbox/android/activity/LandingActivity$3;->this$0:Lcom/redbox/android/activity/LandingActivity;

    iget-object v1, v1, Lcom/redbox/android/activity/LandingActivity;->serch:Lcom/redbox/android/view/SearchView;

    invoke-virtual {v1, v3}, Lcom/redbox/android/view/SearchView;->setVisibility(I)V

    .line 127
    iget-object v1, p0, Lcom/redbox/android/activity/LandingActivity$3;->this$0:Lcom/redbox/android/activity/LandingActivity;

    # getter for: Lcom/redbox/android/activity/LandingActivity;->searchedit:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/redbox/android/activity/LandingActivity;->access$1(Lcom/redbox/android/activity/LandingActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 128
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 130
    .local v0, "searchheaderfix":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/redbox/android/activity/LandingActivity$3;->this$0:Lcom/redbox/android/activity/LandingActivity;

    iget-object v2, v2, Lcom/redbox/android/activity/LandingActivity;->serch:Lcom/redbox/android/view/SearchView;

    invoke-virtual {v2}, Lcom/redbox/android/view/SearchView;->getId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 131
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/redbox/android/activity/LandingActivity$3;->this$0:Lcom/redbox/android/activity/LandingActivity;

    # getter for: Lcom/redbox/android/activity/LandingActivity;->selectionView:Lcom/redbox/android/view/RBSelectionView;
    invoke-static {v2}, Lcom/redbox/android/activity/LandingActivity;->access$2(Lcom/redbox/android/activity/LandingActivity;)Lcom/redbox/android/view/RBSelectionView;

    move-result-object v2

    .line 132
    invoke-virtual {v2}, Lcom/redbox/android/view/RBSelectionView;->getId()I

    move-result v2

    .line 131
    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 133
    iget-object v1, p0, Lcom/redbox/android/activity/LandingActivity$3;->this$0:Lcom/redbox/android/activity/LandingActivity;

    iget-object v1, v1, Lcom/redbox/android/activity/LandingActivity;->moviesList:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 135
    return-void
.end method
