.class Lcom/redbox/android/model/SelectedKioskManager$Inventory$InvObject;
.super Ljava/lang/Object;
.source "SelectedKioskManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/redbox/android/model/SelectedKioskManager$Inventory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InvObject"
.end annotation


# instance fields
.field movieID:I

.field quantity:I

.field final synthetic this$1:Lcom/redbox/android/model/SelectedKioskManager$Inventory;


# direct methods
.method public constructor <init>(Lcom/redbox/android/model/SelectedKioskManager$Inventory;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p2, "movieID"    # Ljava/lang/String;
    .param p3, "quantity"    # Ljava/lang/String;

    .prologue
    .line 291
    iput-object p1, p0, Lcom/redbox/android/model/SelectedKioskManager$Inventory$InvObject;->this$1:Lcom/redbox/android/model/SelectedKioskManager$Inventory;

    .line 288
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 289
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/redbox/android/model/SelectedKioskManager$Inventory$InvObject;->movieID:I

    .line 290
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/redbox/android/model/SelectedKioskManager$Inventory$InvObject;->quantity:I

    return-void
.end method


# virtual methods
.method public getMovieID()I
    .locals 1

    .prologue
    .line 294
    iget v0, p0, Lcom/redbox/android/model/SelectedKioskManager$Inventory$InvObject;->movieID:I

    return v0
.end method

.method public getQuantity()I
    .locals 1

    .prologue
    .line 298
    iget v0, p0, Lcom/redbox/android/model/SelectedKioskManager$Inventory$InvObject;->quantity:I

    return v0
.end method
