.class final enum Lcom/fusepowered/m2/m2l/MoPubInterstitial$InterstitialState;
.super Ljava/lang/Enum;
.source "MoPubInterstitial.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/m2/m2l/MoPubInterstitial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "InterstitialState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fusepowered/m2/m2l/MoPubInterstitial$InterstitialState;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CUSTOM_EVENT_AD_READY:Lcom/fusepowered/m2/m2l/MoPubInterstitial$InterstitialState;

.field private static final synthetic ENUM$VALUES:[Lcom/fusepowered/m2/m2l/MoPubInterstitial$InterstitialState;

.field public static final enum NOT_READY:Lcom/fusepowered/m2/m2l/MoPubInterstitial$InterstitialState;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 51
    new-instance v0, Lcom/fusepowered/m2/m2l/MoPubInterstitial$InterstitialState;

    const-string v1, "CUSTOM_EVENT_AD_READY"

    invoke-direct {v0, v1, v2}, Lcom/fusepowered/m2/m2l/MoPubInterstitial$InterstitialState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fusepowered/m2/m2l/MoPubInterstitial$InterstitialState;->CUSTOM_EVENT_AD_READY:Lcom/fusepowered/m2/m2l/MoPubInterstitial$InterstitialState;

    .line 52
    new-instance v0, Lcom/fusepowered/m2/m2l/MoPubInterstitial$InterstitialState;

    const-string v1, "NOT_READY"

    invoke-direct {v0, v1, v3}, Lcom/fusepowered/m2/m2l/MoPubInterstitial$InterstitialState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fusepowered/m2/m2l/MoPubInterstitial$InterstitialState;->NOT_READY:Lcom/fusepowered/m2/m2l/MoPubInterstitial$InterstitialState;

    .line 50
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/fusepowered/m2/m2l/MoPubInterstitial$InterstitialState;

    sget-object v1, Lcom/fusepowered/m2/m2l/MoPubInterstitial$InterstitialState;->CUSTOM_EVENT_AD_READY:Lcom/fusepowered/m2/m2l/MoPubInterstitial$InterstitialState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/fusepowered/m2/m2l/MoPubInterstitial$InterstitialState;->NOT_READY:Lcom/fusepowered/m2/m2l/MoPubInterstitial$InterstitialState;

    aput-object v1, v0, v3

    sput-object v0, Lcom/fusepowered/m2/m2l/MoPubInterstitial$InterstitialState;->ENUM$VALUES:[Lcom/fusepowered/m2/m2l/MoPubInterstitial$InterstitialState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fusepowered/m2/m2l/MoPubInterstitial$InterstitialState;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/fusepowered/m2/m2l/MoPubInterstitial$InterstitialState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/fusepowered/m2/m2l/MoPubInterstitial$InterstitialState;

    return-object p0
.end method

.method public static values()[Lcom/fusepowered/m2/m2l/MoPubInterstitial$InterstitialState;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/fusepowered/m2/m2l/MoPubInterstitial$InterstitialState;->ENUM$VALUES:[Lcom/fusepowered/m2/m2l/MoPubInterstitial$InterstitialState;

    array-length v1, v0

    new-array v2, v1, [Lcom/fusepowered/m2/m2l/MoPubInterstitial$InterstitialState;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method isReady()Z
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/fusepowered/m2/m2l/MoPubInterstitial$InterstitialState;->NOT_READY:Lcom/fusepowered/m2/m2l/MoPubInterstitial$InterstitialState;

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
