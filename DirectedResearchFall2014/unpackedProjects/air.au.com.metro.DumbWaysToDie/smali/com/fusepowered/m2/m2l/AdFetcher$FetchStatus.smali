.class final enum Lcom/fusepowered/m2/m2l/AdFetcher$FetchStatus;
.super Ljava/lang/Enum;
.source "AdFetcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/m2/m2l/AdFetcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "FetchStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fusepowered/m2/m2l/AdFetcher$FetchStatus;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AD_WARMING_UP:Lcom/fusepowered/m2/m2l/AdFetcher$FetchStatus;

.field public static final enum CLEAR_AD_TYPE:Lcom/fusepowered/m2/m2l/AdFetcher$FetchStatus;

.field private static final synthetic ENUM$VALUES:[Lcom/fusepowered/m2/m2l/AdFetcher$FetchStatus;

.field public static final enum FETCH_CANCELLED:Lcom/fusepowered/m2/m2l/AdFetcher$FetchStatus;

.field public static final enum INVALID_SERVER_RESPONSE_BACKOFF:Lcom/fusepowered/m2/m2l/AdFetcher$FetchStatus;

.field public static final enum INVALID_SERVER_RESPONSE_NOBACKOFF:Lcom/fusepowered/m2/m2l/AdFetcher$FetchStatus;

.field public static final enum NOT_SET:Lcom/fusepowered/m2/m2l/AdFetcher$FetchStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 62
    new-instance v0, Lcom/fusepowered/m2/m2l/AdFetcher$FetchStatus;

    const-string v1, "NOT_SET"

    invoke-direct {v0, v1, v3}, Lcom/fusepowered/m2/m2l/AdFetcher$FetchStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fusepowered/m2/m2l/AdFetcher$FetchStatus;->NOT_SET:Lcom/fusepowered/m2/m2l/AdFetcher$FetchStatus;

    .line 63
    new-instance v0, Lcom/fusepowered/m2/m2l/AdFetcher$FetchStatus;

    const-string v1, "FETCH_CANCELLED"

    invoke-direct {v0, v1, v4}, Lcom/fusepowered/m2/m2l/AdFetcher$FetchStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fusepowered/m2/m2l/AdFetcher$FetchStatus;->FETCH_CANCELLED:Lcom/fusepowered/m2/m2l/AdFetcher$FetchStatus;

    .line 64
    new-instance v0, Lcom/fusepowered/m2/m2l/AdFetcher$FetchStatus;

    const-string v1, "INVALID_SERVER_RESPONSE_BACKOFF"

    invoke-direct {v0, v1, v5}, Lcom/fusepowered/m2/m2l/AdFetcher$FetchStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fusepowered/m2/m2l/AdFetcher$FetchStatus;->INVALID_SERVER_RESPONSE_BACKOFF:Lcom/fusepowered/m2/m2l/AdFetcher$FetchStatus;

    .line 65
    new-instance v0, Lcom/fusepowered/m2/m2l/AdFetcher$FetchStatus;

    const-string v1, "INVALID_SERVER_RESPONSE_NOBACKOFF"

    invoke-direct {v0, v1, v6}, Lcom/fusepowered/m2/m2l/AdFetcher$FetchStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fusepowered/m2/m2l/AdFetcher$FetchStatus;->INVALID_SERVER_RESPONSE_NOBACKOFF:Lcom/fusepowered/m2/m2l/AdFetcher$FetchStatus;

    .line 66
    new-instance v0, Lcom/fusepowered/m2/m2l/AdFetcher$FetchStatus;

    const-string v1, "CLEAR_AD_TYPE"

    invoke-direct {v0, v1, v7}, Lcom/fusepowered/m2/m2l/AdFetcher$FetchStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fusepowered/m2/m2l/AdFetcher$FetchStatus;->CLEAR_AD_TYPE:Lcom/fusepowered/m2/m2l/AdFetcher$FetchStatus;

    .line 67
    new-instance v0, Lcom/fusepowered/m2/m2l/AdFetcher$FetchStatus;

    const-string v1, "AD_WARMING_UP"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/fusepowered/m2/m2l/AdFetcher$FetchStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fusepowered/m2/m2l/AdFetcher$FetchStatus;->AD_WARMING_UP:Lcom/fusepowered/m2/m2l/AdFetcher$FetchStatus;

    .line 61
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/fusepowered/m2/m2l/AdFetcher$FetchStatus;

    sget-object v1, Lcom/fusepowered/m2/m2l/AdFetcher$FetchStatus;->NOT_SET:Lcom/fusepowered/m2/m2l/AdFetcher$FetchStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fusepowered/m2/m2l/AdFetcher$FetchStatus;->FETCH_CANCELLED:Lcom/fusepowered/m2/m2l/AdFetcher$FetchStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/fusepowered/m2/m2l/AdFetcher$FetchStatus;->INVALID_SERVER_RESPONSE_BACKOFF:Lcom/fusepowered/m2/m2l/AdFetcher$FetchStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/fusepowered/m2/m2l/AdFetcher$FetchStatus;->INVALID_SERVER_RESPONSE_NOBACKOFF:Lcom/fusepowered/m2/m2l/AdFetcher$FetchStatus;

    aput-object v1, v0, v6

    sget-object v1, Lcom/fusepowered/m2/m2l/AdFetcher$FetchStatus;->CLEAR_AD_TYPE:Lcom/fusepowered/m2/m2l/AdFetcher$FetchStatus;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/fusepowered/m2/m2l/AdFetcher$FetchStatus;->AD_WARMING_UP:Lcom/fusepowered/m2/m2l/AdFetcher$FetchStatus;

    aput-object v2, v0, v1

    sput-object v0, Lcom/fusepowered/m2/m2l/AdFetcher$FetchStatus;->ENUM$VALUES:[Lcom/fusepowered/m2/m2l/AdFetcher$FetchStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fusepowered/m2/m2l/AdFetcher$FetchStatus;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/fusepowered/m2/m2l/AdFetcher$FetchStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/fusepowered/m2/m2l/AdFetcher$FetchStatus;

    return-object p0
.end method

.method public static values()[Lcom/fusepowered/m2/m2l/AdFetcher$FetchStatus;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/fusepowered/m2/m2l/AdFetcher$FetchStatus;->ENUM$VALUES:[Lcom/fusepowered/m2/m2l/AdFetcher$FetchStatus;

    array-length v1, v0

    new-array v2, v1, [Lcom/fusepowered/m2/m2l/AdFetcher$FetchStatus;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
