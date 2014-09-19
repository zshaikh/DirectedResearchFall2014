.class public final enum Lcom/fusepowered/m2/m2l/MoPubView$LocationAwareness;
.super Ljava/lang/Enum;
.source "MoPubView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/m2/m2l/MoPubView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LocationAwareness"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fusepowered/m2/m2l/MoPubView$LocationAwareness;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/fusepowered/m2/m2l/MoPubView$LocationAwareness;

.field public static final enum LOCATION_AWARENESS_DISABLED:Lcom/fusepowered/m2/m2l/MoPubView$LocationAwareness;

.field public static final enum LOCATION_AWARENESS_NORMAL:Lcom/fusepowered/m2/m2l/MoPubView$LocationAwareness;

.field public static final enum LOCATION_AWARENESS_TRUNCATED:Lcom/fusepowered/m2/m2l/MoPubView$LocationAwareness;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 66
    new-instance v0, Lcom/fusepowered/m2/m2l/MoPubView$LocationAwareness;

    const-string v1, "LOCATION_AWARENESS_NORMAL"

    invoke-direct {v0, v1, v2}, Lcom/fusepowered/m2/m2l/MoPubView$LocationAwareness;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fusepowered/m2/m2l/MoPubView$LocationAwareness;->LOCATION_AWARENESS_NORMAL:Lcom/fusepowered/m2/m2l/MoPubView$LocationAwareness;

    new-instance v0, Lcom/fusepowered/m2/m2l/MoPubView$LocationAwareness;

    const-string v1, "LOCATION_AWARENESS_TRUNCATED"

    invoke-direct {v0, v1, v3}, Lcom/fusepowered/m2/m2l/MoPubView$LocationAwareness;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fusepowered/m2/m2l/MoPubView$LocationAwareness;->LOCATION_AWARENESS_TRUNCATED:Lcom/fusepowered/m2/m2l/MoPubView$LocationAwareness;

    new-instance v0, Lcom/fusepowered/m2/m2l/MoPubView$LocationAwareness;

    const-string v1, "LOCATION_AWARENESS_DISABLED"

    invoke-direct {v0, v1, v4}, Lcom/fusepowered/m2/m2l/MoPubView$LocationAwareness;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fusepowered/m2/m2l/MoPubView$LocationAwareness;->LOCATION_AWARENESS_DISABLED:Lcom/fusepowered/m2/m2l/MoPubView$LocationAwareness;

    .line 65
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/fusepowered/m2/m2l/MoPubView$LocationAwareness;

    sget-object v1, Lcom/fusepowered/m2/m2l/MoPubView$LocationAwareness;->LOCATION_AWARENESS_NORMAL:Lcom/fusepowered/m2/m2l/MoPubView$LocationAwareness;

    aput-object v1, v0, v2

    sget-object v1, Lcom/fusepowered/m2/m2l/MoPubView$LocationAwareness;->LOCATION_AWARENESS_TRUNCATED:Lcom/fusepowered/m2/m2l/MoPubView$LocationAwareness;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fusepowered/m2/m2l/MoPubView$LocationAwareness;->LOCATION_AWARENESS_DISABLED:Lcom/fusepowered/m2/m2l/MoPubView$LocationAwareness;

    aput-object v1, v0, v4

    sput-object v0, Lcom/fusepowered/m2/m2l/MoPubView$LocationAwareness;->ENUM$VALUES:[Lcom/fusepowered/m2/m2l/MoPubView$LocationAwareness;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fusepowered/m2/m2l/MoPubView$LocationAwareness;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/fusepowered/m2/m2l/MoPubView$LocationAwareness;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/fusepowered/m2/m2l/MoPubView$LocationAwareness;

    return-object p0
.end method

.method public static values()[Lcom/fusepowered/m2/m2l/MoPubView$LocationAwareness;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/fusepowered/m2/m2l/MoPubView$LocationAwareness;->ENUM$VALUES:[Lcom/fusepowered/m2/m2l/MoPubView$LocationAwareness;

    array-length v1, v0

    new-array v2, v1, [Lcom/fusepowered/m2/m2l/MoPubView$LocationAwareness;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
