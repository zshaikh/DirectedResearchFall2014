.class public final enum Lcom/fusepowered/m2/m2l/MoPubErrorCode;
.super Ljava/lang/Enum;
.source "MoPubErrorCode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fusepowered/m2/m2l/MoPubErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ADAPTER_CONFIGURATION_ERROR:Lcom/fusepowered/m2/m2l/MoPubErrorCode;

.field public static final enum ADAPTER_NOT_FOUND:Lcom/fusepowered/m2/m2l/MoPubErrorCode;

.field public static final enum CANCELLED:Lcom/fusepowered/m2/m2l/MoPubErrorCode;

.field private static final synthetic ENUM$VALUES:[Lcom/fusepowered/m2/m2l/MoPubErrorCode;

.field public static final enum INTERNAL_ERROR:Lcom/fusepowered/m2/m2l/MoPubErrorCode;

.field public static final enum MRAID_LOAD_ERROR:Lcom/fusepowered/m2/m2l/MoPubErrorCode;

.field public static final enum NETWORK_INVALID_STATE:Lcom/fusepowered/m2/m2l/MoPubErrorCode;

.field public static final enum NETWORK_NO_FILL:Lcom/fusepowered/m2/m2l/MoPubErrorCode;

.field public static final enum NETWORK_TIMEOUT:Lcom/fusepowered/m2/m2l/MoPubErrorCode;

.field public static final enum NO_FILL:Lcom/fusepowered/m2/m2l/MoPubErrorCode;

.field public static final enum SERVER_ERROR:Lcom/fusepowered/m2/m2l/MoPubErrorCode;

.field public static final enum UNSPECIFIED:Lcom/fusepowered/m2/m2l/MoPubErrorCode;

.field public static final enum VIDEO_CACHE_ERROR:Lcom/fusepowered/m2/m2l/MoPubErrorCode;

.field public static final enum VIDEO_DOWNLOAD_ERROR:Lcom/fusepowered/m2/m2l/MoPubErrorCode;


# instance fields
.field private final message:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 36
    new-instance v0, Lcom/fusepowered/m2/m2l/MoPubErrorCode;

    const-string v1, "NO_FILL"

    const-string v2, "No inventory."

    invoke-direct {v0, v1, v4, v2}, Lcom/fusepowered/m2/m2l/MoPubErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fusepowered/m2/m2l/MoPubErrorCode;->NO_FILL:Lcom/fusepowered/m2/m2l/MoPubErrorCode;

    .line 37
    new-instance v0, Lcom/fusepowered/m2/m2l/MoPubErrorCode;

    const-string v1, "SERVER_ERROR"

    const-string v2, "Unable to connect to MoPub adserver."

    invoke-direct {v0, v1, v5, v2}, Lcom/fusepowered/m2/m2l/MoPubErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fusepowered/m2/m2l/MoPubErrorCode;->SERVER_ERROR:Lcom/fusepowered/m2/m2l/MoPubErrorCode;

    .line 38
    new-instance v0, Lcom/fusepowered/m2/m2l/MoPubErrorCode;

    const-string v1, "INTERNAL_ERROR"

    const-string v2, "Unable to serve ad due to invalid internal state."

    invoke-direct {v0, v1, v6, v2}, Lcom/fusepowered/m2/m2l/MoPubErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fusepowered/m2/m2l/MoPubErrorCode;->INTERNAL_ERROR:Lcom/fusepowered/m2/m2l/MoPubErrorCode;

    .line 39
    new-instance v0, Lcom/fusepowered/m2/m2l/MoPubErrorCode;

    const-string v1, "CANCELLED"

    const-string v2, "Ad request was cancelled."

    invoke-direct {v0, v1, v7, v2}, Lcom/fusepowered/m2/m2l/MoPubErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fusepowered/m2/m2l/MoPubErrorCode;->CANCELLED:Lcom/fusepowered/m2/m2l/MoPubErrorCode;

    .line 41
    new-instance v0, Lcom/fusepowered/m2/m2l/MoPubErrorCode;

    const-string v1, "ADAPTER_NOT_FOUND"

    const-string v2, "Unable to find Native Network or Custom Event adapter."

    invoke-direct {v0, v1, v8, v2}, Lcom/fusepowered/m2/m2l/MoPubErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fusepowered/m2/m2l/MoPubErrorCode;->ADAPTER_NOT_FOUND:Lcom/fusepowered/m2/m2l/MoPubErrorCode;

    .line 42
    new-instance v0, Lcom/fusepowered/m2/m2l/MoPubErrorCode;

    const-string v1, "ADAPTER_CONFIGURATION_ERROR"

    const/4 v2, 0x5

    const-string v3, "Native Network or Custom Event adapter was configured incorrectly."

    invoke-direct {v0, v1, v2, v3}, Lcom/fusepowered/m2/m2l/MoPubErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fusepowered/m2/m2l/MoPubErrorCode;->ADAPTER_CONFIGURATION_ERROR:Lcom/fusepowered/m2/m2l/MoPubErrorCode;

    .line 43
    new-instance v0, Lcom/fusepowered/m2/m2l/MoPubErrorCode;

    const-string v1, "NETWORK_TIMEOUT"

    const/4 v2, 0x6

    const-string v3, "Third-party network failed to respond in a timely manner."

    invoke-direct {v0, v1, v2, v3}, Lcom/fusepowered/m2/m2l/MoPubErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fusepowered/m2/m2l/MoPubErrorCode;->NETWORK_TIMEOUT:Lcom/fusepowered/m2/m2l/MoPubErrorCode;

    .line 44
    new-instance v0, Lcom/fusepowered/m2/m2l/MoPubErrorCode;

    const-string v1, "NETWORK_NO_FILL"

    const/4 v2, 0x7

    const-string v3, "Third-party network failed to provide inventory."

    invoke-direct {v0, v1, v2, v3}, Lcom/fusepowered/m2/m2l/MoPubErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fusepowered/m2/m2l/MoPubErrorCode;->NETWORK_NO_FILL:Lcom/fusepowered/m2/m2l/MoPubErrorCode;

    .line 45
    new-instance v0, Lcom/fusepowered/m2/m2l/MoPubErrorCode;

    const-string v1, "NETWORK_INVALID_STATE"

    const/16 v2, 0x8

    const-string v3, "Third-party network failed due to invalid internal state."

    invoke-direct {v0, v1, v2, v3}, Lcom/fusepowered/m2/m2l/MoPubErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fusepowered/m2/m2l/MoPubErrorCode;->NETWORK_INVALID_STATE:Lcom/fusepowered/m2/m2l/MoPubErrorCode;

    .line 46
    new-instance v0, Lcom/fusepowered/m2/m2l/MoPubErrorCode;

    const-string v1, "MRAID_LOAD_ERROR"

    const/16 v2, 0x9

    const-string v3, "Error loading MRAID ad."

    invoke-direct {v0, v1, v2, v3}, Lcom/fusepowered/m2/m2l/MoPubErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fusepowered/m2/m2l/MoPubErrorCode;->MRAID_LOAD_ERROR:Lcom/fusepowered/m2/m2l/MoPubErrorCode;

    .line 47
    new-instance v0, Lcom/fusepowered/m2/m2l/MoPubErrorCode;

    const-string v1, "VIDEO_CACHE_ERROR"

    const/16 v2, 0xa

    const-string v3, "Error creating a cache to store downloaded videos."

    invoke-direct {v0, v1, v2, v3}, Lcom/fusepowered/m2/m2l/MoPubErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fusepowered/m2/m2l/MoPubErrorCode;->VIDEO_CACHE_ERROR:Lcom/fusepowered/m2/m2l/MoPubErrorCode;

    .line 48
    new-instance v0, Lcom/fusepowered/m2/m2l/MoPubErrorCode;

    const-string v1, "VIDEO_DOWNLOAD_ERROR"

    const/16 v2, 0xb

    const-string v3, "Error downloading video."

    invoke-direct {v0, v1, v2, v3}, Lcom/fusepowered/m2/m2l/MoPubErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fusepowered/m2/m2l/MoPubErrorCode;->VIDEO_DOWNLOAD_ERROR:Lcom/fusepowered/m2/m2l/MoPubErrorCode;

    .line 50
    new-instance v0, Lcom/fusepowered/m2/m2l/MoPubErrorCode;

    const-string v1, "UNSPECIFIED"

    const/16 v2, 0xc

    const-string v3, "Unspecified error."

    invoke-direct {v0, v1, v2, v3}, Lcom/fusepowered/m2/m2l/MoPubErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fusepowered/m2/m2l/MoPubErrorCode;->UNSPECIFIED:Lcom/fusepowered/m2/m2l/MoPubErrorCode;

    .line 35
    const/16 v0, 0xd

    new-array v0, v0, [Lcom/fusepowered/m2/m2l/MoPubErrorCode;

    sget-object v1, Lcom/fusepowered/m2/m2l/MoPubErrorCode;->NO_FILL:Lcom/fusepowered/m2/m2l/MoPubErrorCode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/fusepowered/m2/m2l/MoPubErrorCode;->SERVER_ERROR:Lcom/fusepowered/m2/m2l/MoPubErrorCode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/fusepowered/m2/m2l/MoPubErrorCode;->INTERNAL_ERROR:Lcom/fusepowered/m2/m2l/MoPubErrorCode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/fusepowered/m2/m2l/MoPubErrorCode;->CANCELLED:Lcom/fusepowered/m2/m2l/MoPubErrorCode;

    aput-object v1, v0, v7

    sget-object v1, Lcom/fusepowered/m2/m2l/MoPubErrorCode;->ADAPTER_NOT_FOUND:Lcom/fusepowered/m2/m2l/MoPubErrorCode;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/fusepowered/m2/m2l/MoPubErrorCode;->ADAPTER_CONFIGURATION_ERROR:Lcom/fusepowered/m2/m2l/MoPubErrorCode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/fusepowered/m2/m2l/MoPubErrorCode;->NETWORK_TIMEOUT:Lcom/fusepowered/m2/m2l/MoPubErrorCode;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/fusepowered/m2/m2l/MoPubErrorCode;->NETWORK_NO_FILL:Lcom/fusepowered/m2/m2l/MoPubErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/fusepowered/m2/m2l/MoPubErrorCode;->NETWORK_INVALID_STATE:Lcom/fusepowered/m2/m2l/MoPubErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/fusepowered/m2/m2l/MoPubErrorCode;->MRAID_LOAD_ERROR:Lcom/fusepowered/m2/m2l/MoPubErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/fusepowered/m2/m2l/MoPubErrorCode;->VIDEO_CACHE_ERROR:Lcom/fusepowered/m2/m2l/MoPubErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/fusepowered/m2/m2l/MoPubErrorCode;->VIDEO_DOWNLOAD_ERROR:Lcom/fusepowered/m2/m2l/MoPubErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/fusepowered/m2/m2l/MoPubErrorCode;->UNSPECIFIED:Lcom/fusepowered/m2/m2l/MoPubErrorCode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/fusepowered/m2/m2l/MoPubErrorCode;->ENUM$VALUES:[Lcom/fusepowered/m2/m2l/MoPubErrorCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter "message"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 55
    iput-object p3, p0, Lcom/fusepowered/m2/m2l/MoPubErrorCode;->message:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fusepowered/m2/m2l/MoPubErrorCode;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/fusepowered/m2/m2l/MoPubErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/fusepowered/m2/m2l/MoPubErrorCode;

    return-object p0
.end method

.method public static values()[Lcom/fusepowered/m2/m2l/MoPubErrorCode;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/fusepowered/m2/m2l/MoPubErrorCode;->ENUM$VALUES:[Lcom/fusepowered/m2/m2l/MoPubErrorCode;

    array-length v1, v0

    new-array v2, v1, [Lcom/fusepowered/m2/m2l/MoPubErrorCode;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubErrorCode;->message:Ljava/lang/String;

    return-object v0
.end method
