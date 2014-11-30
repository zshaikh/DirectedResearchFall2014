.class public Lcom/voxel/sdk/AssetManager;
.super Ljava/lang/Object;
.source "AssetManager.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x3
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/voxel/sdk/AssetManager$1;,
        Lcom/voxel/sdk/AssetManager$FetchTask;,
        Lcom/voxel/sdk/AssetManager$FetchItem;,
        Lcom/voxel/sdk/AssetManager$FetchListener;
    }
.end annotation


# static fields
.field private static final ASSET_CACHE_PERIOD:I = 0x5265c00

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCachePath:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/voxel/sdk/AssetManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/voxel/sdk/AssetManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 3
    .param p1, "cachePath"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/voxel/sdk/AssetManager;->mCachePath:Ljava/io/File;

    .line 36
    iget-object v0, p0, Lcom/voxel/sdk/AssetManager;->mCachePath:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/voxel/sdk/AssetManager;->mCachePath:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not create cache path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/voxel/sdk/AssetManager;->mCachePath:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-nez v0, :cond_1

    .line 40
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cache path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not writable"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_1
    return-void
.end method

.method static synthetic access$600()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/voxel/sdk/AssetManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/voxel/sdk/AssetManager;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lcom/voxel/sdk/AssetManager;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/voxel/sdk/AssetManager;->mCachePath:Ljava/io/File;

    return-object v0
.end method


# virtual methods
.method public cleanup(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 77
    invoke-virtual {p0, p1}, Lcom/voxel/sdk/AssetManager;->getCachedFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 78
    .local v0, "target":Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 79
    invoke-virtual {v0}, Ljava/io/File;->deleteOnExit()V

    .line 80
    :cond_0
    return-void
.end method

.method public fetchItem(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 66
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/voxel/sdk/AssetManager;->fetchItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/voxel/sdk/AssetManager$FetchListener;)V

    .line 67
    return-void
.end method

.method public fetchItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/voxel/sdk/AssetManager$FetchListener;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "reference"    # Ljava/lang/Object;
    .param p4, "listener"    # Lcom/voxel/sdk/AssetManager$FetchListener;

    .prologue
    .line 53
    new-instance v0, Lcom/voxel/sdk/AssetManager$FetchItem;

    invoke-direct {v0}, Lcom/voxel/sdk/AssetManager$FetchItem;-><init>()V

    .line 54
    .local v0, "item":Lcom/voxel/sdk/AssetManager$FetchItem;
    # setter for: Lcom/voxel/sdk/AssetManager$FetchItem;->key:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/voxel/sdk/AssetManager$FetchItem;->access$002(Lcom/voxel/sdk/AssetManager$FetchItem;Ljava/lang/String;)Ljava/lang/String;

    .line 55
    # setter for: Lcom/voxel/sdk/AssetManager$FetchItem;->url:Ljava/lang/String;
    invoke-static {v0, p2}, Lcom/voxel/sdk/AssetManager$FetchItem;->access$102(Lcom/voxel/sdk/AssetManager$FetchItem;Ljava/lang/String;)Ljava/lang/String;

    .line 56
    if-eqz p4, :cond_0

    .line 57
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    # setter for: Lcom/voxel/sdk/AssetManager$FetchItem;->listener:Ljava/lang/ref/WeakReference;
    invoke-static {v0, v2}, Lcom/voxel/sdk/AssetManager$FetchItem;->access$202(Lcom/voxel/sdk/AssetManager$FetchItem;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    .line 58
    :cond_0
    if-eqz p3, :cond_1

    .line 59
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    # setter for: Lcom/voxel/sdk/AssetManager$FetchItem;->reference:Ljava/lang/ref/WeakReference;
    invoke-static {v0, v2}, Lcom/voxel/sdk/AssetManager$FetchItem;->access$302(Lcom/voxel/sdk/AssetManager$FetchItem;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    .line 61
    :cond_1
    new-instance v1, Lcom/voxel/sdk/AssetManager$FetchTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/voxel/sdk/AssetManager$FetchTask;-><init>(Lcom/voxel/sdk/AssetManager;Lcom/voxel/sdk/AssetManager$1;)V

    .line 62
    .local v1, "task":Lcom/voxel/sdk/AssetManager$FetchTask;
    const/4 v2, 0x1

    new-array v2, v2, [Lcom/voxel/sdk/AssetManager$FetchItem;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/voxel/sdk/AssetManager$FetchTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 63
    return-void
.end method

.method public fetchStaticAssets()V
    .locals 6

    .prologue
    .line 46
    invoke-static {}, Lcom/voxel/sdk/StaticAsset;->values()[Lcom/voxel/sdk/StaticAsset;

    move-result-object v0

    .local v0, "arr$":[Lcom/voxel/sdk/StaticAsset;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 47
    .local v3, "sa":Lcom/voxel/sdk/StaticAsset;
    invoke-virtual {v3}, Lcom/voxel/sdk/StaticAsset;->getAssetKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/voxel/sdk/StaticAsset;->getRemoteURL()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/voxel/sdk/AssetManager;->fetchItem(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 49
    .end local v3    # "sa":Lcom/voxel/sdk/StaticAsset;
    :cond_0
    return-void
.end method

.method public getCachedFile(Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 70
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/voxel/sdk/AssetManager;->mCachePath:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 71
    .local v0, "target":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 73
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
