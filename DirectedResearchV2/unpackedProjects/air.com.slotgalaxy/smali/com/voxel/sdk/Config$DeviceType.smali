.class public final enum Lcom/voxel/sdk/Config$DeviceType;
.super Ljava/lang/Enum;
.source "Config.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/sdk/Config;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DeviceType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/voxel/sdk/Config$DeviceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/voxel/sdk/Config$DeviceType;

.field public static final enum PHONE:Lcom/voxel/sdk/Config$DeviceType;

.field public static final enum TABLET:Lcom/voxel/sdk/Config$DeviceType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 5
    new-instance v0, Lcom/voxel/sdk/Config$DeviceType;

    const-string v1, "PHONE"

    invoke-direct {v0, v1, v2}, Lcom/voxel/sdk/Config$DeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxel/sdk/Config$DeviceType;->PHONE:Lcom/voxel/sdk/Config$DeviceType;

    new-instance v0, Lcom/voxel/sdk/Config$DeviceType;

    const-string v1, "TABLET"

    invoke-direct {v0, v1, v3}, Lcom/voxel/sdk/Config$DeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxel/sdk/Config$DeviceType;->TABLET:Lcom/voxel/sdk/Config$DeviceType;

    .line 4
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/voxel/sdk/Config$DeviceType;

    sget-object v1, Lcom/voxel/sdk/Config$DeviceType;->PHONE:Lcom/voxel/sdk/Config$DeviceType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/voxel/sdk/Config$DeviceType;->TABLET:Lcom/voxel/sdk/Config$DeviceType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/voxel/sdk/Config$DeviceType;->$VALUES:[Lcom/voxel/sdk/Config$DeviceType;

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
    .line 4
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/voxel/sdk/Config$DeviceType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 4
    const-class v0, Lcom/voxel/sdk/Config$DeviceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0    # "name":Ljava/lang/String;
    check-cast p0, Lcom/voxel/sdk/Config$DeviceType;

    return-object p0
.end method

.method public static values()[Lcom/voxel/sdk/Config$DeviceType;
    .locals 1

    .prologue
    .line 4
    sget-object v0, Lcom/voxel/sdk/Config$DeviceType;->$VALUES:[Lcom/voxel/sdk/Config$DeviceType;

    invoke-virtual {v0}, [Lcom/voxel/sdk/Config$DeviceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/voxel/sdk/Config$DeviceType;

    return-object v0
.end method
