.class Lcom/redbox/android/model/SelectedKioskManager$Inventory;
.super Ljava/lang/Object;
.source "SelectedKioskManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/redbox/android/model/SelectedKioskManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Inventory"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/redbox/android/model/SelectedKioskManager$Inventory$InvObject;
    }
.end annotation


# instance fields
.field inventory:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/redbox/android/model/SelectedKioskManager$Inventory$InvObject;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/redbox/android/model/SelectedKioskManager;


# direct methods
.method public constructor <init>(Lcom/redbox/android/model/SelectedKioskManager;)V
    .locals 1

    .prologue
    .line 257
    iput-object p1, p0, Lcom/redbox/android/model/SelectedKioskManager$Inventory;->this$0:Lcom/redbox/android/model/SelectedKioskManager;

    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 223
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/redbox/android/model/SelectedKioskManager$Inventory;->inventory:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getSelectedInvMovieIDs()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 231
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 232
    .local v0, "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/redbox/android/model/SelectedKioskManager$Inventory;->this$0:Lcom/redbox/android/model/SelectedKioskManager;

    # getter for: Lcom/redbox/android/model/SelectedKioskManager;->selectedInv:Lcom/redbox/android/model/SelectedKioskManager$Inventory;
    invoke-static {v2}, Lcom/redbox/android/model/SelectedKioskManager;->access$0(Lcom/redbox/android/model/SelectedKioskManager;)Lcom/redbox/android/model/SelectedKioskManager$Inventory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/redbox/android/model/SelectedKioskManager$Inventory;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 238
    return-object v0

    .line 233
    :cond_0
    iget-object v2, p0, Lcom/redbox/android/model/SelectedKioskManager$Inventory;->inventory:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/redbox/android/model/SelectedKioskManager$Inventory$InvObject;

    invoke-virtual {v2}, Lcom/redbox/android/model/SelectedKioskManager$Inventory$InvObject;->getQuantity()I

    move-result v2

    if-lez v2, :cond_1

    .line 234
    iget-object v2, p0, Lcom/redbox/android/model/SelectedKioskManager$Inventory;->inventory:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/redbox/android/model/SelectedKioskManager$Inventory$InvObject;

    invoke-virtual {v2}, Lcom/redbox/android/model/SelectedKioskManager$Inventory$InvObject;->getMovieID()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public movieExists(I)Z
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 242
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 243
    .local v0, "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/redbox/android/model/SelectedKioskManager$Inventory;->this$0:Lcom/redbox/android/model/SelectedKioskManager;

    # getter for: Lcom/redbox/android/model/SelectedKioskManager;->selectedInv:Lcom/redbox/android/model/SelectedKioskManager$Inventory;
    invoke-static {v2}, Lcom/redbox/android/model/SelectedKioskManager;->access$0(Lcom/redbox/android/model/SelectedKioskManager;)Lcom/redbox/android/model/SelectedKioskManager$Inventory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/redbox/android/model/SelectedKioskManager$Inventory;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 249
    const/4 v2, 0x0

    :goto_1
    return v2

    .line 244
    :cond_0
    iget-object v2, p0, Lcom/redbox/android/model/SelectedKioskManager$Inventory;->inventory:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/redbox/android/model/SelectedKioskManager$Inventory$InvObject;

    invoke-virtual {v2}, Lcom/redbox/android/model/SelectedKioskManager$Inventory$InvObject;->getMovieID()I

    move-result v2

    if-ne v2, p1, :cond_1

    iget-object v2, p0, Lcom/redbox/android/model/SelectedKioskManager$Inventory;->inventory:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/redbox/android/model/SelectedKioskManager$Inventory$InvObject;

    invoke-virtual {v2}, Lcom/redbox/android/model/SelectedKioskManager$Inventory$InvObject;->getQuantity()I

    move-result v2

    if-lez v2, :cond_1

    .line 245
    const/4 v2, 0x1

    goto :goto_1

    .line 243
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/redbox/android/model/SelectedKioskManager$Inventory;->inventory:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public update(Lorg/json/JSONArray;)V
    .locals 6
    .param p1, "inv"    # Lorg/json/JSONArray;

    .prologue
    .line 264
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lt v2, v4, :cond_0

    .line 282
    return-void

    .line 266
    :cond_0
    :try_start_0
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 267
    .local v0, "disk":Lorg/json/JSONObject;
    new-instance v3, Lcom/redbox/android/model/SelectedKioskManager$Inventory$InvObject;

    const-string v4, "ID"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 268
    const-string v5, "Qty"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 267
    invoke-direct {v3, p0, v4, v5}, Lcom/redbox/android/model/SelectedKioskManager$Inventory$InvObject;-><init>(Lcom/redbox/android/model/SelectedKioskManager$Inventory;Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    .local v3, "invDisk":Lcom/redbox/android/model/SelectedKioskManager$Inventory$InvObject;
    iget-object v4, p0, Lcom/redbox/android/model/SelectedKioskManager$Inventory;->inventory:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 270
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Added to inventory : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 271
    const-string v5, "ID"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 272
    const-string v5, "Qty"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 270
    invoke-static {p0, v4}, Lcom/redbox/android/utils/RBLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    .end local v0    # "disk":Lorg/json/JSONObject;
    .end local v3    # "invDisk":Lcom/redbox/android/model/SelectedKioskManager$Inventory$InvObject;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 274
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 276
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 277
    const-string v4, "Error Parsing Kiosk Inventory disk"

    invoke-static {p0, v4}, Lcom/redbox/android/utils/RBLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1
.end method
