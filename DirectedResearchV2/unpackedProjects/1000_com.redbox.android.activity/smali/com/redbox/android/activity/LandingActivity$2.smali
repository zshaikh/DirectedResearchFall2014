.class Lcom/redbox/android/activity/LandingActivity$2;
.super Ljava/lang/Object;
.source "LandingActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/redbox/android/activity/LandingActivity;


# direct methods
.method constructor <init>(Lcom/redbox/android/activity/LandingActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/redbox/android/activity/LandingActivity$2;->this$0:Lcom/redbox/android/activity/LandingActivity;

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
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
    .line 99
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    instance-of v3, p2, Lcom/redbox/android/view/MovieTitleView;

    if-eqz v3, :cond_0

    .line 100
    move-object v0, p2

    check-cast v0, Lcom/redbox/android/view/MovieTitleView;

    move-object v2, v0

    .line 101
    .local v2, "m":Lcom/redbox/android/view/MovieTitleView;
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/redbox/android/activity/LandingActivity$2;->this$0:Lcom/redbox/android/activity/LandingActivity;

    .line 102
    const-class v4, Lcom/redbox/android/activity/MovieDetailActivity;

    .line 101
    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 103
    .local v1, "i":Landroid/content/Intent;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Clicked on"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 104
    invoke-virtual {v2}, Lcom/redbox/android/view/MovieTitleView;->getMovieObject()Lcom/redbox/android/model/Movie;

    move-result-object v4

    invoke-virtual {v4}, Lcom/redbox/android/model/Movie;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 103
    invoke-static {p0, v3}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    const-string v3, "movie_id"

    .line 106
    invoke-virtual {v2}, Lcom/redbox/android/view/MovieTitleView;->getMovieObject()Lcom/redbox/android/model/Movie;

    move-result-object v4

    invoke-virtual {v4}, Lcom/redbox/android/model/Movie;->getId()I

    move-result v4

    .line 105
    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 107
    iget-object v3, p0, Lcom/redbox/android/activity/LandingActivity$2;->this$0:Lcom/redbox/android/activity/LandingActivity;

    invoke-virtual {v3, v1}, Lcom/redbox/android/activity/LandingActivity;->startActivity(Landroid/content/Intent;)V

    .line 110
    .end local v1    # "i":Landroid/content/Intent;
    .end local v2    # "m":Lcom/redbox/android/view/MovieTitleView;
    :cond_0
    return-void
.end method
