.class Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$StorePictureWorker$4;
.super Ljava/lang/Object;
.source "MRAIDWorkerFactory.java"

# interfaces
.implements Landroid/media/MediaScannerConnection$OnScanCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$StorePictureWorker;->copyFile()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$StorePictureWorker;


# direct methods
.method constructor <init>(Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$StorePictureWorker;)V
    .locals 0

    .prologue
    .line 222
    iput-object p1, p0, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$StorePictureWorker$4;->this$0:Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$StorePictureWorker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 228
    const-string v0, "Image detected in gallery."

    invoke-static {v0}, Lcom/nativex/monetization/mraid/MRAIDLogger;->d(Ljava/lang/String;)V

    .line 229
    return-void
.end method
