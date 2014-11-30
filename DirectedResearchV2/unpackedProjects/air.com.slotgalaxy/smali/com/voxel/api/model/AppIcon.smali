.class public Lcom/voxel/api/model/AppIcon;
.super Ljava/lang/Object;
.source "AppIcon.java"


# instance fields
.field protected appId:J

.field private mData:Lcom/voxel/util/JSONWrapper;


# direct methods
.method public constructor <init>(Lcom/voxel/util/JSONWrapper;)V
    .locals 0
    .param p1, "data"    # Lcom/voxel/util/JSONWrapper;

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/voxel/api/model/AppIcon;->mData:Lcom/voxel/util/JSONWrapper;

    .line 11
    return-void
.end method


# virtual methods
.method public getAppId()J
    .locals 2

    .prologue
    .line 14
    iget-wide v0, p0, Lcom/voxel/api/model/AppIcon;->appId:J

    return-wide v0
.end method

.method public getAssetKey()Ljava/lang/String;
    .locals 5

    .prologue
    .line 26
    const-string v0, "app_icon_%d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/voxel/api/model/AppIcon;->getAppId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeight()I
    .locals 3

    .prologue
    .line 22
    iget-object v0, p0, Lcom/voxel/api/model/AppIcon;->mData:Lcom/voxel/util/JSONWrapper;

    const-string v1, "height"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/voxel/util/JSONWrapper;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getURL()Ljava/lang/String;
    .locals 3

    .prologue
    .line 30
    iget-object v1, p0, Lcom/voxel/api/model/AppIcon;->mData:Lcom/voxel/util/JSONWrapper;

    const-string v2, "icon"

    invoke-virtual {v1, v2}, Lcom/voxel/util/JSONWrapper;->getObject(Ljava/lang/String;)Lcom/voxel/util/JSONWrapper;

    move-result-object v0

    .line 31
    .local v0, "icon":Lcom/voxel/util/JSONWrapper;
    if-nez v0, :cond_0

    .line 32
    const/4 v1, 0x0

    .line 33
    :goto_0
    return-object v1

    :cond_0
    const-string v1, "url"

    invoke-virtual {v0, v1}, Lcom/voxel/util/JSONWrapper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getWidth()I
    .locals 3

    .prologue
    .line 18
    iget-object v0, p0, Lcom/voxel/api/model/AppIcon;->mData:Lcom/voxel/util/JSONWrapper;

    const-string v1, "width"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/voxel/util/JSONWrapper;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method
