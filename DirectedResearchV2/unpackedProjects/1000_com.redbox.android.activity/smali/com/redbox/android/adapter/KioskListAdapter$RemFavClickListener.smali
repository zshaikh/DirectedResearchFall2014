.class Lcom/redbox/android/adapter/KioskListAdapter$RemFavClickListener;
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
    name = "RemFavClickListener"
.end annotation


# instance fields
.field private id:I

.field final synthetic this$0:Lcom/redbox/android/adapter/KioskListAdapter;


# direct methods
.method public constructor <init>(Lcom/redbox/android/adapter/KioskListAdapter;I)V
    .locals 0
    .param p2, "id"    # I

    .prologue
    .line 310
    iput-object p1, p0, Lcom/redbox/android/adapter/KioskListAdapter$RemFavClickListener;->this$0:Lcom/redbox/android/adapter/KioskListAdapter;

    .line 308
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 309
    iput p2, p0, Lcom/redbox/android/adapter/KioskListAdapter$RemFavClickListener;->id:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 314
    const-string v0, "Kiosk Delete"

    invoke-static {p0, v0}, Lcom/redbox/android/utils/RBLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 316
    invoke-static {}, Lcom/redbox/android/adapter/FavKioskDBAdapter;->getInstance()Lcom/redbox/android/adapter/FavKioskDBAdapter;

    move-result-object v0

    .line 317
    iget-object v1, p0, Lcom/redbox/android/adapter/KioskListAdapter$RemFavClickListener;->this$0:Lcom/redbox/android/adapter/KioskListAdapter;

    iget-object v1, v1, Lcom/redbox/android/adapter/KioskListAdapter;->k:Ljava/util/List;

    iget v2, p0, Lcom/redbox/android/adapter/KioskListAdapter$RemFavClickListener;->id:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/redbox/android/adapter/KioskListAdapter$RemFavClickListener;
    check-cast p0, Lcom/redbox/android/model/Kiosk;

    invoke-virtual {p0}, Lcom/redbox/android/model/Kiosk;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 316
    invoke-virtual {v0, v1}, Lcom/redbox/android/adapter/FavKioskDBAdapter;->deleteKiosk(I)Z

    .line 319
    return-void
.end method
