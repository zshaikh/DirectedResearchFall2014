.class Lcom/redbox/android/adapter/KioskListAdapter$AddFavClickListener;
.super Ljava/lang/Object;
.source "KioskListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/redbox/android/adapter/KioskListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AddFavClickListener"
.end annotation


# instance fields
.field private id:I

.field final synthetic this$0:Lcom/redbox/android/adapter/KioskListAdapter;


# direct methods
.method public constructor <init>(Lcom/redbox/android/adapter/KioskListAdapter;I)V
    .locals 0
    .param p2, "id"    # I

    .prologue
    .line 289
    iput-object p1, p0, Lcom/redbox/android/adapter/KioskListAdapter$AddFavClickListener;->this$0:Lcom/redbox/android/adapter/KioskListAdapter;

    .line 287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 288
    iput p2, p0, Lcom/redbox/android/adapter/KioskListAdapter$AddFavClickListener;->id:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 293
    iget-object v1, p0, Lcom/redbox/android/adapter/KioskListAdapter$AddFavClickListener;->this$0:Lcom/redbox/android/adapter/KioskListAdapter;

    iget-object v1, v1, Lcom/redbox/android/adapter/KioskListAdapter;->k:Ljava/util/List;

    iget v2, p0, Lcom/redbox/android/adapter/KioskListAdapter$AddFavClickListener;->id:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/redbox/android/model/Kiosk;

    .line 294
    .local v0, "current":Lcom/redbox/android/model/Kiosk;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " Id of view = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/redbox/android/adapter/KioskListAdapter$AddFavClickListener;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Name : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 295
    invoke-virtual {v0}, Lcom/redbox/android/model/Kiosk;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 294
    invoke-static {p0, v1}, Lcom/redbox/android/utils/RBLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 297
    invoke-static {}, Lcom/redbox/android/adapter/FavKioskDBAdapter;->getInstance()Lcom/redbox/android/adapter/FavKioskDBAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/redbox/android/adapter/FavKioskDBAdapter;->insertKiosk(Lcom/redbox/android/model/Kiosk;)J

    .line 298
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " Added Kiosk : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/redbox/android/model/Kiosk;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": zip : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 299
    invoke-virtual {v0}, Lcom/redbox/android/model/Kiosk;->getZip()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 298
    invoke-static {p0, v1}, Lcom/redbox/android/utils/RBLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 300
    return-void
.end method
