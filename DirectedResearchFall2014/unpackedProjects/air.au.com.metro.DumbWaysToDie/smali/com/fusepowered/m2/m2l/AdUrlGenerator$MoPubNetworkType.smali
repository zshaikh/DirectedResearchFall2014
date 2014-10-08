.class public final enum Lcom/fusepowered/m2/m2l/AdUrlGenerator$MoPubNetworkType;
.super Ljava/lang/Enum;
.source "AdUrlGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/m2/m2l/AdUrlGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MoPubNetworkType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fusepowered/m2/m2l/AdUrlGenerator$MoPubNetworkType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/fusepowered/m2/m2l/AdUrlGenerator$MoPubNetworkType;

.field public static final enum ETHERNET:Lcom/fusepowered/m2/m2l/AdUrlGenerator$MoPubNetworkType;

.field public static final enum MOBILE:Lcom/fusepowered/m2/m2l/AdUrlGenerator$MoPubNetworkType;

.field public static final enum UNKNOWN:Lcom/fusepowered/m2/m2l/AdUrlGenerator$MoPubNetworkType;

.field public static final enum WIFI:Lcom/fusepowered/m2/m2l/AdUrlGenerator$MoPubNetworkType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 77
    new-instance v0, Lcom/fusepowered/m2/m2l/AdUrlGenerator$MoPubNetworkType;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v2}, Lcom/fusepowered/m2/m2l/AdUrlGenerator$MoPubNetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fusepowered/m2/m2l/AdUrlGenerator$MoPubNetworkType;->UNKNOWN:Lcom/fusepowered/m2/m2l/AdUrlGenerator$MoPubNetworkType;

    .line 78
    new-instance v0, Lcom/fusepowered/m2/m2l/AdUrlGenerator$MoPubNetworkType;

    const-string v1, "ETHERNET"

    invoke-direct {v0, v1, v3}, Lcom/fusepowered/m2/m2l/AdUrlGenerator$MoPubNetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fusepowered/m2/m2l/AdUrlGenerator$MoPubNetworkType;->ETHERNET:Lcom/fusepowered/m2/m2l/AdUrlGenerator$MoPubNetworkType;

    .line 79
    new-instance v0, Lcom/fusepowered/m2/m2l/AdUrlGenerator$MoPubNetworkType;

    const-string v1, "WIFI"

    invoke-direct {v0, v1, v4}, Lcom/fusepowered/m2/m2l/AdUrlGenerator$MoPubNetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fusepowered/m2/m2l/AdUrlGenerator$MoPubNetworkType;->WIFI:Lcom/fusepowered/m2/m2l/AdUrlGenerator$MoPubNetworkType;

    .line 80
    new-instance v0, Lcom/fusepowered/m2/m2l/AdUrlGenerator$MoPubNetworkType;

    const-string v1, "MOBILE"

    invoke-direct {v0, v1, v5}, Lcom/fusepowered/m2/m2l/AdUrlGenerator$MoPubNetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fusepowered/m2/m2l/AdUrlGenerator$MoPubNetworkType;->MOBILE:Lcom/fusepowered/m2/m2l/AdUrlGenerator$MoPubNetworkType;

    .line 76
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/fusepowered/m2/m2l/AdUrlGenerator$MoPubNetworkType;

    sget-object v1, Lcom/fusepowered/m2/m2l/AdUrlGenerator$MoPubNetworkType;->UNKNOWN:Lcom/fusepowered/m2/m2l/AdUrlGenerator$MoPubNetworkType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/fusepowered/m2/m2l/AdUrlGenerator$MoPubNetworkType;->ETHERNET:Lcom/fusepowered/m2/m2l/AdUrlGenerator$MoPubNetworkType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fusepowered/m2/m2l/AdUrlGenerator$MoPubNetworkType;->WIFI:Lcom/fusepowered/m2/m2l/AdUrlGenerator$MoPubNetworkType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/fusepowered/m2/m2l/AdUrlGenerator$MoPubNetworkType;->MOBILE:Lcom/fusepowered/m2/m2l/AdUrlGenerator$MoPubNetworkType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/fusepowered/m2/m2l/AdUrlGenerator$MoPubNetworkType;->ENUM$VALUES:[Lcom/fusepowered/m2/m2l/AdUrlGenerator$MoPubNetworkType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fusepowered/m2/m2l/AdUrlGenerator$MoPubNetworkType;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/fusepowered/m2/m2l/AdUrlGenerator$MoPubNetworkType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/fusepowered/m2/m2l/AdUrlGenerator$MoPubNetworkType;

    return-object p0
.end method

.method public static values()[Lcom/fusepowered/m2/m2l/AdUrlGenerator$MoPubNetworkType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/fusepowered/m2/m2l/AdUrlGenerator$MoPubNetworkType;->ENUM$VALUES:[Lcom/fusepowered/m2/m2l/AdUrlGenerator$MoPubNetworkType;

    array-length v1, v0

    new-array v2, v1, [Lcom/fusepowered/m2/m2l/AdUrlGenerator$MoPubNetworkType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/fusepowered/m2/m2l/AdUrlGenerator$MoPubNetworkType;->ordinal()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
