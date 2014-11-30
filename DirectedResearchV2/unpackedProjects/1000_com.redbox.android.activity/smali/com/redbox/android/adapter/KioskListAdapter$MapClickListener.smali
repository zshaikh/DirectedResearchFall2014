.class Lcom/redbox/android/adapter/KioskListAdapter$MapClickListener;
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
    name = "MapClickListener"
.end annotation


# instance fields
.field private id:I

.field final synthetic this$0:Lcom/redbox/android/adapter/KioskListAdapter;


# direct methods
.method public constructor <init>(Lcom/redbox/android/adapter/KioskListAdapter;I)V
    .locals 0
    .param p2, "id"    # I

    .prologue
    .line 265
    iput-object p1, p0, Lcom/redbox/android/adapter/KioskListAdapter$MapClickListener;->this$0:Lcom/redbox/android/adapter/KioskListAdapter;

    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 264
    iput p2, p0, Lcom/redbox/android/adapter/KioskListAdapter$MapClickListener;->id:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 269
    iget-object v2, p0, Lcom/redbox/android/adapter/KioskListAdapter$MapClickListener;->this$0:Lcom/redbox/android/adapter/KioskListAdapter;

    iget-object v2, v2, Lcom/redbox/android/adapter/KioskListAdapter;->k:Ljava/util/List;

    iget v3, p0, Lcom/redbox/android/adapter/KioskListAdapter$MapClickListener;->id:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/redbox/android/model/Kiosk;

    .line 270
    .local v0, "current":Lcom/redbox/android/model/Kiosk;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " Id of view = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/redbox/android/adapter/KioskListAdapter$MapClickListener;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Name : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 271
    invoke-virtual {v0}, Lcom/redbox/android/model/Kiosk;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 270
    invoke-static {p0, v2}, Lcom/redbox/android/utils/RBLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 272
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " Current List "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/redbox/android/adapter/KioskListAdapter$MapClickListener;->this$0:Lcom/redbox/android/adapter/KioskListAdapter;

    iget-object v3, v3, Lcom/redbox/android/adapter/KioskListAdapter;->k:Ljava/util/List;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/redbox/android/utils/RBLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 273
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/redbox/android/adapter/KioskListAdapter$MapClickListener;->this$0:Lcom/redbox/android/adapter/KioskListAdapter;

    # getter for: Lcom/redbox/android/adapter/KioskListAdapter;->context:Landroid/content/Context;
    invoke-static {v2}, Lcom/redbox/android/adapter/KioskListAdapter;->access$0(Lcom/redbox/android/adapter/KioskListAdapter;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/redbox/android/activity/MapViewActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 274
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "NAME"

    invoke-virtual {v0}, Lcom/redbox/android/model/Kiosk;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 275
    const-string v2, "ADDRESS"

    invoke-virtual {v0}, Lcom/redbox/android/model/Kiosk;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 276
    const-string v2, "LATITUDE"

    invoke-virtual {v0}, Lcom/redbox/android/model/Kiosk;->getLat()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 277
    const-string v2, "LONGITUDE"

    invoke-virtual {v0}, Lcom/redbox/android/model/Kiosk;->getLon()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 278
    iget-object v2, p0, Lcom/redbox/android/adapter/KioskListAdapter$MapClickListener;->this$0:Lcom/redbox/android/adapter/KioskListAdapter;

    # getter for: Lcom/redbox/android/adapter/KioskListAdapter;->context:Landroid/content/Context;
    invoke-static {v2}, Lcom/redbox/android/adapter/KioskListAdapter;->access$0(Lcom/redbox/android/adapter/KioskListAdapter;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 279
    return-void
.end method
