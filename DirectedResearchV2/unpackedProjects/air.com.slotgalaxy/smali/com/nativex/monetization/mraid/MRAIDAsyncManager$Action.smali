.class final enum Lcom/nativex/monetization/mraid/MRAIDAsyncManager$Action;
.super Ljava/lang/Enum;
.source "MRAIDAsyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nativex/monetization/mraid/MRAIDAsyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Action"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nativex/monetization/mraid/MRAIDAsyncManager$Action;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nativex/monetization/mraid/MRAIDAsyncManager$Action;

.field public static final enum DOWNLOAD_HTML:Lcom/nativex/monetization/mraid/MRAIDAsyncManager$Action;

.field public static final enum DOWNLOAD_PICTURE:Lcom/nativex/monetization/mraid/MRAIDAsyncManager$Action;

.field public static final enum INVALID:Lcom/nativex/monetization/mraid/MRAIDAsyncManager$Action;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 46
    new-instance v0, Lcom/nativex/monetization/mraid/MRAIDAsyncManager$Action;

    const-string v1, "DOWNLOAD_PICTURE"

    invoke-direct {v0, v1, v2}, Lcom/nativex/monetization/mraid/MRAIDAsyncManager$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nativex/monetization/mraid/MRAIDAsyncManager$Action;->DOWNLOAD_PICTURE:Lcom/nativex/monetization/mraid/MRAIDAsyncManager$Action;

    .line 47
    new-instance v0, Lcom/nativex/monetization/mraid/MRAIDAsyncManager$Action;

    const-string v1, "DOWNLOAD_HTML"

    invoke-direct {v0, v1, v3}, Lcom/nativex/monetization/mraid/MRAIDAsyncManager$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nativex/monetization/mraid/MRAIDAsyncManager$Action;->DOWNLOAD_HTML:Lcom/nativex/monetization/mraid/MRAIDAsyncManager$Action;

    .line 48
    new-instance v0, Lcom/nativex/monetization/mraid/MRAIDAsyncManager$Action;

    const-string v1, "INVALID"

    invoke-direct {v0, v1, v4}, Lcom/nativex/monetization/mraid/MRAIDAsyncManager$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nativex/monetization/mraid/MRAIDAsyncManager$Action;->INVALID:Lcom/nativex/monetization/mraid/MRAIDAsyncManager$Action;

    .line 45
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/nativex/monetization/mraid/MRAIDAsyncManager$Action;

    sget-object v1, Lcom/nativex/monetization/mraid/MRAIDAsyncManager$Action;->DOWNLOAD_PICTURE:Lcom/nativex/monetization/mraid/MRAIDAsyncManager$Action;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nativex/monetization/mraid/MRAIDAsyncManager$Action;->DOWNLOAD_HTML:Lcom/nativex/monetization/mraid/MRAIDAsyncManager$Action;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nativex/monetization/mraid/MRAIDAsyncManager$Action;->INVALID:Lcom/nativex/monetization/mraid/MRAIDAsyncManager$Action;

    aput-object v1, v0, v4

    sput-object v0, Lcom/nativex/monetization/mraid/MRAIDAsyncManager$Action;->$VALUES:[Lcom/nativex/monetization/mraid/MRAIDAsyncManager$Action;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nativex/monetization/mraid/MRAIDAsyncManager$Action;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 45
    const-class v0, Lcom/nativex/monetization/mraid/MRAIDAsyncManager$Action;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0    # "name":Ljava/lang/String;
    check-cast p0, Lcom/nativex/monetization/mraid/MRAIDAsyncManager$Action;

    return-object p0
.end method

.method public static values()[Lcom/nativex/monetization/mraid/MRAIDAsyncManager$Action;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/nativex/monetization/mraid/MRAIDAsyncManager$Action;->$VALUES:[Lcom/nativex/monetization/mraid/MRAIDAsyncManager$Action;

    invoke-virtual {v0}, [Lcom/nativex/monetization/mraid/MRAIDAsyncManager$Action;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nativex/monetization/mraid/MRAIDAsyncManager$Action;

    return-object v0
.end method
