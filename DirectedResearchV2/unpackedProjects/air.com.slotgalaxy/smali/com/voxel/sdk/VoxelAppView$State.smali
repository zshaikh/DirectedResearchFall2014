.class public final enum Lcom/voxel/sdk/VoxelAppView$State;
.super Ljava/lang/Enum;
.source "VoxelAppView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/sdk/VoxelAppView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/voxel/sdk/VoxelAppView$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/voxel/sdk/VoxelAppView$State;

.field public static final enum FAILED:Lcom/voxel/sdk/VoxelAppView$State;

.field public static final enum PREPARED:Lcom/voxel/sdk/VoxelAppView$State;

.field public static final enum STARTED:Lcom/voxel/sdk/VoxelAppView$State;

.field public static final enum STARTING:Lcom/voxel/sdk/VoxelAppView$State;

.field public static final enum STOPPED:Lcom/voxel/sdk/VoxelAppView$State;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 37
    new-instance v0, Lcom/voxel/sdk/VoxelAppView$State;

    const-string v1, "STOPPED"

    invoke-direct {v0, v1, v2}, Lcom/voxel/sdk/VoxelAppView$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxel/sdk/VoxelAppView$State;->STOPPED:Lcom/voxel/sdk/VoxelAppView$State;

    new-instance v0, Lcom/voxel/sdk/VoxelAppView$State;

    const-string v1, "PREPARED"

    invoke-direct {v0, v1, v3}, Lcom/voxel/sdk/VoxelAppView$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxel/sdk/VoxelAppView$State;->PREPARED:Lcom/voxel/sdk/VoxelAppView$State;

    new-instance v0, Lcom/voxel/sdk/VoxelAppView$State;

    const-string v1, "STARTING"

    invoke-direct {v0, v1, v4}, Lcom/voxel/sdk/VoxelAppView$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxel/sdk/VoxelAppView$State;->STARTING:Lcom/voxel/sdk/VoxelAppView$State;

    new-instance v0, Lcom/voxel/sdk/VoxelAppView$State;

    const-string v1, "STARTED"

    invoke-direct {v0, v1, v5}, Lcom/voxel/sdk/VoxelAppView$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxel/sdk/VoxelAppView$State;->STARTED:Lcom/voxel/sdk/VoxelAppView$State;

    new-instance v0, Lcom/voxel/sdk/VoxelAppView$State;

    const-string v1, "FAILED"

    invoke-direct {v0, v1, v6}, Lcom/voxel/sdk/VoxelAppView$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxel/sdk/VoxelAppView$State;->FAILED:Lcom/voxel/sdk/VoxelAppView$State;

    .line 36
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/voxel/sdk/VoxelAppView$State;

    sget-object v1, Lcom/voxel/sdk/VoxelAppView$State;->STOPPED:Lcom/voxel/sdk/VoxelAppView$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/voxel/sdk/VoxelAppView$State;->PREPARED:Lcom/voxel/sdk/VoxelAppView$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/voxel/sdk/VoxelAppView$State;->STARTING:Lcom/voxel/sdk/VoxelAppView$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/voxel/sdk/VoxelAppView$State;->STARTED:Lcom/voxel/sdk/VoxelAppView$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/voxel/sdk/VoxelAppView$State;->FAILED:Lcom/voxel/sdk/VoxelAppView$State;

    aput-object v1, v0, v6

    sput-object v0, Lcom/voxel/sdk/VoxelAppView$State;->$VALUES:[Lcom/voxel/sdk/VoxelAppView$State;

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
    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/voxel/sdk/VoxelAppView$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 36
    const-class v0, Lcom/voxel/sdk/VoxelAppView$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0    # "name":Ljava/lang/String;
    check-cast p0, Lcom/voxel/sdk/VoxelAppView$State;

    return-object p0
.end method

.method public static values()[Lcom/voxel/sdk/VoxelAppView$State;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/voxel/sdk/VoxelAppView$State;->$VALUES:[Lcom/voxel/sdk/VoxelAppView$State;

    invoke-virtual {v0}, [Lcom/voxel/sdk/VoxelAppView$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/voxel/sdk/VoxelAppView$State;

    return-object v0
.end method
