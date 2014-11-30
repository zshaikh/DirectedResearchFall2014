.class Lcom/redbox/android/activity/FindRedboxActivity$2;
.super Ljava/lang/Object;
.source "FindRedboxActivity.java"

# interfaces
.implements Lcom/redbox/android/adapter/FavouriteKioskListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/redbox/android/activity/FindRedboxActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/redbox/android/activity/FindRedboxActivity;


# direct methods
.method constructor <init>(Lcom/redbox/android/activity/FindRedboxActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/redbox/android/activity/FindRedboxActivity$2;->this$0:Lcom/redbox/android/activity/FindRedboxActivity;

    .line 825
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public FavModified()V
    .locals 9

    .prologue
    const/16 v2, 0x8

    .line 829
    iget-object v0, p0, Lcom/redbox/android/activity/FindRedboxActivity$2;->this$0:Lcom/redbox/android/activity/FindRedboxActivity;

    iget-object v0, v0, Lcom/redbox/android/activity/FindRedboxActivity;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 830
    iget-object v0, p0, Lcom/redbox/android/activity/FindRedboxActivity$2;->this$0:Lcom/redbox/android/activity/FindRedboxActivity;

    invoke-static {}, Lcom/redbox/android/adapter/FavKioskDBAdapter;->getInstance()Lcom/redbox/android/adapter/FavKioskDBAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/redbox/android/adapter/FavKioskDBAdapter;->getAllFavKiosks()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/redbox/android/activity/FindRedboxActivity;->k:Ljava/util/List;

    .line 831
    iget-object v0, p0, Lcom/redbox/android/activity/FindRedboxActivity$2;->this$0:Lcom/redbox/android/activity/FindRedboxActivity;

    iget-object v0, v0, Lcom/redbox/android/activity/FindRedboxActivity;->k:Ljava/util/List;

    if-nez v0, :cond_0

    .line 862
    :goto_0
    return-void

    .line 834
    :cond_0
    iget-object v0, p0, Lcom/redbox/android/activity/FindRedboxActivity$2;->this$0:Lcom/redbox/android/activity/FindRedboxActivity;

    iget-object v1, p0, Lcom/redbox/android/activity/FindRedboxActivity$2;->this$0:Lcom/redbox/android/activity/FindRedboxActivity;

    iget-object v1, v1, Lcom/redbox/android/activity/FindRedboxActivity;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, v0, Lcom/redbox/android/activity/FindRedboxActivity;->noOfFavs:I

    .line 835
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TenPos -> FavKiosks modified, # = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/redbox/android/activity/FindRedboxActivity$2;->this$0:Lcom/redbox/android/activity/FindRedboxActivity;

    iget-object v1, v1, Lcom/redbox/android/activity/FindRedboxActivity;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 836
    const-string v1, ", # nearby = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/redbox/android/activity/FindRedboxActivity$2;->this$0:Lcom/redbox/android/activity/FindRedboxActivity;

    iget-object v1, v1, Lcom/redbox/android/activity/FindRedboxActivity;->nearbyKiosks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 835
    invoke-static {p0, v0}, Lcom/redbox/android/utils/RBLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 837
    const/4 v7, 0x0

    .line 838
    .local v7, "tenDist":Z
    const/4 v8, -0x1

    .line 840
    .local v8, "tenPos":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    iget-object v0, p0, Lcom/redbox/android/activity/FindRedboxActivity$2;->this$0:Lcom/redbox/android/activity/FindRedboxActivity;

    iget-object v0, v0, Lcom/redbox/android/activity/FindRedboxActivity;->nearbyKiosks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v6, v0, :cond_1

    .line 853
    iget-object v0, p0, Lcom/redbox/android/activity/FindRedboxActivity$2;->this$0:Lcom/redbox/android/activity/FindRedboxActivity;

    const v1, 0x7f070022

    invoke-virtual {v0, v1}, Lcom/redbox/android/activity/FindRedboxActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 854
    iget-object v0, p0, Lcom/redbox/android/activity/FindRedboxActivity$2;->this$0:Lcom/redbox/android/activity/FindRedboxActivity;

    const v1, 0x7f070033

    invoke-virtual {v0, v1}, Lcom/redbox/android/activity/FindRedboxActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 855
    iget-object v0, p0, Lcom/redbox/android/activity/FindRedboxActivity$2;->this$0:Lcom/redbox/android/activity/FindRedboxActivity;

    const v1, 0x7f070035

    invoke-virtual {v0, v1}, Lcom/redbox/android/activity/FindRedboxActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 857
    iget-object v0, p0, Lcom/redbox/android/activity/FindRedboxActivity$2;->this$0:Lcom/redbox/android/activity/FindRedboxActivity;

    iget-object v0, v0, Lcom/redbox/android/activity/FindRedboxActivity;->nearbyListAdapter:Lcom/redbox/android/adapter/KioskListAdapter;

    iget-object v1, p0, Lcom/redbox/android/activity/FindRedboxActivity$2;->this$0:Lcom/redbox/android/activity/FindRedboxActivity;

    iget-object v1, v1, Lcom/redbox/android/activity/FindRedboxActivity;->k:Ljava/util/List;

    iget-object v2, p0, Lcom/redbox/android/activity/FindRedboxActivity$2;->this$0:Lcom/redbox/android/activity/FindRedboxActivity;

    iget v2, v2, Lcom/redbox/android/activity/FindRedboxActivity;->noOfFavs:I

    const/4 v3, 0x1

    sub-int v3, v8, v3

    iget-object v4, p0, Lcom/redbox/android/activity/FindRedboxActivity$2;->this$0:Lcom/redbox/android/activity/FindRedboxActivity;

    iget-object v4, v4, Lcom/redbox/android/activity/FindRedboxActivity;->inventory:Ljava/util/HashMap;

    .line 858
    iget-object v5, p0, Lcom/redbox/android/activity/FindRedboxActivity$2;->this$0:Lcom/redbox/android/activity/FindRedboxActivity;

    iget-boolean v5, v5, Lcom/redbox/android/activity/FindRedboxActivity;->movieMode:Z

    .line 857
    invoke-virtual/range {v0 .. v5}, Lcom/redbox/android/adapter/KioskListAdapter;->update(Ljava/util/List;IILjava/util/HashMap;Z)V

    .line 859
    iget-object v0, p0, Lcom/redbox/android/activity/FindRedboxActivity$2;->this$0:Lcom/redbox/android/activity/FindRedboxActivity;

    iget-object v0, v0, Lcom/redbox/android/activity/FindRedboxActivity;->nearbyListAdapter:Lcom/redbox/android/adapter/KioskListAdapter;

    invoke-virtual {v0}, Lcom/redbox/android/adapter/KioskListAdapter;->notifyDataSetChanged()V

    .line 860
    const-string v0, "Notified data set changed"

    invoke-static {p0, v0}, Lcom/redbox/android/utils/RBLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 861
    const-string v0, "Updated NearByList"

    invoke-static {p0, v0}, Lcom/redbox/android/utils/RBLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 841
    :cond_1
    iget-object v0, p0, Lcom/redbox/android/activity/FindRedboxActivity$2;->this$0:Lcom/redbox/android/activity/FindRedboxActivity;

    iget-object v1, v0, Lcom/redbox/android/activity/FindRedboxActivity;->k:Ljava/util/List;

    iget-object v0, p0, Lcom/redbox/android/activity/FindRedboxActivity$2;->this$0:Lcom/redbox/android/activity/FindRedboxActivity;

    iget-object v0, v0, Lcom/redbox/android/activity/FindRedboxActivity;->nearbyKiosks:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/redbox/android/model/Kiosk;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 842
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TenPos -> "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/redbox/android/activity/FindRedboxActivity$2;->this$0:Lcom/redbox/android/activity/FindRedboxActivity;

    iget-object v1, v1, Lcom/redbox/android/activity/FindRedboxActivity;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " distance :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 843
    iget-object v0, p0, Lcom/redbox/android/activity/FindRedboxActivity$2;->this$0:Lcom/redbox/android/activity/FindRedboxActivity;

    iget-object v0, v0, Lcom/redbox/android/activity/FindRedboxActivity;->nearbyKiosks:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/redbox/android/model/Kiosk;

    invoke-virtual {v0}, Lcom/redbox/android/model/Kiosk;->getDist()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 842
    invoke-static {p0, v0}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 844
    if-nez v7, :cond_2

    .line 845
    iget-object v0, p0, Lcom/redbox/android/activity/FindRedboxActivity$2;->this$0:Lcom/redbox/android/activity/FindRedboxActivity;

    iget-object v0, v0, Lcom/redbox/android/activity/FindRedboxActivity;->nearbyKiosks:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/redbox/android/model/Kiosk;

    invoke-virtual {v0}, Lcom/redbox/android/model/Kiosk;->getDist()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    const/high16 v1, 0x40a00000

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 846
    iget-object v0, p0, Lcom/redbox/android/activity/FindRedboxActivity$2;->this$0:Lcom/redbox/android/activity/FindRedboxActivity;

    iget-object v0, v0, Lcom/redbox/android/activity/FindRedboxActivity;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    .line 847
    const/4 v7, 0x1

    .line 848
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TenPos = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/redbox/android/activity/FindRedboxActivity$2;->this$0:Lcom/redbox/android/activity/FindRedboxActivity;

    iget-object v1, v1, Lcom/redbox/android/activity/FindRedboxActivity;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " distance :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 849
    iget-object v0, p0, Lcom/redbox/android/activity/FindRedboxActivity$2;->this$0:Lcom/redbox/android/activity/FindRedboxActivity;

    iget-object v0, v0, Lcom/redbox/android/activity/FindRedboxActivity;->nearbyKiosks:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/redbox/android/model/Kiosk;

    invoke-virtual {v0}, Lcom/redbox/android/model/Kiosk;->getDist()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 848
    invoke-static {p0, v0}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 840
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1
.end method
