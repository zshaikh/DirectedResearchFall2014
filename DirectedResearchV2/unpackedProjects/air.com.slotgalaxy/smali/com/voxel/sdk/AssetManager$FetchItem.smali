.class public Lcom/voxel/sdk/AssetManager$FetchItem;
.super Ljava/lang/Object;
.source "AssetManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/sdk/AssetManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FetchItem"
.end annotation


# instance fields
.field private key:Ljava/lang/String;

.field private listener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/voxel/sdk/AssetManager$FetchListener;",
            ">;"
        }
    .end annotation
.end field

.field private path:Ljava/io/File;

.field private reference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private success:Z

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/voxel/sdk/AssetManager$FetchItem;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/voxel/sdk/AssetManager$FetchItem;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/voxel/sdk/AssetManager$FetchItem;->key:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/voxel/sdk/AssetManager$FetchItem;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/voxel/sdk/AssetManager$FetchItem;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/voxel/sdk/AssetManager$FetchItem;->key:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lcom/voxel/sdk/AssetManager$FetchItem;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/voxel/sdk/AssetManager$FetchItem;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/voxel/sdk/AssetManager$FetchItem;->url:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lcom/voxel/sdk/AssetManager$FetchItem;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .locals 0
    .param p0, "x0"    # Lcom/voxel/sdk/AssetManager$FetchItem;
    .param p1, "x1"    # Ljava/lang/ref/WeakReference;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/voxel/sdk/AssetManager$FetchItem;->listener:Ljava/lang/ref/WeakReference;

    return-object p1
.end method

.method static synthetic access$302(Lcom/voxel/sdk/AssetManager$FetchItem;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .locals 0
    .param p0, "x0"    # Lcom/voxel/sdk/AssetManager$FetchItem;
    .param p1, "x1"    # Ljava/lang/ref/WeakReference;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/voxel/sdk/AssetManager$FetchItem;->reference:Ljava/lang/ref/WeakReference;

    return-object p1
.end method

.method static synthetic access$502(Lcom/voxel/sdk/AssetManager$FetchItem;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/voxel/sdk/AssetManager$FetchItem;
    .param p1, "x1"    # Z

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/voxel/sdk/AssetManager$FetchItem;->success:Z

    return p1
.end method

.method static synthetic access$700(Lcom/voxel/sdk/AssetManager$FetchItem;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lcom/voxel/sdk/AssetManager$FetchItem;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/voxel/sdk/AssetManager$FetchItem;->path:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$702(Lcom/voxel/sdk/AssetManager$FetchItem;Ljava/io/File;)Ljava/io/File;
    .locals 0
    .param p0, "x0"    # Lcom/voxel/sdk/AssetManager$FetchItem;
    .param p1, "x1"    # Ljava/io/File;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/voxel/sdk/AssetManager$FetchItem;->path:Ljava/io/File;

    return-object p1
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/voxel/sdk/AssetManager$FetchItem;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getListener()Lcom/voxel/sdk/AssetManager$FetchListener;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/voxel/sdk/AssetManager$FetchItem;->listener:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .end local p0    # "this":Lcom/voxel/sdk/AssetManager$FetchItem;
    :goto_0
    return-object v0

    .restart local p0    # "this":Lcom/voxel/sdk/AssetManager$FetchItem;
    :cond_0
    iget-object v0, p0, Lcom/voxel/sdk/AssetManager$FetchItem;->listener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/voxel/sdk/AssetManager$FetchItem;
    check-cast p0, Lcom/voxel/sdk/AssetManager$FetchListener;

    move-object v0, p0

    goto :goto_0
.end method

.method public getPath()Ljava/io/File;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/voxel/sdk/AssetManager$FetchItem;->path:Ljava/io/File;

    return-object v0
.end method

.method public getReference()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/voxel/sdk/AssetManager$FetchItem;->reference:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    .line 112
    const/4 v0, 0x0

    .line 113
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/voxel/sdk/AssetManager$FetchItem;->reference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/voxel/sdk/AssetManager$FetchItem;->url:Ljava/lang/String;

    return-object v0
.end method

.method public isSuccess()Z
    .locals 1

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/voxel/sdk/AssetManager$FetchItem;->success:Z

    return v0
.end method
