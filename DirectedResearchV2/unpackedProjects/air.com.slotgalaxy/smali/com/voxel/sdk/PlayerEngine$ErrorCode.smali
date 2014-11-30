.class public final enum Lcom/voxel/sdk/PlayerEngine$ErrorCode;
.super Ljava/lang/Enum;
.source "PlayerEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/sdk/PlayerEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ErrorCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/voxel/sdk/PlayerEngine$ErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/voxel/sdk/PlayerEngine$ErrorCode;

.field public static final enum API_CONNECT:Lcom/voxel/sdk/PlayerEngine$ErrorCode;

.field public static final enum NONE:Lcom/voxel/sdk/PlayerEngine$ErrorCode;

.field public static final enum NO_FRAME:Lcom/voxel/sdk/PlayerEngine$ErrorCode;

.field public static final enum RTP_CONNECT:Lcom/voxel/sdk/PlayerEngine$ErrorCode;

.field public static final enum TIMEOUT:Lcom/voxel/sdk/PlayerEngine$ErrorCode;

.field public static final enum UDP_HOLE_PUNCH:Lcom/voxel/sdk/PlayerEngine$ErrorCode;

.field public static final enum WEBSOCKET_CONNECT:Lcom/voxel/sdk/PlayerEngine$ErrorCode;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 46
    new-instance v0, Lcom/voxel/sdk/PlayerEngine$ErrorCode;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v3}, Lcom/voxel/sdk/PlayerEngine$ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxel/sdk/PlayerEngine$ErrorCode;->NONE:Lcom/voxel/sdk/PlayerEngine$ErrorCode;

    new-instance v0, Lcom/voxel/sdk/PlayerEngine$ErrorCode;

    const-string v1, "WEBSOCKET_CONNECT"

    invoke-direct {v0, v1, v4}, Lcom/voxel/sdk/PlayerEngine$ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxel/sdk/PlayerEngine$ErrorCode;->WEBSOCKET_CONNECT:Lcom/voxel/sdk/PlayerEngine$ErrorCode;

    new-instance v0, Lcom/voxel/sdk/PlayerEngine$ErrorCode;

    const-string v1, "UDP_HOLE_PUNCH"

    invoke-direct {v0, v1, v5}, Lcom/voxel/sdk/PlayerEngine$ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxel/sdk/PlayerEngine$ErrorCode;->UDP_HOLE_PUNCH:Lcom/voxel/sdk/PlayerEngine$ErrorCode;

    new-instance v0, Lcom/voxel/sdk/PlayerEngine$ErrorCode;

    const-string v1, "RTP_CONNECT"

    invoke-direct {v0, v1, v6}, Lcom/voxel/sdk/PlayerEngine$ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxel/sdk/PlayerEngine$ErrorCode;->RTP_CONNECT:Lcom/voxel/sdk/PlayerEngine$ErrorCode;

    new-instance v0, Lcom/voxel/sdk/PlayerEngine$ErrorCode;

    const-string v1, "API_CONNECT"

    invoke-direct {v0, v1, v7}, Lcom/voxel/sdk/PlayerEngine$ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxel/sdk/PlayerEngine$ErrorCode;->API_CONNECT:Lcom/voxel/sdk/PlayerEngine$ErrorCode;

    new-instance v0, Lcom/voxel/sdk/PlayerEngine$ErrorCode;

    const-string v1, "TIMEOUT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/voxel/sdk/PlayerEngine$ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxel/sdk/PlayerEngine$ErrorCode;->TIMEOUT:Lcom/voxel/sdk/PlayerEngine$ErrorCode;

    new-instance v0, Lcom/voxel/sdk/PlayerEngine$ErrorCode;

    const-string v1, "NO_FRAME"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/voxel/sdk/PlayerEngine$ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxel/sdk/PlayerEngine$ErrorCode;->NO_FRAME:Lcom/voxel/sdk/PlayerEngine$ErrorCode;

    .line 45
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/voxel/sdk/PlayerEngine$ErrorCode;

    sget-object v1, Lcom/voxel/sdk/PlayerEngine$ErrorCode;->NONE:Lcom/voxel/sdk/PlayerEngine$ErrorCode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/voxel/sdk/PlayerEngine$ErrorCode;->WEBSOCKET_CONNECT:Lcom/voxel/sdk/PlayerEngine$ErrorCode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/voxel/sdk/PlayerEngine$ErrorCode;->UDP_HOLE_PUNCH:Lcom/voxel/sdk/PlayerEngine$ErrorCode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/voxel/sdk/PlayerEngine$ErrorCode;->RTP_CONNECT:Lcom/voxel/sdk/PlayerEngine$ErrorCode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/voxel/sdk/PlayerEngine$ErrorCode;->API_CONNECT:Lcom/voxel/sdk/PlayerEngine$ErrorCode;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/voxel/sdk/PlayerEngine$ErrorCode;->TIMEOUT:Lcom/voxel/sdk/PlayerEngine$ErrorCode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/voxel/sdk/PlayerEngine$ErrorCode;->NO_FRAME:Lcom/voxel/sdk/PlayerEngine$ErrorCode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/voxel/sdk/PlayerEngine$ErrorCode;->$VALUES:[Lcom/voxel/sdk/PlayerEngine$ErrorCode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/voxel/sdk/PlayerEngine$ErrorCode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 45
    const-class v0, Lcom/voxel/sdk/PlayerEngine$ErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0    # "name":Ljava/lang/String;
    check-cast p0, Lcom/voxel/sdk/PlayerEngine$ErrorCode;

    return-object p0
.end method

.method public static values()[Lcom/voxel/sdk/PlayerEngine$ErrorCode;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/voxel/sdk/PlayerEngine$ErrorCode;->$VALUES:[Lcom/voxel/sdk/PlayerEngine$ErrorCode;

    invoke-virtual {v0}, [Lcom/voxel/sdk/PlayerEngine$ErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/voxel/sdk/PlayerEngine$ErrorCode;

    return-object v0
.end method
