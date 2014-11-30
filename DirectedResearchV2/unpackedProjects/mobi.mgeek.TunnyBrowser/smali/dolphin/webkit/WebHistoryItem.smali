.class public Ldolphin/webkit/WebHistoryItem;
.super Ljava/lang/Object;
.source "WebHistoryItem.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation build Ldolphin/webkit/annotation/CalledByJNI;
.end annotation

.annotation build Ldolphin/webkit/annotation/KeepAll;
.end annotation


# static fields
.field public static final FORMAT_VERSION:I = 0x1

.field private static sNextId:I


# instance fields
.field private mCustomData:Ljava/lang/Object;

.field private mFavicon:Landroid/graphics/Bitmap;

.field private mFlattenedData:[B

.field private final mId:I

.field private mNativeBridge:I

.field private mPrereadStatus:Ldolphin/webkit/hj;

.field private mTouchIconUrlFromLink:Ljava/lang/String;

.field private mTouchIconUrlServerDefault:Ljava/lang/String;

.field private mTranscodedContent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    sput v0, Ldolphin/webkit/WebHistoryItem;->sNextId:I

    return-void
.end method

.method private constructor <init>(I)V
    .locals 3
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    sget-object v0, Ldolphin/webkit/hj;->a:Ldolphin/webkit/hj;

    iput-object v0, p0, Ldolphin/webkit/WebHistoryItem;->mPrereadStatus:Ldolphin/webkit/hj;

    .line 78
    const-class v1, Ldolphin/webkit/WebHistoryItem;

    monitor-enter v1

    .line 79
    :try_start_0
    sget v0, Ldolphin/webkit/WebHistoryItem;->sNextId:I

    add-int/lit8 v2, v0, 0x1

    sput v2, Ldolphin/webkit/WebHistoryItem;->sNextId:I

    iput v0, p0, Ldolphin/webkit/WebHistoryItem;->mId:I

    .line 80
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    iput p1, p0, Ldolphin/webkit/WebHistoryItem;->mNativeBridge:I

    .line 82
    iget v0, p0, Ldolphin/webkit/WebHistoryItem;->mNativeBridge:I

    invoke-direct {p0, v0}, Ldolphin/webkit/WebHistoryItem;->nativeRef(I)V

    .line 83
    return-void

    .line 80
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private constructor <init>(Ldolphin/webkit/WebHistoryItem;)V
    .locals 1

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    sget-object v0, Ldolphin/webkit/hj;->a:Ldolphin/webkit/hj;

    iput-object v0, p0, Ldolphin/webkit/WebHistoryItem;->mPrereadStatus:Ldolphin/webkit/hj;

    .line 108
    iget-object v0, p1, Ldolphin/webkit/WebHistoryItem;->mFlattenedData:[B

    iput-object v0, p0, Ldolphin/webkit/WebHistoryItem;->mFlattenedData:[B

    .line 109
    iget v0, p1, Ldolphin/webkit/WebHistoryItem;->mId:I

    iput v0, p0, Ldolphin/webkit/WebHistoryItem;->mId:I

    .line 110
    iget-object v0, p1, Ldolphin/webkit/WebHistoryItem;->mFavicon:Landroid/graphics/Bitmap;

    iput-object v0, p0, Ldolphin/webkit/WebHistoryItem;->mFavicon:Landroid/graphics/Bitmap;

    .line 111
    iget-object v0, p1, Ldolphin/webkit/WebHistoryItem;->mTranscodedContent:Ljava/lang/String;

    iput-object v0, p0, Ldolphin/webkit/WebHistoryItem;->mTranscodedContent:Ljava/lang/String;

    .line 112
    iget v0, p1, Ldolphin/webkit/WebHistoryItem;->mNativeBridge:I

    iput v0, p0, Ldolphin/webkit/WebHistoryItem;->mNativeBridge:I

    .line 113
    iget-object v0, p1, Ldolphin/webkit/WebHistoryItem;->mPrereadStatus:Ldolphin/webkit/hj;

    iput-object v0, p0, Ldolphin/webkit/WebHistoryItem;->mPrereadStatus:Ldolphin/webkit/hj;

    .line 114
    iget v0, p0, Ldolphin/webkit/WebHistoryItem;->mNativeBridge:I

    if-eqz v0, :cond_0

    .line 115
    iget v0, p0, Ldolphin/webkit/WebHistoryItem;->mNativeBridge:I

    invoke-direct {p0, v0}, Ldolphin/webkit/WebHistoryItem;->nativeRef(I)V

    .line 117
    :cond_0
    return-void
.end method

.method constructor <init>([B)V
    .locals 3

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    sget-object v0, Ldolphin/webkit/hj;->a:Ldolphin/webkit/hj;

    iput-object v0, p0, Ldolphin/webkit/WebHistoryItem;->mPrereadStatus:Ldolphin/webkit/hj;

    .line 97
    iput-object p1, p0, Ldolphin/webkit/WebHistoryItem;->mFlattenedData:[B

    .line 98
    const-class v1, Ldolphin/webkit/WebHistoryItem;

    monitor-enter v1

    .line 99
    :try_start_0
    sget v0, Ldolphin/webkit/WebHistoryItem;->sNextId:I

    add-int/lit8 v2, v0, 0x1

    sput v2, Ldolphin/webkit/WebHistoryItem;->sNextId:I

    iput v0, p0, Ldolphin/webkit/WebHistoryItem;->mId:I

    .line 100
    monitor-exit v1

    .line 101
    return-void

    .line 100
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private native inflate(I[B)I
.end method

.method private native nativeGetFavicon(I)Landroid/graphics/Bitmap;
.end method

.method private native nativeGetFlattenedData(I)[B
.end method

.method private native nativeGetOriginalUrl(I)Ljava/lang/String;
.end method

.method private native nativeGetTitle(I)Ljava/lang/String;
.end method

.method private native nativeGetUrl(I)Ljava/lang/String;
.end method

.method private native nativeRef(I)V
.end method

.method private native nativeUnref(I)V
.end method


# virtual methods
.method protected declared-synchronized clone()Ldolphin/webkit/WebHistoryItem;
    .locals 1

    .prologue
    .line 297
    monitor-enter p0

    :try_start_0
    new-instance v0, Ldolphin/webkit/WebHistoryItem;

    invoke-direct {v0, p0}, Ldolphin/webkit/WebHistoryItem;-><init>(Ldolphin/webkit/WebHistoryItem;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0}, Ldolphin/webkit/WebHistoryItem;->clone()Ldolphin/webkit/WebHistoryItem;

    move-result-object v0

    return-object v0
.end method

.method protected finalize()V
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Ldolphin/webkit/WebHistoryItem;->mNativeBridge:I

    if-eqz v0, :cond_0

    .line 87
    iget v0, p0, Ldolphin/webkit/WebHistoryItem;->mNativeBridge:I

    invoke-direct {p0, v0}, Ldolphin/webkit/WebHistoryItem;->nativeUnref(I)V

    .line 88
    const/4 v0, 0x0

    iput v0, p0, Ldolphin/webkit/WebHistoryItem;->mNativeBridge:I

    .line 90
    :cond_0
    return-void
.end method

.method public getCustomData()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Ldolphin/webkit/WebHistoryItem;->mCustomData:Ljava/lang/Object;

    return-object v0
.end method

.method public getFavicon()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Ldolphin/webkit/WebHistoryItem;->mFavicon:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    iget v0, p0, Ldolphin/webkit/WebHistoryItem;->mNativeBridge:I

    if-eqz v0, :cond_0

    .line 188
    iget v0, p0, Ldolphin/webkit/WebHistoryItem;->mNativeBridge:I

    invoke-direct {p0, v0}, Ldolphin/webkit/WebHistoryItem;->nativeGetFavicon(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Ldolphin/webkit/WebHistoryItem;->mFavicon:Landroid/graphics/Bitmap;

    .line 190
    :cond_0
    iget-object v0, p0, Ldolphin/webkit/WebHistoryItem;->mFavicon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method getFlattenedData()[B
    .locals 1

    .prologue
    .line 276
    iget v0, p0, Ldolphin/webkit/WebHistoryItem;->mNativeBridge:I

    if-eqz v0, :cond_0

    .line 277
    iget v0, p0, Ldolphin/webkit/WebHistoryItem;->mNativeBridge:I

    invoke-direct {p0, v0}, Ldolphin/webkit/WebHistoryItem;->nativeGetFlattenedData(I)[B

    move-result-object v0

    .line 279
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ldolphin/webkit/WebHistoryItem;->mFlattenedData:[B

    goto :goto_0
.end method

.method public getId()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 142
    iget v0, p0, Ldolphin/webkit/WebHistoryItem;->mId:I

    return v0
.end method

.method public getNativeBridge()I
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Ldolphin/webkit/WebHistoryItem;->mNativeBridge:I

    return v0
.end method

.method public getOriginalUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    iget v0, p0, Ldolphin/webkit/WebHistoryItem;->mNativeBridge:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 166
    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Ldolphin/webkit/WebHistoryItem;->mNativeBridge:I

    invoke-direct {p0, v0}, Ldolphin/webkit/WebHistoryItem;->nativeGetOriginalUrl(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getPrereadStatus()Ldolphin/webkit/hj;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Ldolphin/webkit/WebHistoryItem;->mPrereadStatus:Ldolphin/webkit/hj;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    iget v0, p0, Ldolphin/webkit/WebHistoryItem;->mNativeBridge:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 177
    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Ldolphin/webkit/WebHistoryItem;->mNativeBridge:I

    invoke-direct {p0, v0}, Ldolphin/webkit/WebHistoryItem;->nativeGetTitle(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getTouchIconUrl()Ljava/lang/String;
    .locals 5

    .prologue
    .line 203
    iget-object v0, p0, Ldolphin/webkit/WebHistoryItem;->mTouchIconUrlFromLink:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Ldolphin/webkit/WebHistoryItem;->mTouchIconUrlFromLink:Ljava/lang/String;

    .line 216
    :goto_0
    return-object v0

    .line 205
    :cond_0
    iget-object v0, p0, Ldolphin/webkit/WebHistoryItem;->mTouchIconUrlServerDefault:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 206
    iget-object v0, p0, Ldolphin/webkit/WebHistoryItem;->mTouchIconUrlServerDefault:Ljava/lang/String;

    goto :goto_0

    .line 210
    :cond_1
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-virtual {p0}, Ldolphin/webkit/WebHistoryItem;->getOriginalUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 211
    new-instance v1, Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/net/URL;->getPort()I

    move-result v0

    const-string v4, "/apple-touch-icon.png"

    invoke-direct {v1, v2, v3, v0, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ldolphin/webkit/WebHistoryItem;->mTouchIconUrlServerDefault:Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    iget-object v0, p0, Ldolphin/webkit/WebHistoryItem;->mTouchIconUrlServerDefault:Ljava/lang/String;

    goto :goto_0

    .line 213
    :catch_0
    move-exception v0

    .line 214
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTranscodeContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Ldolphin/webkit/WebHistoryItem;->mTranscodedContent:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    iget v0, p0, Ldolphin/webkit/WebHistoryItem;->mNativeBridge:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 155
    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Ldolphin/webkit/WebHistoryItem;->mNativeBridge:I

    invoke-direct {p0, v0}, Ldolphin/webkit/WebHistoryItem;->nativeGetUrl(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method inflate(I)V
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Ldolphin/webkit/WebHistoryItem;->mFlattenedData:[B

    invoke-direct {p0, p1, v0}, Ldolphin/webkit/WebHistoryItem;->inflate(I[B)I

    move-result v0

    iput v0, p0, Ldolphin/webkit/WebHistoryItem;->mNativeBridge:I

    .line 289
    const/4 v0, 0x0

    iput-object v0, p0, Ldolphin/webkit/WebHistoryItem;->mFlattenedData:[B

    .line 290
    return-void
.end method

.method public setCustomData(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 246
    iput-object p1, p0, Ldolphin/webkit/WebHistoryItem;->mCustomData:Ljava/lang/Object;

    .line 247
    return-void
.end method

.method setFavicon(Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 256
    iput-object p1, p0, Ldolphin/webkit/WebHistoryItem;->mFavicon:Landroid/graphics/Bitmap;

    .line 257
    return-void
.end method

.method public setPrereadStatus(Ldolphin/webkit/hj;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Ldolphin/webkit/WebHistoryItem;->mPrereadStatus:Ldolphin/webkit/hj;

    .line 130
    return-void
.end method

.method setTouchIconUrl(Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 265
    if-nez p2, :cond_0

    iget-object v0, p0, Ldolphin/webkit/WebHistoryItem;->mTouchIconUrlFromLink:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 266
    :cond_0
    iput-object p1, p0, Ldolphin/webkit/WebHistoryItem;->mTouchIconUrlFromLink:Ljava/lang/String;

    .line 268
    :cond_1
    return-void
.end method

.method public setTranscodeContent(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 228
    iput-object p1, p0, Ldolphin/webkit/WebHistoryItem;->mTranscodedContent:Ljava/lang/String;

    .line 229
    return-void
.end method
