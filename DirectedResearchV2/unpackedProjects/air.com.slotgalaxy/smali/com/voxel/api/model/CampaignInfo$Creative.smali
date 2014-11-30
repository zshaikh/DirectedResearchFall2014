.class public Lcom/voxel/api/model/CampaignInfo$Creative;
.super Ljava/lang/Object;
.source "CampaignInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/api/model/CampaignInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Creative"
.end annotation


# instance fields
.field private assetKey:Ljava/lang/String;

.field private height:I

.field private imageURL:Ljava/lang/String;

.field private isCached:Z

.field private type:Ljava/lang/String;

.field private width:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    return-void
.end method

.method static synthetic access$000(Lcom/voxel/util/JSONWrapper;)Lcom/voxel/api/model/CampaignInfo$Creative;
    .locals 1
    .param p0, "x0"    # Lcom/voxel/util/JSONWrapper;

    .prologue
    .line 159
    invoke-static {p0}, Lcom/voxel/api/model/CampaignInfo$Creative;->fromJSON(Lcom/voxel/util/JSONWrapper;)Lcom/voxel/api/model/CampaignInfo$Creative;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$102(Lcom/voxel/api/model/CampaignInfo$Creative;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/voxel/api/model/CampaignInfo$Creative;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/voxel/api/model/CampaignInfo$Creative;->assetKey:Ljava/lang/String;

    return-object p1
.end method

.method private static fromJSON(Lcom/voxel/util/JSONWrapper;)Lcom/voxel/api/model/CampaignInfo$Creative;
    .locals 3
    .param p0, "data"    # Lcom/voxel/util/JSONWrapper;

    .prologue
    const/4 v2, 0x0

    .line 168
    if-nez p0, :cond_0

    .line 169
    const/4 v1, 0x0

    .line 176
    :goto_0
    return-object v1

    .line 170
    :cond_0
    new-instance v0, Lcom/voxel/api/model/CampaignInfo$Creative;

    invoke-direct {v0}, Lcom/voxel/api/model/CampaignInfo$Creative;-><init>()V

    .line 171
    .local v0, "creative":Lcom/voxel/api/model/CampaignInfo$Creative;
    const-string v1, "creative_type"

    invoke-virtual {p0, v1}, Lcom/voxel/util/JSONWrapper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/voxel/api/model/CampaignInfo$Creative;->type:Ljava/lang/String;

    .line 172
    const-string v1, "width"

    invoke-virtual {p0, v1, v2}, Lcom/voxel/util/JSONWrapper;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/voxel/api/model/CampaignInfo$Creative;->width:I

    .line 173
    const-string v1, "height"

    invoke-virtual {p0, v1, v2}, Lcom/voxel/util/JSONWrapper;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/voxel/api/model/CampaignInfo$Creative;->height:I

    .line 174
    const-string v1, "image_url"

    invoke-virtual {p0, v1}, Lcom/voxel/util/JSONWrapper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/voxel/api/model/CampaignInfo$Creative;->imageURL:Ljava/lang/String;

    move-object v1, v0

    .line 176
    goto :goto_0
.end method


# virtual methods
.method public getAssetKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/voxel/api/model/CampaignInfo$Creative;->assetKey:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 196
    iget v0, p0, Lcom/voxel/api/model/CampaignInfo$Creative;->height:I

    return v0
.end method

.method public getImageURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/voxel/api/model/CampaignInfo$Creative;->imageURL:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/voxel/api/model/CampaignInfo$Creative;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 192
    iget v0, p0, Lcom/voxel/api/model/CampaignInfo$Creative;->width:I

    return v0
.end method

.method public isCached()Z
    .locals 1

    .prologue
    .line 208
    iget-boolean v0, p0, Lcom/voxel/api/model/CampaignInfo$Creative;->isCached:Z

    return v0
.end method

.method public setCached(Z)V
    .locals 0
    .param p1, "cached"    # Z

    .prologue
    .line 204
    iput-boolean p1, p0, Lcom/voxel/api/model/CampaignInfo$Creative;->isCached:Z

    .line 205
    return-void
.end method
