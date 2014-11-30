.class public final enum Lcom/nativex/monetization/enums/AdEvent;
.super Ljava/lang/Enum;
.source "AdEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nativex/monetization/enums/AdEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nativex/monetization/enums/AdEvent;

.field public static final enum ALREADY_FETCHED:Lcom/nativex/monetization/enums/AdEvent;

.field public static final enum ALREADY_SHOWN:Lcom/nativex/monetization/enums/AdEvent;

.field public static final enum COLLAPSED:Lcom/nativex/monetization/enums/AdEvent;

.field public static final enum DISMISSED:Lcom/nativex/monetization/enums/AdEvent;

.field public static final enum DISPLAYED:Lcom/nativex/monetization/enums/AdEvent;

.field public static final enum DOWNLOADING:Lcom/nativex/monetization/enums/AdEvent;

.field public static final enum ERROR:Lcom/nativex/monetization/enums/AdEvent;

.field public static final enum EXPANDED:Lcom/nativex/monetization/enums/AdEvent;

.field public static final enum EXPIRED:Lcom/nativex/monetization/enums/AdEvent;

.field public static final enum FETCHED:Lcom/nativex/monetization/enums/AdEvent;

.field public static final enum NO_AD:Lcom/nativex/monetization/enums/AdEvent;

.field public static final enum RESIZED:Lcom/nativex/monetization/enums/AdEvent;

.field public static final enum USER_NAVIGATES_OUT_OF_APP:Lcom/nativex/monetization/enums/AdEvent;

.field public static final enum USER_TOUCH:Lcom/nativex/monetization/enums/AdEvent;


# instance fields
.field private level:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/16 v5, 0x64

    const/16 v4, 0xa

    const/4 v3, -0x1

    .line 34
    new-instance v0, Lcom/nativex/monetization/enums/AdEvent;

    const-string v1, "ALREADY_FETCHED"

    invoke-direct {v0, v1, v6, v3}, Lcom/nativex/monetization/enums/AdEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nativex/monetization/enums/AdEvent;->ALREADY_FETCHED:Lcom/nativex/monetization/enums/AdEvent;

    .line 38
    new-instance v0, Lcom/nativex/monetization/enums/AdEvent;

    const-string v1, "DOWNLOADING"

    invoke-direct {v0, v1, v7, v3}, Lcom/nativex/monetization/enums/AdEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nativex/monetization/enums/AdEvent;->DOWNLOADING:Lcom/nativex/monetization/enums/AdEvent;

    .line 42
    new-instance v0, Lcom/nativex/monetization/enums/AdEvent;

    const-string v1, "ALREADY_SHOWN"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/nativex/monetization/enums/AdEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nativex/monetization/enums/AdEvent;->ALREADY_SHOWN:Lcom/nativex/monetization/enums/AdEvent;

    .line 46
    new-instance v0, Lcom/nativex/monetization/enums/AdEvent;

    const-string v1, "RESIZED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/nativex/monetization/enums/AdEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nativex/monetization/enums/AdEvent;->RESIZED:Lcom/nativex/monetization/enums/AdEvent;

    .line 50
    new-instance v0, Lcom/nativex/monetization/enums/AdEvent;

    const-string v1, "EXPANDED"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v3}, Lcom/nativex/monetization/enums/AdEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nativex/monetization/enums/AdEvent;->EXPANDED:Lcom/nativex/monetization/enums/AdEvent;

    .line 54
    new-instance v0, Lcom/nativex/monetization/enums/AdEvent;

    const-string v1, "COLLAPSED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/nativex/monetization/enums/AdEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nativex/monetization/enums/AdEvent;->COLLAPSED:Lcom/nativex/monetization/enums/AdEvent;

    .line 58
    new-instance v0, Lcom/nativex/monetization/enums/AdEvent;

    const-string v1, "USER_TOUCH"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/nativex/monetization/enums/AdEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nativex/monetization/enums/AdEvent;->USER_TOUCH:Lcom/nativex/monetization/enums/AdEvent;

    .line 62
    new-instance v0, Lcom/nativex/monetization/enums/AdEvent;

    const-string v1, "FETCHED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v4}, Lcom/nativex/monetization/enums/AdEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nativex/monetization/enums/AdEvent;->FETCHED:Lcom/nativex/monetization/enums/AdEvent;

    .line 66
    new-instance v0, Lcom/nativex/monetization/enums/AdEvent;

    const-string v1, "DISPLAYED"

    const/16 v2, 0x8

    const/16 v3, 0x14

    invoke-direct {v0, v1, v2, v3}, Lcom/nativex/monetization/enums/AdEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nativex/monetization/enums/AdEvent;->DISPLAYED:Lcom/nativex/monetization/enums/AdEvent;

    .line 70
    new-instance v0, Lcom/nativex/monetization/enums/AdEvent;

    const-string v1, "EXPIRED"

    const/16 v2, 0x9

    const/16 v3, 0x14

    invoke-direct {v0, v1, v2, v3}, Lcom/nativex/monetization/enums/AdEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nativex/monetization/enums/AdEvent;->EXPIRED:Lcom/nativex/monetization/enums/AdEvent;

    .line 74
    new-instance v0, Lcom/nativex/monetization/enums/AdEvent;

    const-string v1, "USER_NAVIGATES_OUT_OF_APP"

    const/16 v2, 0x5a

    invoke-direct {v0, v1, v4, v2}, Lcom/nativex/monetization/enums/AdEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nativex/monetization/enums/AdEvent;->USER_NAVIGATES_OUT_OF_APP:Lcom/nativex/monetization/enums/AdEvent;

    .line 78
    new-instance v0, Lcom/nativex/monetization/enums/AdEvent;

    const-string v1, "DISMISSED"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2, v5}, Lcom/nativex/monetization/enums/AdEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nativex/monetization/enums/AdEvent;->DISMISSED:Lcom/nativex/monetization/enums/AdEvent;

    .line 82
    new-instance v0, Lcom/nativex/monetization/enums/AdEvent;

    const-string v1, "ERROR"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2, v5}, Lcom/nativex/monetization/enums/AdEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nativex/monetization/enums/AdEvent;->ERROR:Lcom/nativex/monetization/enums/AdEvent;

    .line 86
    new-instance v0, Lcom/nativex/monetization/enums/AdEvent;

    const-string v1, "NO_AD"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2, v5}, Lcom/nativex/monetization/enums/AdEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nativex/monetization/enums/AdEvent;->NO_AD:Lcom/nativex/monetization/enums/AdEvent;

    .line 29
    const/16 v0, 0xe

    new-array v0, v0, [Lcom/nativex/monetization/enums/AdEvent;

    sget-object v1, Lcom/nativex/monetization/enums/AdEvent;->ALREADY_FETCHED:Lcom/nativex/monetization/enums/AdEvent;

    aput-object v1, v0, v6

    sget-object v1, Lcom/nativex/monetization/enums/AdEvent;->DOWNLOADING:Lcom/nativex/monetization/enums/AdEvent;

    aput-object v1, v0, v7

    const/4 v1, 0x2

    sget-object v2, Lcom/nativex/monetization/enums/AdEvent;->ALREADY_SHOWN:Lcom/nativex/monetization/enums/AdEvent;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/nativex/monetization/enums/AdEvent;->RESIZED:Lcom/nativex/monetization/enums/AdEvent;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/nativex/monetization/enums/AdEvent;->EXPANDED:Lcom/nativex/monetization/enums/AdEvent;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/nativex/monetization/enums/AdEvent;->COLLAPSED:Lcom/nativex/monetization/enums/AdEvent;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/nativex/monetization/enums/AdEvent;->USER_TOUCH:Lcom/nativex/monetization/enums/AdEvent;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/nativex/monetization/enums/AdEvent;->FETCHED:Lcom/nativex/monetization/enums/AdEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/nativex/monetization/enums/AdEvent;->DISPLAYED:Lcom/nativex/monetization/enums/AdEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/nativex/monetization/enums/AdEvent;->EXPIRED:Lcom/nativex/monetization/enums/AdEvent;

    aput-object v2, v0, v1

    sget-object v1, Lcom/nativex/monetization/enums/AdEvent;->USER_NAVIGATES_OUT_OF_APP:Lcom/nativex/monetization/enums/AdEvent;

    aput-object v1, v0, v4

    const/16 v1, 0xb

    sget-object v2, Lcom/nativex/monetization/enums/AdEvent;->DISMISSED:Lcom/nativex/monetization/enums/AdEvent;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/nativex/monetization/enums/AdEvent;->ERROR:Lcom/nativex/monetization/enums/AdEvent;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/nativex/monetization/enums/AdEvent;->NO_AD:Lcom/nativex/monetization/enums/AdEvent;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nativex/monetization/enums/AdEvent;->$VALUES:[Lcom/nativex/monetization/enums/AdEvent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 99
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 100
    iput p3, p0, Lcom/nativex/monetization/enums/AdEvent;->level:I

    .line 101
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nativex/monetization/enums/AdEvent;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 29
    const-class v0, Lcom/nativex/monetization/enums/AdEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0    # "name":Ljava/lang/String;
    check-cast p0, Lcom/nativex/monetization/enums/AdEvent;

    return-object p0
.end method

.method public static values()[Lcom/nativex/monetization/enums/AdEvent;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/nativex/monetization/enums/AdEvent;->$VALUES:[Lcom/nativex/monetization/enums/AdEvent;

    invoke-virtual {v0}, [Lcom/nativex/monetization/enums/AdEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nativex/monetization/enums/AdEvent;

    return-object v0
.end method


# virtual methods
.method public getEventLevel()I
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lcom/nativex/monetization/enums/AdEvent;->level:I

    return v0
.end method
