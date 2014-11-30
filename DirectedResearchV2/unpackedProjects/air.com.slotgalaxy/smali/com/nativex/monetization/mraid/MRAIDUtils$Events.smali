.class public final enum Lcom/nativex/monetization/mraid/MRAIDUtils$Events;
.super Ljava/lang/Enum;
.source "MRAIDUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nativex/monetization/mraid/MRAIDUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Events"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nativex/monetization/mraid/MRAIDUtils$Events;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nativex/monetization/mraid/MRAIDUtils$Events;

.field public static final enum ERROR:Lcom/nativex/monetization/mraid/MRAIDUtils$Events;

.field public static final enum READY:Lcom/nativex/monetization/mraid/MRAIDUtils$Events;

.field public static final enum SIZE_CHANGE:Lcom/nativex/monetization/mraid/MRAIDUtils$Events;

.field public static final enum STATE_CHANGE:Lcom/nativex/monetization/mraid/MRAIDUtils$Events;

.field public static final enum VIEWABLE_CHANGE:Lcom/nativex/monetization/mraid/MRAIDUtils$Events;


# instance fields
.field private event:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 133
    new-instance v0, Lcom/nativex/monetization/mraid/MRAIDUtils$Events;

    const-string v1, "READY"

    const-string v2, "ready"

    invoke-direct {v0, v1, v3, v2}, Lcom/nativex/monetization/mraid/MRAIDUtils$Events;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nativex/monetization/mraid/MRAIDUtils$Events;->READY:Lcom/nativex/monetization/mraid/MRAIDUtils$Events;

    .line 134
    new-instance v0, Lcom/nativex/monetization/mraid/MRAIDUtils$Events;

    const-string v1, "ERROR"

    const-string v2, "error"

    invoke-direct {v0, v1, v4, v2}, Lcom/nativex/monetization/mraid/MRAIDUtils$Events;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nativex/monetization/mraid/MRAIDUtils$Events;->ERROR:Lcom/nativex/monetization/mraid/MRAIDUtils$Events;

    .line 135
    new-instance v0, Lcom/nativex/monetization/mraid/MRAIDUtils$Events;

    const-string v1, "STATE_CHANGE"

    const-string v2, "stateChange"

    invoke-direct {v0, v1, v5, v2}, Lcom/nativex/monetization/mraid/MRAIDUtils$Events;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nativex/monetization/mraid/MRAIDUtils$Events;->STATE_CHANGE:Lcom/nativex/monetization/mraid/MRAIDUtils$Events;

    .line 136
    new-instance v0, Lcom/nativex/monetization/mraid/MRAIDUtils$Events;

    const-string v1, "VIEWABLE_CHANGE"

    const-string v2, "viewableChange"

    invoke-direct {v0, v1, v6, v2}, Lcom/nativex/monetization/mraid/MRAIDUtils$Events;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nativex/monetization/mraid/MRAIDUtils$Events;->VIEWABLE_CHANGE:Lcom/nativex/monetization/mraid/MRAIDUtils$Events;

    .line 137
    new-instance v0, Lcom/nativex/monetization/mraid/MRAIDUtils$Events;

    const-string v1, "SIZE_CHANGE"

    const-string v2, "sizeChange"

    invoke-direct {v0, v1, v7, v2}, Lcom/nativex/monetization/mraid/MRAIDUtils$Events;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nativex/monetization/mraid/MRAIDUtils$Events;->SIZE_CHANGE:Lcom/nativex/monetization/mraid/MRAIDUtils$Events;

    .line 131
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/nativex/monetization/mraid/MRAIDUtils$Events;

    sget-object v1, Lcom/nativex/monetization/mraid/MRAIDUtils$Events;->READY:Lcom/nativex/monetization/mraid/MRAIDUtils$Events;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nativex/monetization/mraid/MRAIDUtils$Events;->ERROR:Lcom/nativex/monetization/mraid/MRAIDUtils$Events;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nativex/monetization/mraid/MRAIDUtils$Events;->STATE_CHANGE:Lcom/nativex/monetization/mraid/MRAIDUtils$Events;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nativex/monetization/mraid/MRAIDUtils$Events;->VIEWABLE_CHANGE:Lcom/nativex/monetization/mraid/MRAIDUtils$Events;

    aput-object v1, v0, v6

    sget-object v1, Lcom/nativex/monetization/mraid/MRAIDUtils$Events;->SIZE_CHANGE:Lcom/nativex/monetization/mraid/MRAIDUtils$Events;

    aput-object v1, v0, v7

    sput-object v0, Lcom/nativex/monetization/mraid/MRAIDUtils$Events;->$VALUES:[Lcom/nativex/monetization/mraid/MRAIDUtils$Events;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "e"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 142
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 143
    iput-object p3, p0, Lcom/nativex/monetization/mraid/MRAIDUtils$Events;->event:Ljava/lang/String;

    .line 144
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nativex/monetization/mraid/MRAIDUtils$Events;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 131
    const-class v0, Lcom/nativex/monetization/mraid/MRAIDUtils$Events;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0    # "name":Ljava/lang/String;
    check-cast p0, Lcom/nativex/monetization/mraid/MRAIDUtils$Events;

    return-object p0
.end method

.method public static values()[Lcom/nativex/monetization/mraid/MRAIDUtils$Events;
    .locals 1

    .prologue
    .line 131
    sget-object v0, Lcom/nativex/monetization/mraid/MRAIDUtils$Events;->$VALUES:[Lcom/nativex/monetization/mraid/MRAIDUtils$Events;

    invoke-virtual {v0}, [Lcom/nativex/monetization/mraid/MRAIDUtils$Events;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nativex/monetization/mraid/MRAIDUtils$Events;

    return-object v0
.end method


# virtual methods
.method public getEvent()Ljava/lang/String;
    .locals 3

    .prologue
    const-string v2, "\""

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nativex/monetization/mraid/MRAIDUtils$Events;->event:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
