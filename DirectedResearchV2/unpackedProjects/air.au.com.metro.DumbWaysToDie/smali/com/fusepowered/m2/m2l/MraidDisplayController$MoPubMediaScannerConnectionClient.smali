.class Lcom/fusepowered/m2/m2l/MraidDisplayController$MoPubMediaScannerConnectionClient;
.super Ljava/lang/Object;
.source "MraidDisplayController.java"

# interfaces
.implements Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/m2/m2l/MraidDisplayController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MoPubMediaScannerConnectionClient"
.end annotation


# instance fields
.field private final mFilename:Ljava/lang/String;

.field private mMediaScannerConnection:Landroid/media/MediaScannerConnection;

.field private final mMimeType:Ljava/lang/String;

.field final synthetic this$0:Lcom/fusepowered/m2/m2l/MraidDisplayController;


# direct methods
.method private constructor <init>(Lcom/fusepowered/m2/m2l/MraidDisplayController;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 840
    iput-object p1, p0, Lcom/fusepowered/m2/m2l/MraidDisplayController$MoPubMediaScannerConnectionClient;->this$0:Lcom/fusepowered/m2/m2l/MraidDisplayController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 841
    iput-object p2, p0, Lcom/fusepowered/m2/m2l/MraidDisplayController$MoPubMediaScannerConnectionClient;->mFilename:Ljava/lang/String;

    .line 842
    iput-object p3, p0, Lcom/fusepowered/m2/m2l/MraidDisplayController$MoPubMediaScannerConnectionClient;->mMimeType:Ljava/lang/String;

    .line 843
    return-void
.end method

.method synthetic constructor <init>(Lcom/fusepowered/m2/m2l/MraidDisplayController;Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/m2/m2l/MraidDisplayController$MoPubMediaScannerConnectionClient;)V
    .locals 0

    .prologue
    .line 840
    invoke-direct {p0, p1, p2, p3}, Lcom/fusepowered/m2/m2l/MraidDisplayController$MoPubMediaScannerConnectionClient;-><init>(Lcom/fusepowered/m2/m2l/MraidDisplayController;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1(Lcom/fusepowered/m2/m2l/MraidDisplayController$MoPubMediaScannerConnectionClient;Landroid/media/MediaScannerConnection;)V
    .locals 0

    .prologue
    .line 845
    invoke-direct {p0, p1}, Lcom/fusepowered/m2/m2l/MraidDisplayController$MoPubMediaScannerConnectionClient;->setMediaScannerConnection(Landroid/media/MediaScannerConnection;)V

    return-void
.end method

.method private setMediaScannerConnection(Landroid/media/MediaScannerConnection;)V
    .locals 0
    .param p1, "connection"    # Landroid/media/MediaScannerConnection;

    .prologue
    .line 846
    iput-object p1, p0, Lcom/fusepowered/m2/m2l/MraidDisplayController$MoPubMediaScannerConnectionClient;->mMediaScannerConnection:Landroid/media/MediaScannerConnection;

    .line 847
    return-void
.end method


# virtual methods
.method public onMediaScannerConnected()V
    .locals 3

    .prologue
    .line 851
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MraidDisplayController$MoPubMediaScannerConnectionClient;->mMediaScannerConnection:Landroid/media/MediaScannerConnection;

    if-eqz v0, :cond_0

    .line 852
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MraidDisplayController$MoPubMediaScannerConnectionClient;->mMediaScannerConnection:Landroid/media/MediaScannerConnection;

    iget-object v1, p0, Lcom/fusepowered/m2/m2l/MraidDisplayController$MoPubMediaScannerConnectionClient;->mFilename:Ljava/lang/String;

    iget-object v2, p0, Lcom/fusepowered/m2/m2l/MraidDisplayController$MoPubMediaScannerConnectionClient;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaScannerConnection;->scanFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 854
    :cond_0
    return-void
.end method

.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 858
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MraidDisplayController$MoPubMediaScannerConnectionClient;->mMediaScannerConnection:Landroid/media/MediaScannerConnection;

    if-eqz v0, :cond_0

    .line 859
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MraidDisplayController$MoPubMediaScannerConnectionClient;->mMediaScannerConnection:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->disconnect()V

    .line 861
    :cond_0
    return-void
.end method
