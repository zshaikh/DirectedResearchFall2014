.class Lcom/redbox/android/activity/LandingActivity$7;
.super Ljava/lang/Object;
.source "LandingActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/redbox/android/activity/LandingActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemSelectedListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/redbox/android/activity/LandingActivity;


# direct methods
.method constructor <init>(Lcom/redbox/android/activity/LandingActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/redbox/android/activity/LandingActivity$7;->this$0:Lcom/redbox/android/activity/LandingActivity;

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 218
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/redbox/android/activity/LandingActivity$7;->this$0:Lcom/redbox/android/activity/LandingActivity;

    iget-object v0, v0, Lcom/redbox/android/activity/LandingActivity;->selectedGenre:Ljava/lang/String;

    invoke-static {p3}, Lcom/redbox/android/utils/Utils;->getGenreId(I)Ljava/lang/String;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 247
    :goto_0
    return-void

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/redbox/android/activity/LandingActivity$7;->this$0:Lcom/redbox/android/activity/LandingActivity;

    const-string v1, "spinner item select ---------"

    invoke-virtual {v0, v1}, Lcom/redbox/android/activity/LandingActivity;->d(Ljava/lang/String;)V

    .line 222
    iget-object v0, p0, Lcom/redbox/android/activity/LandingActivity$7;->this$0:Lcom/redbox/android/activity/LandingActivity;

    iget-object v0, v0, Lcom/redbox/android/activity/LandingActivity;->movieListAdapter:Lcom/redbox/android/adapter/MovieListAdapter;

    invoke-virtual {v0}, Lcom/redbox/android/adapter/MovieListAdapter;->setNormalMode()V

    .line 223
    iget-object v0, p0, Lcom/redbox/android/activity/LandingActivity$7;->this$0:Lcom/redbox/android/activity/LandingActivity;

    invoke-static {p3}, Lcom/redbox/android/utils/Utils;->getGenreId(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/redbox/android/activity/LandingActivity;->selectedGenre:Ljava/lang/String;

    .line 225
    iget-object v0, p0, Lcom/redbox/android/activity/LandingActivity$7;->this$0:Lcom/redbox/android/activity/LandingActivity;

    # invokes: Lcom/redbox/android/activity/LandingActivity;->updateMoviesByKisok()V
    invoke-static {v0}, Lcom/redbox/android/activity/LandingActivity;->access$0(Lcom/redbox/android/activity/LandingActivity;)V

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 252
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
