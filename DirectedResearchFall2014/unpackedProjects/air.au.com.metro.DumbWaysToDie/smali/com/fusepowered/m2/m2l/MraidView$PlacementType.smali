.class public final enum Lcom/fusepowered/m2/m2l/MraidView$PlacementType;
.super Ljava/lang/Enum;
.source "MraidView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/m2/m2l/MraidView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PlacementType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fusepowered/m2/m2l/MraidView$PlacementType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/fusepowered/m2/m2l/MraidView$PlacementType;

.field public static final enum INLINE:Lcom/fusepowered/m2/m2l/MraidView$PlacementType;

.field public static final enum INTERSTITIAL:Lcom/fusepowered/m2/m2l/MraidView$PlacementType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 103
    new-instance v0, Lcom/fusepowered/m2/m2l/MraidView$PlacementType;

    const-string v1, "INLINE"

    invoke-direct {v0, v1, v2}, Lcom/fusepowered/m2/m2l/MraidView$PlacementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fusepowered/m2/m2l/MraidView$PlacementType;->INLINE:Lcom/fusepowered/m2/m2l/MraidView$PlacementType;

    .line 104
    new-instance v0, Lcom/fusepowered/m2/m2l/MraidView$PlacementType;

    const-string v1, "INTERSTITIAL"

    invoke-direct {v0, v1, v3}, Lcom/fusepowered/m2/m2l/MraidView$PlacementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fusepowered/m2/m2l/MraidView$PlacementType;->INTERSTITIAL:Lcom/fusepowered/m2/m2l/MraidView$PlacementType;

    .line 102
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/fusepowered/m2/m2l/MraidView$PlacementType;

    sget-object v1, Lcom/fusepowered/m2/m2l/MraidView$PlacementType;->INLINE:Lcom/fusepowered/m2/m2l/MraidView$PlacementType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/fusepowered/m2/m2l/MraidView$PlacementType;->INTERSTITIAL:Lcom/fusepowered/m2/m2l/MraidView$PlacementType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/fusepowered/m2/m2l/MraidView$PlacementType;->ENUM$VALUES:[Lcom/fusepowered/m2/m2l/MraidView$PlacementType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 102
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fusepowered/m2/m2l/MraidView$PlacementType;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/fusepowered/m2/m2l/MraidView$PlacementType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/fusepowered/m2/m2l/MraidView$PlacementType;

    return-object p0
.end method

.method public static values()[Lcom/fusepowered/m2/m2l/MraidView$PlacementType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/fusepowered/m2/m2l/MraidView$PlacementType;->ENUM$VALUES:[Lcom/fusepowered/m2/m2l/MraidView$PlacementType;

    array-length v1, v0

    new-array v2, v1, [Lcom/fusepowered/m2/m2l/MraidView$PlacementType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
