.class public final enum Lcom/inmobi/androidsdk/IMAdInterstitial$State;
.super Ljava/lang/Enum;
.source "IMAdInterstitial.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/androidsdk/IMAdInterstitial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/inmobi/androidsdk/IMAdInterstitial$State;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ACTIVE:Lcom/inmobi/androidsdk/IMAdInterstitial$State;

.field public static final enum INIT:Lcom/inmobi/androidsdk/IMAdInterstitial$State;

.field public static final enum LOADING:Lcom/inmobi/androidsdk/IMAdInterstitial$State;

.field public static final enum READY:Lcom/inmobi/androidsdk/IMAdInterstitial$State;

.field private static final synthetic a:[Lcom/inmobi/androidsdk/IMAdInterstitial$State;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 45
    new-instance v0, Lcom/inmobi/androidsdk/IMAdInterstitial$State;

    const-string v1, "INIT"

    invoke-direct {v0, v1, v2}, Lcom/inmobi/androidsdk/IMAdInterstitial$State;-><init>(Ljava/lang/String;I)V

    .line 50
    sput-object v0, Lcom/inmobi/androidsdk/IMAdInterstitial$State;->INIT:Lcom/inmobi/androidsdk/IMAdInterstitial$State;

    .line 51
    new-instance v0, Lcom/inmobi/androidsdk/IMAdInterstitial$State;

    const-string v1, "READY"

    invoke-direct {v0, v1, v3}, Lcom/inmobi/androidsdk/IMAdInterstitial$State;-><init>(Ljava/lang/String;I)V

    .line 56
    sput-object v0, Lcom/inmobi/androidsdk/IMAdInterstitial$State;->READY:Lcom/inmobi/androidsdk/IMAdInterstitial$State;

    .line 57
    new-instance v0, Lcom/inmobi/androidsdk/IMAdInterstitial$State;

    const-string v1, "LOADING"

    invoke-direct {v0, v1, v4}, Lcom/inmobi/androidsdk/IMAdInterstitial$State;-><init>(Ljava/lang/String;I)V

    .line 61
    sput-object v0, Lcom/inmobi/androidsdk/IMAdInterstitial$State;->LOADING:Lcom/inmobi/androidsdk/IMAdInterstitial$State;

    .line 62
    new-instance v0, Lcom/inmobi/androidsdk/IMAdInterstitial$State;

    const-string v1, "ACTIVE"

    invoke-direct {v0, v1, v5}, Lcom/inmobi/androidsdk/IMAdInterstitial$State;-><init>(Ljava/lang/String;I)V

    .line 66
    sput-object v0, Lcom/inmobi/androidsdk/IMAdInterstitial$State;->ACTIVE:Lcom/inmobi/androidsdk/IMAdInterstitial$State;

    .line 44
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/inmobi/androidsdk/IMAdInterstitial$State;

    sget-object v1, Lcom/inmobi/androidsdk/IMAdInterstitial$State;->INIT:Lcom/inmobi/androidsdk/IMAdInterstitial$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/inmobi/androidsdk/IMAdInterstitial$State;->READY:Lcom/inmobi/androidsdk/IMAdInterstitial$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/inmobi/androidsdk/IMAdInterstitial$State;->LOADING:Lcom/inmobi/androidsdk/IMAdInterstitial$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/inmobi/androidsdk/IMAdInterstitial$State;->ACTIVE:Lcom/inmobi/androidsdk/IMAdInterstitial$State;

    aput-object v1, v0, v5

    sput-object v0, Lcom/inmobi/androidsdk/IMAdInterstitial$State;->a:[Lcom/inmobi/androidsdk/IMAdInterstitial$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/inmobi/androidsdk/IMAdInterstitial$State;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/inmobi/androidsdk/IMAdInterstitial$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/inmobi/androidsdk/IMAdInterstitial$State;

    return-object p0
.end method

.method public static values()[Lcom/inmobi/androidsdk/IMAdInterstitial$State;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/inmobi/androidsdk/IMAdInterstitial$State;->a:[Lcom/inmobi/androidsdk/IMAdInterstitial$State;

    array-length v1, v0

    new-array v2, v1, [Lcom/inmobi/androidsdk/IMAdInterstitial$State;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
