.class public final enum Lcom/voxel/sdk/Config$Orientation;
.super Ljava/lang/Enum;
.source "Config.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/sdk/Config;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Orientation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/voxel/sdk/Config$Orientation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/voxel/sdk/Config$Orientation;

.field public static final enum LANDSCAPE:Lcom/voxel/sdk/Config$Orientation;

.field public static final enum PORTRAIT:Lcom/voxel/sdk/Config$Orientation;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 9
    new-instance v0, Lcom/voxel/sdk/Config$Orientation;

    const-string v1, "PORTRAIT"

    invoke-direct {v0, v1, v2}, Lcom/voxel/sdk/Config$Orientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxel/sdk/Config$Orientation;->PORTRAIT:Lcom/voxel/sdk/Config$Orientation;

    new-instance v0, Lcom/voxel/sdk/Config$Orientation;

    const-string v1, "LANDSCAPE"

    invoke-direct {v0, v1, v3}, Lcom/voxel/sdk/Config$Orientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxel/sdk/Config$Orientation;->LANDSCAPE:Lcom/voxel/sdk/Config$Orientation;

    .line 8
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/voxel/sdk/Config$Orientation;

    sget-object v1, Lcom/voxel/sdk/Config$Orientation;->PORTRAIT:Lcom/voxel/sdk/Config$Orientation;

    aput-object v1, v0, v2

    sget-object v1, Lcom/voxel/sdk/Config$Orientation;->LANDSCAPE:Lcom/voxel/sdk/Config$Orientation;

    aput-object v1, v0, v3

    sput-object v0, Lcom/voxel/sdk/Config$Orientation;->$VALUES:[Lcom/voxel/sdk/Config$Orientation;

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
    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/voxel/sdk/Config$Orientation;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 8
    const-class v0, Lcom/voxel/sdk/Config$Orientation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0    # "name":Ljava/lang/String;
    check-cast p0, Lcom/voxel/sdk/Config$Orientation;

    return-object p0
.end method

.method public static values()[Lcom/voxel/sdk/Config$Orientation;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/voxel/sdk/Config$Orientation;->$VALUES:[Lcom/voxel/sdk/Config$Orientation;

    invoke-virtual {v0}, [Lcom/voxel/sdk/Config$Orientation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/voxel/sdk/Config$Orientation;

    return-object v0
.end method
