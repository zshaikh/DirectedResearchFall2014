.class public final enum Lcom/voxel/api/model/CampaignInfo$PostrollType;
.super Ljava/lang/Enum;
.source "CampaignInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/api/model/CampaignInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PostrollType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/voxel/api/model/CampaignInfo$PostrollType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/voxel/api/model/CampaignInfo$PostrollType;

.field public static final enum BUTTON:Lcom/voxel/api/model/CampaignInfo$PostrollType;

.field public static final enum NONE:Lcom/voxel/api/model/CampaignInfo$PostrollType;

.field public static final enum TIMER:Lcom/voxel/api/model/CampaignInfo$PostrollType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 19
    new-instance v0, Lcom/voxel/api/model/CampaignInfo$PostrollType;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/voxel/api/model/CampaignInfo$PostrollType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxel/api/model/CampaignInfo$PostrollType;->NONE:Lcom/voxel/api/model/CampaignInfo$PostrollType;

    new-instance v0, Lcom/voxel/api/model/CampaignInfo$PostrollType;

    const-string v1, "TIMER"

    invoke-direct {v0, v1, v3}, Lcom/voxel/api/model/CampaignInfo$PostrollType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxel/api/model/CampaignInfo$PostrollType;->TIMER:Lcom/voxel/api/model/CampaignInfo$PostrollType;

    new-instance v0, Lcom/voxel/api/model/CampaignInfo$PostrollType;

    const-string v1, "BUTTON"

    invoke-direct {v0, v1, v4}, Lcom/voxel/api/model/CampaignInfo$PostrollType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxel/api/model/CampaignInfo$PostrollType;->BUTTON:Lcom/voxel/api/model/CampaignInfo$PostrollType;

    .line 18
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/voxel/api/model/CampaignInfo$PostrollType;

    sget-object v1, Lcom/voxel/api/model/CampaignInfo$PostrollType;->NONE:Lcom/voxel/api/model/CampaignInfo$PostrollType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/voxel/api/model/CampaignInfo$PostrollType;->TIMER:Lcom/voxel/api/model/CampaignInfo$PostrollType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/voxel/api/model/CampaignInfo$PostrollType;->BUTTON:Lcom/voxel/api/model/CampaignInfo$PostrollType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/voxel/api/model/CampaignInfo$PostrollType;->$VALUES:[Lcom/voxel/api/model/CampaignInfo$PostrollType;

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
    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/voxel/api/model/CampaignInfo$PostrollType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 18
    const-class v0, Lcom/voxel/api/model/CampaignInfo$PostrollType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0    # "name":Ljava/lang/String;
    check-cast p0, Lcom/voxel/api/model/CampaignInfo$PostrollType;

    return-object p0
.end method

.method public static values()[Lcom/voxel/api/model/CampaignInfo$PostrollType;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/voxel/api/model/CampaignInfo$PostrollType;->$VALUES:[Lcom/voxel/api/model/CampaignInfo$PostrollType;

    invoke-virtual {v0}, [Lcom/voxel/api/model/CampaignInfo$PostrollType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/voxel/api/model/CampaignInfo$PostrollType;

    return-object v0
.end method
