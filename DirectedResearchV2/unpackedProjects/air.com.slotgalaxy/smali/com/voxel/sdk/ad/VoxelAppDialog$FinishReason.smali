.class public final enum Lcom/voxel/sdk/ad/VoxelAppDialog$FinishReason;
.super Ljava/lang/Enum;
.source "VoxelAppDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/sdk/ad/VoxelAppDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FinishReason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/voxel/sdk/ad/VoxelAppDialog$FinishReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/voxel/sdk/ad/VoxelAppDialog$FinishReason;

.field public static final enum FAILED:Lcom/voxel/sdk/ad/VoxelAppDialog$FinishReason;

.field public static final enum INSTALL_REQUESTED:Lcom/voxel/sdk/ad/VoxelAppDialog$FinishReason;

.field public static final enum TIMER_FINISHED:Lcom/voxel/sdk/ad/VoxelAppDialog$FinishReason;

.field public static final enum USER_CLOSED:Lcom/voxel/sdk/ad/VoxelAppDialog$FinishReason;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 7
    new-instance v0, Lcom/voxel/sdk/ad/VoxelAppDialog$FinishReason;

    const-string v1, "TIMER_FINISHED"

    invoke-direct {v0, v1, v2}, Lcom/voxel/sdk/ad/VoxelAppDialog$FinishReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxel/sdk/ad/VoxelAppDialog$FinishReason;->TIMER_FINISHED:Lcom/voxel/sdk/ad/VoxelAppDialog$FinishReason;

    new-instance v0, Lcom/voxel/sdk/ad/VoxelAppDialog$FinishReason;

    const-string v1, "INSTALL_REQUESTED"

    invoke-direct {v0, v1, v3}, Lcom/voxel/sdk/ad/VoxelAppDialog$FinishReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxel/sdk/ad/VoxelAppDialog$FinishReason;->INSTALL_REQUESTED:Lcom/voxel/sdk/ad/VoxelAppDialog$FinishReason;

    new-instance v0, Lcom/voxel/sdk/ad/VoxelAppDialog$FinishReason;

    const-string v1, "USER_CLOSED"

    invoke-direct {v0, v1, v4}, Lcom/voxel/sdk/ad/VoxelAppDialog$FinishReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxel/sdk/ad/VoxelAppDialog$FinishReason;->USER_CLOSED:Lcom/voxel/sdk/ad/VoxelAppDialog$FinishReason;

    new-instance v0, Lcom/voxel/sdk/ad/VoxelAppDialog$FinishReason;

    const-string v1, "FAILED"

    invoke-direct {v0, v1, v5}, Lcom/voxel/sdk/ad/VoxelAppDialog$FinishReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxel/sdk/ad/VoxelAppDialog$FinishReason;->FAILED:Lcom/voxel/sdk/ad/VoxelAppDialog$FinishReason;

    .line 6
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/voxel/sdk/ad/VoxelAppDialog$FinishReason;

    sget-object v1, Lcom/voxel/sdk/ad/VoxelAppDialog$FinishReason;->TIMER_FINISHED:Lcom/voxel/sdk/ad/VoxelAppDialog$FinishReason;

    aput-object v1, v0, v2

    sget-object v1, Lcom/voxel/sdk/ad/VoxelAppDialog$FinishReason;->INSTALL_REQUESTED:Lcom/voxel/sdk/ad/VoxelAppDialog$FinishReason;

    aput-object v1, v0, v3

    sget-object v1, Lcom/voxel/sdk/ad/VoxelAppDialog$FinishReason;->USER_CLOSED:Lcom/voxel/sdk/ad/VoxelAppDialog$FinishReason;

    aput-object v1, v0, v4

    sget-object v1, Lcom/voxel/sdk/ad/VoxelAppDialog$FinishReason;->FAILED:Lcom/voxel/sdk/ad/VoxelAppDialog$FinishReason;

    aput-object v1, v0, v5

    sput-object v0, Lcom/voxel/sdk/ad/VoxelAppDialog$FinishReason;->$VALUES:[Lcom/voxel/sdk/ad/VoxelAppDialog$FinishReason;

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
    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/voxel/sdk/ad/VoxelAppDialog$FinishReason;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 6
    const-class v0, Lcom/voxel/sdk/ad/VoxelAppDialog$FinishReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0    # "name":Ljava/lang/String;
    check-cast p0, Lcom/voxel/sdk/ad/VoxelAppDialog$FinishReason;

    return-object p0
.end method

.method public static values()[Lcom/voxel/sdk/ad/VoxelAppDialog$FinishReason;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/voxel/sdk/ad/VoxelAppDialog$FinishReason;->$VALUES:[Lcom/voxel/sdk/ad/VoxelAppDialog$FinishReason;

    invoke-virtual {v0}, [Lcom/voxel/sdk/ad/VoxelAppDialog$FinishReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/voxel/sdk/ad/VoxelAppDialog$FinishReason;

    return-object v0
.end method
