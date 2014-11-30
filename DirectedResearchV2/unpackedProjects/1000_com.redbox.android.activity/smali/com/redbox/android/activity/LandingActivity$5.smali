.class Lcom/redbox/android/activity/LandingActivity$5;
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
    iput-object p1, p0, Lcom/redbox/android/activity/LandingActivity$5;->this$0:Lcom/redbox/android/activity/LandingActivity;

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 152
    iget-object v0, p0, Lcom/redbox/android/activity/LandingActivity$5;->this$0:Lcom/redbox/android/activity/LandingActivity;

    iget-object v0, v0, Lcom/redbox/android/activity/LandingActivity;->headerView:Lcom/redbox/android/view/HeaderView;

    invoke-virtual {v0, v2}, Lcom/redbox/android/view/HeaderView;->setVisibility(I)V

    .line 153
    iget-object v0, p0, Lcom/redbox/android/activity/LandingActivity$5;->this$0:Lcom/redbox/android/activity/LandingActivity;

    iget-object v0, v0, Lcom/redbox/android/activity/LandingActivity;->serch:Lcom/redbox/android/view/SearchView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/redbox/android/view/SearchView;->setVisibility(I)V

    .line 154
    iget-object v0, p0, Lcom/redbox/android/activity/LandingActivity$5;->this$0:Lcom/redbox/android/activity/LandingActivity;

    iget-object v0, v0, Lcom/redbox/android/activity/LandingActivity;->moviesList:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 155
    iget-object v0, p0, Lcom/redbox/android/activity/LandingActivity$5;->this$0:Lcom/redbox/android/activity/LandingActivity;

    iget-object v0, v0, Lcom/redbox/android/activity/LandingActivity;->moviesList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/redbox/android/activity/LandingActivity$5;->this$0:Lcom/redbox/android/activity/LandingActivity;

    iget-object v1, v1, Lcom/redbox/android/activity/LandingActivity;->listHeaderView:Landroid/view/View;

    invoke-virtual {v0, v1, v3, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 156
    iget-object v0, p0, Lcom/redbox/android/activity/LandingActivity$5;->this$0:Lcom/redbox/android/activity/LandingActivity;

    iget-object v0, v0, Lcom/redbox/android/activity/LandingActivity;->moviesList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/redbox/android/activity/LandingActivity$5;->this$0:Lcom/redbox/android/activity/LandingActivity;

    iget-object v1, v1, Lcom/redbox/android/activity/LandingActivity;->movieListAdapter:Lcom/redbox/android/adapter/MovieListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 157
    iget-object v0, p0, Lcom/redbox/android/activity/LandingActivity$5;->this$0:Lcom/redbox/android/activity/LandingActivity;

    # getter for: Lcom/redbox/android/activity/LandingActivity;->searchedit:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/redbox/android/activity/LandingActivity;->access$1(Lcom/redbox/android/activity/LandingActivity;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 158
    iget-object v0, p0, Lcom/redbox/android/activity/LandingActivity$5;->this$0:Lcom/redbox/android/activity/LandingActivity;

    iget-object v0, v0, Lcom/redbox/android/activity/LandingActivity;->inputMgr:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/redbox/android/activity/LandingActivity$5;->this$0:Lcom/redbox/android/activity/LandingActivity;

    # getter for: Lcom/redbox/android/activity/LandingActivity;->searchedit:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/redbox/android/activity/LandingActivity;->access$1(Lcom/redbox/android/activity/LandingActivity;)Landroid/widget/EditText;

    move-result-object v1

    .line 159
    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    .line 158
    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromInputMethod(Landroid/os/IBinder;I)V

    .line 160
    iget-object v0, p0, Lcom/redbox/android/activity/LandingActivity$5;->this$0:Lcom/redbox/android/activity/LandingActivity;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Lcom/redbox/android/activity/LandingActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 161
    iget-object v1, p0, Lcom/redbox/android/activity/LandingActivity$5;->this$0:Lcom/redbox/android/activity/LandingActivity;

    # getter for: Lcom/redbox/android/activity/LandingActivity;->searchedit:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/redbox/android/activity/LandingActivity;->access$1(Lcom/redbox/android/activity/LandingActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 162
    iget-object v0, p0, Lcom/redbox/android/activity/LandingActivity$5;->this$0:Lcom/redbox/android/activity/LandingActivity;

    iget-object v0, v0, Lcom/redbox/android/activity/LandingActivity;->movieListAdapter:Lcom/redbox/android/adapter/MovieListAdapter;

    invoke-virtual {v0}, Lcom/redbox/android/adapter/MovieListAdapter;->setNormalMode()V

    .line 165
    iget-object v0, p0, Lcom/redbox/android/activity/LandingActivity$5;->this$0:Lcom/redbox/android/activity/LandingActivity;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/redbox/android/activity/LandingActivity;->showDialog(I)V

    .line 166
    iget-object v0, p0, Lcom/redbox/android/activity/LandingActivity$5;->this$0:Lcom/redbox/android/activity/LandingActivity;

    # invokes: Lcom/redbox/android/activity/LandingActivity;->updateMoviesByKisok()V
    invoke-static {v0}, Lcom/redbox/android/activity/LandingActivity;->access$0(Lcom/redbox/android/activity/LandingActivity;)V

    .line 167
    return-void
.end method
