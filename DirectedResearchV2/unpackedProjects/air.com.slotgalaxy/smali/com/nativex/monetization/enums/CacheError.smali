.class public final enum Lcom/nativex/monetization/enums/CacheError;
.super Ljava/lang/Enum;
.source "CacheError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nativex/monetization/enums/CacheError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nativex/monetization/enums/CacheError;

.field public static final enum CHECKSUM_FAILED:Lcom/nativex/monetization/enums/CacheError;

.field public static final enum DOWNLOAD_FAILED:Lcom/nativex/monetization/enums/CacheError;


# instance fields
.field private code:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 11
    new-instance v0, Lcom/nativex/monetization/enums/CacheError;

    const-string v1, "DOWNLOAD_FAILED"

    const/16 v2, 0x3e9

    invoke-direct {v0, v1, v3, v2}, Lcom/nativex/monetization/enums/CacheError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nativex/monetization/enums/CacheError;->DOWNLOAD_FAILED:Lcom/nativex/monetization/enums/CacheError;

    .line 14
    new-instance v0, Lcom/nativex/monetization/enums/CacheError;

    const-string v1, "CHECKSUM_FAILED"

    const/16 v2, 0x3ea

    invoke-direct {v0, v1, v4, v2}, Lcom/nativex/monetization/enums/CacheError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nativex/monetization/enums/CacheError;->CHECKSUM_FAILED:Lcom/nativex/monetization/enums/CacheError;

    .line 8
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/nativex/monetization/enums/CacheError;

    sget-object v1, Lcom/nativex/monetization/enums/CacheError;->DOWNLOAD_FAILED:Lcom/nativex/monetization/enums/CacheError;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nativex/monetization/enums/CacheError;->CHECKSUM_FAILED:Lcom/nativex/monetization/enums/CacheError;

    aput-object v1, v0, v4

    sput-object v0, Lcom/nativex/monetization/enums/CacheError;->$VALUES:[Lcom/nativex/monetization/enums/CacheError;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "code"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 18
    iput p3, p0, Lcom/nativex/monetization/enums/CacheError;->code:I

    .line 19
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nativex/monetization/enums/CacheError;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 8
    const-class v0, Lcom/nativex/monetization/enums/CacheError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0    # "name":Ljava/lang/String;
    check-cast p0, Lcom/nativex/monetization/enums/CacheError;

    return-object p0
.end method

.method public static values()[Lcom/nativex/monetization/enums/CacheError;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/nativex/monetization/enums/CacheError;->$VALUES:[Lcom/nativex/monetization/enums/CacheError;

    invoke-virtual {v0}, [Lcom/nativex/monetization/enums/CacheError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nativex/monetization/enums/CacheError;

    return-object v0
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/nativex/monetization/enums/CacheError;->code:I

    return v0
.end method
