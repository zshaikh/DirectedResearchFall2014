.class Lcom/facebook/orca/images/FetchImageTask$DownloadResult;
.super Ljava/lang/Object;
.source "FetchImageTask.java"


# instance fields
.field private final a:Lcom/facebook/orca/images/FetchImageTask$DownloadResultCode;

.field private final b:Landroid/graphics/Bitmap;


# direct methods
.method private constructor <init>(Lcom/facebook/orca/images/FetchImageTask$DownloadResultCode;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    iput-object p1, p0, Lcom/facebook/orca/images/FetchImageTask$DownloadResult;->a:Lcom/facebook/orca/images/FetchImageTask$DownloadResultCode;

    .line 191
    iput-object p2, p0, Lcom/facebook/orca/images/FetchImageTask$DownloadResult;->b:Landroid/graphics/Bitmap;

    .line 192
    return-void
.end method

.method static a(Landroid/graphics/Bitmap;)Lcom/facebook/orca/images/FetchImageTask$DownloadResult;
    .locals 2

    .prologue
    .line 195
    new-instance v0, Lcom/facebook/orca/images/FetchImageTask$DownloadResult;

    sget-object v1, Lcom/facebook/orca/images/FetchImageTask$DownloadResultCode;->SUCCESS:Lcom/facebook/orca/images/FetchImageTask$DownloadResultCode;

    invoke-direct {v0, v1, p0}, Lcom/facebook/orca/images/FetchImageTask$DownloadResult;-><init>(Lcom/facebook/orca/images/FetchImageTask$DownloadResultCode;Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method static a(Lcom/facebook/orca/images/FetchImageTask$DownloadResultCode;)Lcom/facebook/orca/images/FetchImageTask$DownloadResult;
    .locals 2

    .prologue
    .line 199
    new-instance v0, Lcom/facebook/orca/images/FetchImageTask$DownloadResult;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/orca/images/FetchImageTask$DownloadResult;-><init>(Lcom/facebook/orca/images/FetchImageTask$DownloadResultCode;Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method static synthetic a(Lcom/facebook/orca/images/FetchImageTask$DownloadResult;)Lcom/facebook/orca/images/FetchImageTask$DownloadResultCode;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/facebook/orca/images/FetchImageTask$DownloadResult;->a:Lcom/facebook/orca/images/FetchImageTask$DownloadResultCode;

    return-object v0
.end method

.method static synthetic b(Lcom/facebook/orca/images/FetchImageTask$DownloadResult;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/facebook/orca/images/FetchImageTask$DownloadResult;->b:Landroid/graphics/Bitmap;

    return-object v0
.end method
