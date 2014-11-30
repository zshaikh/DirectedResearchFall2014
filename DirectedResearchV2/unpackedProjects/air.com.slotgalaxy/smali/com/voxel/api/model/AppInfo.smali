.class public Lcom/voxel/api/model/AppInfo;
.super Ljava/lang/Object;
.source "AppInfo.java"


# instance fields
.field private height:I

.field private mData:Lcom/voxel/util/JSONWrapper;

.field private width:I


# direct methods
.method public constructor <init>(Lcom/voxel/util/JSONWrapper;)V
    .locals 0
    .param p1, "data"    # Lcom/voxel/util/JSONWrapper;

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/voxel/api/model/AppInfo;->mData:Lcom/voxel/util/JSONWrapper;

    .line 12
    return-void
.end method


# virtual methods
.method public getBundleId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/voxel/api/model/AppInfo;->mData:Lcom/voxel/util/JSONWrapper;

    const-string v1, "bundle_id"

    invoke-virtual {v0, v1}, Lcom/voxel/util/JSONWrapper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/voxel/api/model/AppInfo;->height:I

    return v0
.end method

.method public getIcon()Lcom/voxel/api/model/AppIcon;
    .locals 4

    .prologue
    .line 39
    iget-object v2, p0, Lcom/voxel/api/model/AppInfo;->mData:Lcom/voxel/util/JSONWrapper;

    const-string v3, "icon"

    invoke-virtual {v2, v3}, Lcom/voxel/util/JSONWrapper;->getObject(Ljava/lang/String;)Lcom/voxel/util/JSONWrapper;

    move-result-object v1

    .line 40
    .local v1, "iconData":Lcom/voxel/util/JSONWrapper;
    if-nez v1, :cond_0

    .line 41
    const/4 v2, 0x0

    .line 44
    :goto_0
    return-object v2

    .line 42
    :cond_0
    new-instance v0, Lcom/voxel/api/model/AppIcon;

    invoke-direct {v0, v1}, Lcom/voxel/api/model/AppIcon;-><init>(Lcom/voxel/util/JSONWrapper;)V

    .line 43
    .local v0, "icon":Lcom/voxel/api/model/AppIcon;
    invoke-virtual {p0}, Lcom/voxel/api/model/AppInfo;->getId()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/voxel/api/model/AppIcon;->appId:J

    move-object v2, v0

    .line 44
    goto :goto_0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 15
    iget-object v0, p0, Lcom/voxel/api/model/AppInfo;->mData:Lcom/voxel/util/JSONWrapper;

    const-string v1, "id"

    invoke-virtual {v0, v1}, Lcom/voxel/util/JSONWrapper;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 19
    iget-object v0, p0, Lcom/voxel/api/model/AppInfo;->mData:Lcom/voxel/util/JSONWrapper;

    const-string v1, "name"

    invoke-virtual {v0, v1}, Lcom/voxel/util/JSONWrapper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOrientation()I
    .locals 3

    .prologue
    .line 35
    iget-object v0, p0, Lcom/voxel/api/model/AppInfo;->mData:Lcom/voxel/util/JSONWrapper;

    const-string v1, "orientation"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/voxel/util/JSONWrapper;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/voxel/api/model/AppInfo;->width:I

    return v0
.end method

.method public isLandscape()Z
    .locals 2

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/voxel/api/model/AppInfo;->getOrientation()I

    move-result v0

    .line 72
    .local v0, "orientation":I
    if-eqz v0, :cond_0

    const/16 v1, 0xb4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 67
    iput p1, p0, Lcom/voxel/api/model/AppInfo;->height:I

    .line 68
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 59
    iput p1, p0, Lcom/voxel/api/model/AppInfo;->width:I

    .line 60
    return-void
.end method

.method public usesAccelerometer()Z
    .locals 3

    .prologue
    .line 27
    iget-object v0, p0, Lcom/voxel/api/model/AppInfo;->mData:Lcom/voxel/util/JSONWrapper;

    const-string v1, "uses_accelerometer"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/voxel/util/JSONWrapper;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public usesMultiTouch()Z
    .locals 3

    .prologue
    .line 31
    iget-object v0, p0, Lcom/voxel/api/model/AppInfo;->mData:Lcom/voxel/util/JSONWrapper;

    const-string v1, "uses_multi_touch"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/voxel/util/JSONWrapper;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
