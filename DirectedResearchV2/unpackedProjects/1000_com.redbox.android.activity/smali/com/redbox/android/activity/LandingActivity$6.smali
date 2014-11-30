.class Lcom/redbox/android/activity/LandingActivity$6;
.super Ljava/lang/Object;
.source "LandingActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


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
    iput-object p1, p0, Lcom/redbox/android/activity/LandingActivity$6;->this$0:Lcom/redbox/android/activity/LandingActivity;

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 198
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 192
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 175
    iget-object v1, p0, Lcom/redbox/android/activity/LandingActivity$6;->this$0:Lcom/redbox/android/activity/LandingActivity;

    # getter for: Lcom/redbox/android/activity/LandingActivity;->searchedit:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/redbox/android/activity/LandingActivity;->access$1(Lcom/redbox/android/activity/LandingActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 176
    .local v0, "searchtext":Ljava/lang/String;
    iget-object v1, p0, Lcom/redbox/android/activity/LandingActivity$6;->this$0:Lcom/redbox/android/activity/LandingActivity;

    # getter for: Lcom/redbox/android/activity/LandingActivity;->searchedit:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/redbox/android/activity/LandingActivity;->access$1(Lcom/redbox/android/activity/LandingActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/redbox/android/activity/LandingActivity$6;->this$0:Lcom/redbox/android/activity/LandingActivity;

    # getter for: Lcom/redbox/android/activity/LandingActivity;->searchedit:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/redbox/android/activity/LandingActivity;->access$1(Lcom/redbox/android/activity/LandingActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 178
    :cond_0
    iget-object v1, p0, Lcom/redbox/android/activity/LandingActivity$6;->this$0:Lcom/redbox/android/activity/LandingActivity;

    iget-object v1, v1, Lcom/redbox/android/activity/LandingActivity;->movieListAdapter:Lcom/redbox/android/adapter/MovieListAdapter;

    invoke-virtual {v1}, Lcom/redbox/android/adapter/MovieListAdapter;->setNormalMode()V

    .line 184
    :goto_0
    iget-object v1, p0, Lcom/redbox/android/activity/LandingActivity$6;->this$0:Lcom/redbox/android/activity/LandingActivity;

    # invokes: Lcom/redbox/android/activity/LandingActivity;->updateMoviesByKisok()V
    invoke-static {v1}, Lcom/redbox/android/activity/LandingActivity;->access$0(Lcom/redbox/android/activity/LandingActivity;)V

    .line 186
    return-void

    .line 180
    :cond_1
    iget-object v1, p0, Lcom/redbox/android/activity/LandingActivity$6;->this$0:Lcom/redbox/android/activity/LandingActivity;

    iget-object v1, v1, Lcom/redbox/android/activity/LandingActivity;->movieListAdapter:Lcom/redbox/android/adapter/MovieListAdapter;

    invoke-virtual {v1}, Lcom/redbox/android/adapter/MovieListAdapter;->setSearchMode()V

    goto :goto_0
.end method
