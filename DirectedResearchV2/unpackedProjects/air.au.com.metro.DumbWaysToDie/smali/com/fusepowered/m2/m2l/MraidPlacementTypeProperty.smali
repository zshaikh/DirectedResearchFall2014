.class Lcom/fusepowered/m2/m2l/MraidPlacementTypeProperty;
.super Lcom/fusepowered/m2/m2l/MraidProperty;
.source "MraidProperty.java"


# instance fields
.field private final mPlacementType:Lcom/fusepowered/m2/m2l/MraidView$PlacementType;


# direct methods
.method constructor <init>(Lcom/fusepowered/m2/m2l/MraidView$PlacementType;)V
    .locals 0
    .param p1, "placementType"    # Lcom/fusepowered/m2/m2l/MraidView$PlacementType;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/fusepowered/m2/m2l/MraidProperty;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/fusepowered/m2/m2l/MraidPlacementTypeProperty;->mPlacementType:Lcom/fusepowered/m2/m2l/MraidView$PlacementType;

    .line 56
    return-void
.end method

.method public static createWithType(Lcom/fusepowered/m2/m2l/MraidView$PlacementType;)Lcom/fusepowered/m2/m2l/MraidPlacementTypeProperty;
    .locals 1
    .param p0, "placementType"    # Lcom/fusepowered/m2/m2l/MraidView$PlacementType;

    .prologue
    .line 60
    new-instance v0, Lcom/fusepowered/m2/m2l/MraidPlacementTypeProperty;

    invoke-direct {v0, p0}, Lcom/fusepowered/m2/m2l/MraidPlacementTypeProperty;-><init>(Lcom/fusepowered/m2/m2l/MraidView$PlacementType;)V

    return-object v0
.end method


# virtual methods
.method public toJsonPair()Ljava/lang/String;
    .locals 2

    .prologue
    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "placementType: \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/fusepowered/m2/m2l/MraidPlacementTypeProperty;->mPlacementType:Lcom/fusepowered/m2/m2l/MraidView$PlacementType;

    invoke-virtual {v1}, Lcom/fusepowered/m2/m2l/MraidView$PlacementType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
