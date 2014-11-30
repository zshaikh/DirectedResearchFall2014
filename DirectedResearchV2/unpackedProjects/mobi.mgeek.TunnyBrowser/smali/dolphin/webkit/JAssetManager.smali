.class Ldolphin/webkit/JAssetManager;
.super Ljava/lang/Object;
.source "JAssetManager.java"


# annotations
.annotation build Ldolphin/webkit/annotation/CalledByJNI;
.end annotation


# instance fields
.field a:Landroid/content/res/AssetManager;

.field private mBuffer:[B
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation
.end field

.field private mDataLength:I
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation
.end field

.field private mNativeClass:I
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 4
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Landroid/content/res/AssetManager;

    invoke-direct {v0}, Landroid/content/res/AssetManager;-><init>()V

    iput-object v0, p0, Ldolphin/webkit/JAssetManager;->a:Landroid/content/res/AssetManager;

    .line 51
    invoke-static {}, Ldolphin/webkit/WebKitResources;->getResourcesPath()Ljava/lang/String;

    move-result-object v0

    .line 52
    iget-object v1, p0, Ldolphin/webkit/JAssetManager;->a:Landroid/content/res/AssetManager;

    invoke-virtual {v1, v0}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    .line 53
    iget-object v1, p0, Ldolphin/webkit/JAssetManager;->a:Landroid/content/res/AssetManager;

    const-string v2, "/system"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    .line 54
    const-string v1, "JAssetManager.java"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "path:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " was added"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Ldolphin/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    return-void
.end method

.method private readAccessBuffer(Ljava/lang/String;)V
    .locals 5
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 61
    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Ldolphin/webkit/JAssetManager;->mDataLength:I

    .line 62
    iget-object v0, p0, Ldolphin/webkit/JAssetManager;->a:Landroid/content/res/AssetManager;

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 63
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v0

    iput v0, p0, Ldolphin/webkit/JAssetManager;->mDataLength:I

    .line 64
    iget v0, p0, Ldolphin/webkit/JAssetManager;->mDataLength:I

    new-array v0, v0, [B

    iput-object v0, p0, Ldolphin/webkit/JAssetManager;->mBuffer:[B

    move v0, v1

    .line 66
    :goto_0
    iget v3, p0, Ldolphin/webkit/JAssetManager;->mDataLength:I

    if-ge v0, v3, :cond_0

    .line 67
    iget-object v3, p0, Ldolphin/webkit/JAssetManager;->mBuffer:[B

    iget v4, p0, Ldolphin/webkit/JAssetManager;->mDataLength:I

    sub-int/2addr v4, v0

    invoke-virtual {v2, v3, v0, v4}, Ljava/io/InputStream;->read([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    add-int/2addr v0, v3

    goto :goto_0

    .line 69
    :catch_0
    move-exception v0

    .line 70
    const-string v0, "JAssetManager.java"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mAssetManager.open("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ");can\'t find file;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Ldolphin/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iput v1, p0, Ldolphin/webkit/JAssetManager;->mDataLength:I

    .line 73
    :cond_0
    return-void
.end method

.method private readAccessRandom(Ljava/lang/String;JI)V
    .locals 3
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    .line 97
    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Ldolphin/webkit/JAssetManager;->mDataLength:I

    .line 98
    iget-object v0, p0, Ldolphin/webkit/JAssetManager;->a:Landroid/content/res/AssetManager;

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 99
    invoke-virtual {v0, p2, p3}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v1

    cmp-long v1, v1, p2

    if-eqz v1, :cond_1

    .line 100
    const-string v0, "JAssetManager.java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is no more "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes to read, but you want to skip "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "bytes ?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldolphin/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    new-array v1, p4, [B

    iput-object v1, p0, Ldolphin/webkit/JAssetManager;->mBuffer:[B

    .line 105
    iget-object v1, p0, Ldolphin/webkit/JAssetManager;->mBuffer:[B

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    iput v0, p0, Ldolphin/webkit/JAssetManager;->mDataLength:I

    .line 106
    iget v0, p0, Ldolphin/webkit/JAssetManager;->mDataLength:I

    if-eq v0, p4, :cond_0

    .line 107
    const-string v0, "JAssetManager.java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is no more "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes to read, but you want to read "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "bytes ?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldolphin/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 111
    :catch_0
    move-exception v0

    .line 112
    const-string v0, "JAssetManager.java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mAssetManager.open("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "); can\'t find file;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldolphin/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private readNonAssetAccessBuffer(Ljava/lang/String;)V
    .locals 5
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 79
    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Ldolphin/webkit/JAssetManager;->mDataLength:I

    .line 80
    iget-object v0, p0, Ldolphin/webkit/JAssetManager;->a:Landroid/content/res/AssetManager;

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->openNonAsset(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 81
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v0

    iput v0, p0, Ldolphin/webkit/JAssetManager;->mDataLength:I

    .line 82
    iget v0, p0, Ldolphin/webkit/JAssetManager;->mDataLength:I

    new-array v0, v0, [B

    iput-object v0, p0, Ldolphin/webkit/JAssetManager;->mBuffer:[B

    move v0, v1

    .line 84
    :goto_0
    iget v3, p0, Ldolphin/webkit/JAssetManager;->mDataLength:I

    if-ge v0, v3, :cond_0

    .line 85
    iget-object v3, p0, Ldolphin/webkit/JAssetManager;->mBuffer:[B

    iget v4, p0, Ldolphin/webkit/JAssetManager;->mDataLength:I

    sub-int/2addr v4, v0

    invoke-virtual {v2, v3, v0, v4}, Ljava/io/InputStream;->read([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    add-int/2addr v0, v3

    goto :goto_0

    .line 87
    :catch_0
    move-exception v0

    .line 88
    iput v1, p0, Ldolphin/webkit/JAssetManager;->mDataLength:I

    .line 89
    const-string v0, "JAssetManager.java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mAssetManager.open("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ");can\'t find file;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldolphin/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :cond_0
    return-void
.end method

.method private readNonAssetAccessRandom(Ljava/lang/String;JI)V
    .locals 3
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    .line 120
    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Ldolphin/webkit/JAssetManager;->mDataLength:I

    .line 121
    iget-object v0, p0, Ldolphin/webkit/JAssetManager;->a:Landroid/content/res/AssetManager;

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->openNonAsset(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 122
    invoke-virtual {v0, p2, p3}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v1

    cmp-long v1, v1, p2

    if-eqz v1, :cond_1

    .line 123
    const-string v0, "JAssetManager.java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is no more "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes to read, but you want to skip "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "bytes ?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldolphin/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    new-array v1, p4, [B

    iput-object v1, p0, Ldolphin/webkit/JAssetManager;->mBuffer:[B

    .line 128
    iget-object v1, p0, Ldolphin/webkit/JAssetManager;->mBuffer:[B

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    iput v0, p0, Ldolphin/webkit/JAssetManager;->mDataLength:I

    .line 129
    iget v0, p0, Ldolphin/webkit/JAssetManager;->mDataLength:I

    if-eq v0, p4, :cond_0

    .line 130
    const-string v0, "JAssetManager.java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is no more "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes to read, but you want to read "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "bytes ?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldolphin/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 134
    :catch_0
    move-exception v0

    .line 135
    const-string v0, "JAssetManager.java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mAssetManager.open("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "); can\'t find file;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldolphin/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
