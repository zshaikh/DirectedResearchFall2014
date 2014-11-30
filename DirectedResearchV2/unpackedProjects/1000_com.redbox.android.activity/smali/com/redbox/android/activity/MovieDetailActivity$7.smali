.class Lcom/redbox/android/activity/MovieDetailActivity$7;
.super Ljava/lang/Object;
.source "MovieDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/redbox/android/activity/MovieDetailActivity;->updateView(Lcom/redbox/android/model/MovieDetail;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/redbox/android/activity/MovieDetailActivity;


# direct methods
.method constructor <init>(Lcom/redbox/android/activity/MovieDetailActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/redbox/android/activity/MovieDetailActivity$7;->this$0:Lcom/redbox/android/activity/MovieDetailActivity;

    .line 356
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 361
    invoke-static {}, Lcom/redbox/android/model/SelectedKioskManager;->getInstance()Lcom/redbox/android/model/SelectedKioskManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/redbox/android/model/SelectedKioskManager;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 363
    sget-boolean v2, Lcom/redbox/android/utils/RuntimeCache;->LOGGED_IN:Z

    if-eqz v2, :cond_0

    .line 364
    invoke-static {}, Lcom/redbox/android/model/SelectedKioskManager;->getInstance()Lcom/redbox/android/model/SelectedKioskManager;

    move-result-object v2

    .line 365
    iget-object v3, p0, Lcom/redbox/android/activity/MovieDetailActivity$7;->this$0:Lcom/redbox/android/activity/MovieDetailActivity;

    iget v3, v3, Lcom/redbox/android/activity/MovieDetailActivity;->movieId:I

    invoke-virtual {v2, v3}, Lcom/redbox/android/model/SelectedKioskManager;->movieExistsInSelectedKiosk(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 366
    const-string v2, "Used logged in , reserving"

    invoke-static {p0, v2}, Lcom/redbox/android/utils/RBLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 367
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/redbox/android/activity/MovieDetailActivity$7;->this$0:Lcom/redbox/android/activity/MovieDetailActivity;

    .line 368
    const-class v3, Lcom/redbox/android/activity/ReserveActivity;

    .line 367
    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 369
    .local v0, "i":Landroid/content/Intent;
    const-string v2, "moviedetail.obj"

    .line 370
    iget-object v3, p0, Lcom/redbox/android/activity/MovieDetailActivity$7;->this$0:Lcom/redbox/android/activity/MovieDetailActivity;

    iget-object v3, v3, Lcom/redbox/android/activity/MovieDetailActivity;->currentMovie:Lcom/redbox/android/model/MovieDetail;

    .line 369
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 371
    iget-object v2, p0, Lcom/redbox/android/activity/MovieDetailActivity$7;->this$0:Lcom/redbox/android/activity/MovieDetailActivity;

    invoke-virtual {v2, v0, v4}, Lcom/redbox/android/activity/MovieDetailActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 401
    :goto_0
    return-void

    .line 376
    .end local v0    # "i":Landroid/content/Intent;
    :cond_0
    invoke-static {}, Lcom/redbox/android/model/SelectedKioskManager;->getInstance()Lcom/redbox/android/model/SelectedKioskManager;

    move-result-object v2

    .line 377
    iget-object v3, p0, Lcom/redbox/android/activity/MovieDetailActivity$7;->this$0:Lcom/redbox/android/activity/MovieDetailActivity;

    iget v3, v3, Lcom/redbox/android/activity/MovieDetailActivity;->movieId:I

    invoke-virtual {v2, v3}, Lcom/redbox/android/model/SelectedKioskManager;->movieExistsInSelectedKiosk(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 378
    const-string v2, "Used logged out , logging in"

    invoke-static {p0, v2}, Lcom/redbox/android/utils/RBLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 379
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/redbox/android/activity/MovieDetailActivity$7;->this$0:Lcom/redbox/android/activity/MovieDetailActivity;

    .line 380
    const-class v3, Lcom/redbox/android/activity/LoginActivity;

    .line 379
    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 381
    .restart local v0    # "i":Landroid/content/Intent;
    const-string v2, "nextactivity.class"

    .line 382
    const-class v3, Lcom/redbox/android/activity/ReserveActivity;

    .line 381
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 383
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 384
    .local v1, "param":Ljava/util/HashMap;
    const-string v2, "moviedetail.obj"

    iget-object v3, p0, Lcom/redbox/android/activity/MovieDetailActivity$7;->this$0:Lcom/redbox/android/activity/MovieDetailActivity;

    iget-object v3, v3, Lcom/redbox/android/activity/MovieDetailActivity;->currentMovie:Lcom/redbox/android/model/MovieDetail;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    const-string v2, "nextactivity.params"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 386
    iget-object v2, p0, Lcom/redbox/android/activity/MovieDetailActivity$7;->this$0:Lcom/redbox/android/activity/MovieDetailActivity;

    invoke-virtual {v2, v0, v4}, Lcom/redbox/android/activity/MovieDetailActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 393
    .end local v0    # "i":Landroid/content/Intent;
    .end local v1    # "param":Ljava/util/HashMap;
    :cond_1
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/redbox/android/activity/MovieDetailActivity$7;->this$0:Lcom/redbox/android/activity/MovieDetailActivity;

    .line 394
    const-class v3, Lcom/redbox/android/activity/FindRedboxActivity;

    .line 393
    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 395
    .restart local v0    # "i":Landroid/content/Intent;
    const-string v2, "moviedetail.obj"

    .line 396
    iget-object v3, p0, Lcom/redbox/android/activity/MovieDetailActivity$7;->this$0:Lcom/redbox/android/activity/MovieDetailActivity;

    iget-object v3, v3, Lcom/redbox/android/activity/MovieDetailActivity;->currentMovie:Lcom/redbox/android/model/MovieDetail;

    .line 395
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 397
    const-string v2, "MOVIE_ID"

    .line 398
    iget-object v3, p0, Lcom/redbox/android/activity/MovieDetailActivity$7;->this$0:Lcom/redbox/android/activity/MovieDetailActivity;

    iget v3, v3, Lcom/redbox/android/activity/MovieDetailActivity;->movieId:I

    .line 397
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 399
    iget-object v2, p0, Lcom/redbox/android/activity/MovieDetailActivity$7;->this$0:Lcom/redbox/android/activity/MovieDetailActivity;

    invoke-virtual {v2, v0}, Lcom/redbox/android/activity/MovieDetailActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
