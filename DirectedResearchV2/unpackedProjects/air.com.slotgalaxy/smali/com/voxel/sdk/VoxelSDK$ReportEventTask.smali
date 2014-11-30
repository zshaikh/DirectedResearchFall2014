.class Lcom/voxel/sdk/VoxelSDK$ReportEventTask;
.super Landroid/os/AsyncTask;
.source "VoxelSDK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/sdk/VoxelSDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReportEventTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 297
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/voxel/sdk/VoxelSDK$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/voxel/sdk/VoxelSDK$1;

    .prologue
    .line 297
    invoke-direct {p0}, Lcom/voxel/sdk/VoxelSDK$ReportEventTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 297
    check-cast p1, [Ljava/util/Map;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/voxel/sdk/VoxelSDK$ReportEventTask;->doInBackground([Ljava/util/Map;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/util/Map;)Ljava/lang/Void;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .prologue
    .local p1, "args":[Ljava/util/Map;, "[Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v2, 0x0

    .line 301
    array-length v1, p1

    if-nez v1, :cond_0

    move-object v1, v2

    .line 305
    :goto_0
    return-object v1

    .line 303
    :cond_0
    const/4 v1, 0x0

    aget-object v0, p1, v1

    .line 304
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {}, Lcom/voxel/sdk/VoxelSDK;->getApiClient()Lcom/voxel/api/ApiClient;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/voxel/api/ApiClient;->reportEvent(Ljava/util/Map;)V

    move-object v1, v2

    .line 305
    goto :goto_0
.end method
