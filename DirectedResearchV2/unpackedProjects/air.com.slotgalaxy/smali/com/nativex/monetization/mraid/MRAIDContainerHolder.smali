.class Lcom/nativex/monetization/mraid/MRAIDContainerHolder;
.super Ljava/util/HashMap;
.source "MRAIDContainerHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nativex/monetization/mraid/MRAIDContainerHolder$MapDataHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Lcom/nativex/monetization/mraid/MRAIDContainerHolder$MapDataHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x17c613f825d2e2eaL


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 174
    return-void
.end method

.method private releaseContainers(Lcom/nativex/monetization/mraid/MRAIDContainerHolder$MapDataHolder;)V
    .locals 2
    .param p1, "holder"    # Lcom/nativex/monetization/mraid/MRAIDContainerHolder$MapDataHolder;

    .prologue
    const/4 v1, 0x0

    .line 161
    if-nez p1, :cond_1

    .line 172
    :cond_0
    :goto_0
    return-void

    .line 164
    :cond_1
    iget-object v0, p1, Lcom/nativex/monetization/mraid/MRAIDContainerHolder$MapDataHolder;->shown:Lcom/nativex/monetization/mraid/MRAIDContainer;

    if-eqz v0, :cond_2

    .line 165
    iget-object v0, p1, Lcom/nativex/monetization/mraid/MRAIDContainerHolder$MapDataHolder;->shown:Lcom/nativex/monetization/mraid/MRAIDContainer;

    invoke-virtual {v0}, Lcom/nativex/monetization/mraid/MRAIDContainer;->release()V

    .line 166
    iput-object v1, p1, Lcom/nativex/monetization/mraid/MRAIDContainerHolder$MapDataHolder;->shown:Lcom/nativex/monetization/mraid/MRAIDContainer;

    .line 168
    :cond_2
    iget-object v0, p1, Lcom/nativex/monetization/mraid/MRAIDContainerHolder$MapDataHolder;->cached:Lcom/nativex/monetization/mraid/MRAIDContainer;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p1, Lcom/nativex/monetization/mraid/MRAIDContainerHolder$MapDataHolder;->cached:Lcom/nativex/monetization/mraid/MRAIDContainer;

    invoke-virtual {v0}, Lcom/nativex/monetization/mraid/MRAIDContainer;->release()V

    .line 170
    iput-object v1, p1, Lcom/nativex/monetization/mraid/MRAIDContainerHolder$MapDataHolder;->cached:Lcom/nativex/monetization/mraid/MRAIDContainer;

    goto :goto_0
.end method


# virtual methods
.method public getCachedContainer(Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;Ljava/lang/String;)Lcom/nativex/monetization/mraid/MRAIDContainer;
    .locals 2
    .param p1, "type"    # Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 85
    invoke-static {p1, p2}, Lcom/nativex/monetization/mraid/MRAIDContainer;->getContainerName(Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/nativex/monetization/mraid/MRAIDContainerHolder;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nativex/monetization/mraid/MRAIDContainerHolder$MapDataHolder;

    .line 86
    .local v0, "dataHolder":Lcom/nativex/monetization/mraid/MRAIDContainerHolder$MapDataHolder;
    if-eqz v0, :cond_0

    .line 87
    iget-object v1, v0, Lcom/nativex/monetization/mraid/MRAIDContainerHolder$MapDataHolder;->cached:Lcom/nativex/monetization/mraid/MRAIDContainer;

    .line 89
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getContainer(Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;Ljava/lang/String;)Lcom/nativex/monetization/mraid/MRAIDContainer;
    .locals 1
    .param p1, "type"    # Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 95
    invoke-static {p1, p2}, Lcom/nativex/monetization/mraid/MRAIDContainer;->getContainerName(Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nativex/monetization/mraid/MRAIDContainerHolder;->getContainer(Ljava/lang/String;)Lcom/nativex/monetization/mraid/MRAIDContainer;

    move-result-object v0

    return-object v0
.end method

.method public getContainer(Ljava/lang/String;)Lcom/nativex/monetization/mraid/MRAIDContainer;
    .locals 2
    .param p1, "containerName"    # Ljava/lang/String;

    .prologue
    .line 100
    invoke-virtual {p0, p1}, Lcom/nativex/monetization/mraid/MRAIDContainerHolder;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nativex/monetization/mraid/MRAIDContainerHolder$MapDataHolder;

    .line 101
    .local v0, "dataHolder":Lcom/nativex/monetization/mraid/MRAIDContainerHolder$MapDataHolder;
    if-eqz v0, :cond_0

    .line 102
    iget-object v1, v0, Lcom/nativex/monetization/mraid/MRAIDContainerHolder$MapDataHolder;->shown:Lcom/nativex/monetization/mraid/MRAIDContainer;

    .line 104
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getMapDataHolder(Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;Ljava/lang/String;)Lcom/nativex/monetization/mraid/MRAIDContainerHolder$MapDataHolder;
    .locals 1
    .param p1, "type"    # Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-static {p1, p2}, Lcom/nativex/monetization/mraid/MRAIDContainer;->getContainerName(Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nativex/monetization/mraid/MRAIDContainerHolder;->getMapDataHolder(Ljava/lang/String;)Lcom/nativex/monetization/mraid/MRAIDContainerHolder$MapDataHolder;

    move-result-object v0

    return-object v0
.end method

.method getMapDataHolder(Ljava/lang/String;)Lcom/nativex/monetization/mraid/MRAIDContainerHolder$MapDataHolder;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 59
    invoke-virtual {p0, p1}, Lcom/nativex/monetization/mraid/MRAIDContainerHolder;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nativex/monetization/mraid/MRAIDContainerHolder$MapDataHolder;

    .line 60
    .local v0, "dataHolder":Lcom/nativex/monetization/mraid/MRAIDContainerHolder$MapDataHolder;
    if-nez v0, :cond_0

    .line 61
    new-instance v0, Lcom/nativex/monetization/mraid/MRAIDContainerHolder$MapDataHolder;

    .end local v0    # "dataHolder":Lcom/nativex/monetization/mraid/MRAIDContainerHolder$MapDataHolder;
    invoke-direct {v0, p0}, Lcom/nativex/monetization/mraid/MRAIDContainerHolder$MapDataHolder;-><init>(Lcom/nativex/monetization/mraid/MRAIDContainerHolder;)V

    .line 62
    .restart local v0    # "dataHolder":Lcom/nativex/monetization/mraid/MRAIDContainerHolder$MapDataHolder;
    invoke-virtual {p0, p1, v0}, Lcom/nativex/monetization/mraid/MRAIDContainerHolder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    :cond_0
    return-object v0
.end method

.method public hasContainer(Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;Ljava/lang/String;Z)Z
    .locals 4
    .param p1, "type"    # Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "cached"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 71
    invoke-static {p1, p2}, Lcom/nativex/monetization/mraid/MRAIDContainer;->getContainerName(Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/nativex/monetization/mraid/MRAIDContainerHolder;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nativex/monetization/mraid/MRAIDContainerHolder$MapDataHolder;

    .line 72
    .local v0, "dataHolder":Lcom/nativex/monetization/mraid/MRAIDContainerHolder$MapDataHolder;
    if-eqz v0, :cond_3

    .line 73
    if-eqz p3, :cond_1

    .line 74
    iget-object v1, v0, Lcom/nativex/monetization/mraid/MRAIDContainerHolder$MapDataHolder;->cached:Lcom/nativex/monetization/mraid/MRAIDContainer;

    if-eqz v1, :cond_0

    move v1, v3

    .line 79
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 74
    goto :goto_0

    .line 76
    :cond_1
    iget-object v1, v0, Lcom/nativex/monetization/mraid/MRAIDContainerHolder$MapDataHolder;->shown:Lcom/nativex/monetization/mraid/MRAIDContainer;

    if-eqz v1, :cond_2

    move v1, v3

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move v1, v2

    .line 79
    goto :goto_0
.end method

.method public putContainer(Lcom/nativex/monetization/mraid/MRAIDContainer;Z)V
    .locals 2
    .param p1, "container"    # Lcom/nativex/monetization/mraid/MRAIDContainer;
    .param p2, "cached"    # Z

    .prologue
    .line 34
    if-eqz p1, :cond_1

    .line 35
    invoke-virtual {p1}, Lcom/nativex/monetization/mraid/MRAIDContainer;->getContainerName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/nativex/monetization/mraid/MRAIDContainerHolder;->getMapDataHolder(Ljava/lang/String;)Lcom/nativex/monetization/mraid/MRAIDContainerHolder$MapDataHolder;

    move-result-object v0

    .line 36
    .local v0, "dataHolder":Lcom/nativex/monetization/mraid/MRAIDContainerHolder$MapDataHolder;
    if-eqz p2, :cond_2

    .line 37
    iget-object v1, v0, Lcom/nativex/monetization/mraid/MRAIDContainerHolder$MapDataHolder;->cached:Lcom/nativex/monetization/mraid/MRAIDContainer;

    if-eqz v1, :cond_0

    .line 38
    iget-object v1, v0, Lcom/nativex/monetization/mraid/MRAIDContainerHolder$MapDataHolder;->cached:Lcom/nativex/monetization/mraid/MRAIDContainer;

    invoke-virtual {v1}, Lcom/nativex/monetization/mraid/MRAIDContainer;->release()V

    .line 40
    :cond_0
    iput-object p1, v0, Lcom/nativex/monetization/mraid/MRAIDContainerHolder$MapDataHolder;->cached:Lcom/nativex/monetization/mraid/MRAIDContainer;

    .line 49
    .end local v0    # "dataHolder":Lcom/nativex/monetization/mraid/MRAIDContainerHolder$MapDataHolder;
    :cond_1
    :goto_0
    return-void

    .line 42
    .restart local v0    # "dataHolder":Lcom/nativex/monetization/mraid/MRAIDContainerHolder$MapDataHolder;
    :cond_2
    iget-object v1, v0, Lcom/nativex/monetization/mraid/MRAIDContainerHolder$MapDataHolder;->shown:Lcom/nativex/monetization/mraid/MRAIDContainer;

    if-eqz v1, :cond_3

    .line 43
    iget-object v1, v0, Lcom/nativex/monetization/mraid/MRAIDContainerHolder$MapDataHolder;->shown:Lcom/nativex/monetization/mraid/MRAIDContainer;

    invoke-virtual {v1}, Lcom/nativex/monetization/mraid/MRAIDContainer;->release()V

    .line 45
    :cond_3
    iput-object p1, v0, Lcom/nativex/monetization/mraid/MRAIDContainerHolder$MapDataHolder;->shown:Lcom/nativex/monetization/mraid/MRAIDContainer;

    goto :goto_0
.end method

.method public release()V
    .locals 3

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/nativex/monetization/mraid/MRAIDContainerHolder;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 154
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/nativex/monetization/mraid/MRAIDContainerHolder$MapDataHolder;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nativex/monetization/mraid/MRAIDContainerHolder$MapDataHolder;

    invoke-direct {p0, v2}, Lcom/nativex/monetization/mraid/MRAIDContainerHolder;->releaseContainers(Lcom/nativex/monetization/mraid/MRAIDContainerHolder$MapDataHolder;)V

    goto :goto_0

    .line 156
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/nativex/monetization/mraid/MRAIDContainerHolder$MapDataHolder;>;"
    :cond_0
    invoke-virtual {p0}, Lcom/nativex/monetization/mraid/MRAIDContainerHolder;->clear()V

    .line 157
    return-void
.end method

.method public releaseContainer(Lcom/nativex/monetization/mraid/MRAIDContainer;)V
    .locals 3
    .param p1, "container"    # Lcom/nativex/monetization/mraid/MRAIDContainer;

    .prologue
    const/4 v2, 0x0

    .line 125
    if-nez p1, :cond_0

    .line 144
    :goto_0
    return-void

    .line 129
    :cond_0
    invoke-virtual {p1}, Lcom/nativex/monetization/mraid/MRAIDContainer;->getContainerName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/nativex/monetization/mraid/MRAIDContainerHolder;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nativex/monetization/mraid/MRAIDContainerHolder$MapDataHolder;

    .line 130
    .local v0, "holder":Lcom/nativex/monetization/mraid/MRAIDContainerHolder$MapDataHolder;
    if-eqz v0, :cond_1

    .line 132
    iget-object v1, v0, Lcom/nativex/monetization/mraid/MRAIDContainerHolder$MapDataHolder;->cached:Lcom/nativex/monetization/mraid/MRAIDContainer;

    if-ne v1, p1, :cond_2

    .line 133
    iput-object v2, v0, Lcom/nativex/monetization/mraid/MRAIDContainerHolder$MapDataHolder;->cached:Lcom/nativex/monetization/mraid/MRAIDContainer;

    .line 143
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/nativex/monetization/mraid/MRAIDContainer;->release()V

    goto :goto_0

    .line 134
    :cond_2
    iget-object v1, v0, Lcom/nativex/monetization/mraid/MRAIDContainerHolder$MapDataHolder;->shown:Lcom/nativex/monetization/mraid/MRAIDContainer;

    if-ne v1, p1, :cond_1

    .line 135
    iput-object v2, v0, Lcom/nativex/monetization/mraid/MRAIDContainerHolder$MapDataHolder;->shown:Lcom/nativex/monetization/mraid/MRAIDContainer;

    goto :goto_1
.end method

.method public releaseContainer(Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "type"    # Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "cached"    # Z

    .prologue
    const/4 v2, 0x0

    .line 111
    invoke-static {p1, p2}, Lcom/nativex/monetization/mraid/MRAIDContainer;->getContainerName(Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/nativex/monetization/mraid/MRAIDContainerHolder;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nativex/monetization/mraid/MRAIDContainerHolder$MapDataHolder;

    .line 112
    .local v0, "holder":Lcom/nativex/monetization/mraid/MRAIDContainerHolder$MapDataHolder;
    if-eqz v0, :cond_0

    .line 113
    if-eqz p3, :cond_1

    iget-object v1, v0, Lcom/nativex/monetization/mraid/MRAIDContainerHolder$MapDataHolder;->cached:Lcom/nativex/monetization/mraid/MRAIDContainer;

    if-eqz v1, :cond_1

    .line 114
    iget-object v1, v0, Lcom/nativex/monetization/mraid/MRAIDContainerHolder$MapDataHolder;->cached:Lcom/nativex/monetization/mraid/MRAIDContainer;

    invoke-virtual {v1}, Lcom/nativex/monetization/mraid/MRAIDContainer;->release()V

    .line 115
    iput-object v2, v0, Lcom/nativex/monetization/mraid/MRAIDContainerHolder$MapDataHolder;->cached:Lcom/nativex/monetization/mraid/MRAIDContainer;

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    iget-object v1, v0, Lcom/nativex/monetization/mraid/MRAIDContainerHolder$MapDataHolder;->shown:Lcom/nativex/monetization/mraid/MRAIDContainer;

    if-eqz v1, :cond_0

    .line 117
    iget-object v1, v0, Lcom/nativex/monetization/mraid/MRAIDContainerHolder$MapDataHolder;->shown:Lcom/nativex/monetization/mraid/MRAIDContainer;

    invoke-virtual {v1}, Lcom/nativex/monetization/mraid/MRAIDContainer;->release()V

    .line 118
    iput-object v2, v0, Lcom/nativex/monetization/mraid/MRAIDContainerHolder$MapDataHolder;->shown:Lcom/nativex/monetization/mraid/MRAIDContainer;

    goto :goto_0
.end method

.method public releaseContainersByName(Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 149
    invoke-static {p1, p2}, Lcom/nativex/monetization/mraid/MRAIDContainer;->getContainerName(Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nativex/monetization/mraid/MRAIDContainerHolder;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nativex/monetization/mraid/MRAIDContainerHolder$MapDataHolder;

    invoke-direct {p0, v0}, Lcom/nativex/monetization/mraid/MRAIDContainerHolder;->releaseContainers(Lcom/nativex/monetization/mraid/MRAIDContainerHolder$MapDataHolder;)V

    .line 150
    return-void
.end method
