.class Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$StorePictureWorker$5;
.super Ljava/lang/Object;
.source "MRAIDWorkerFactory.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$StorePictureWorker;->setPictureToDialogMainThread(Ljava/lang/String;)V
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
    .line 263
    iput-object p1, p0, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$StorePictureWorker$5;->this$0:Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$StorePictureWorker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 266
    iget-object v1, p0, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$StorePictureWorker$5;->this$0:Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$StorePictureWorker;

    # getter for: Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$StorePictureWorker;->confirmDialog:Lcom/nativex/monetization/dialogs/custom/StorePictureDialog;
    invoke-static {v1}, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$StorePictureWorker;->access$500(Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$StorePictureWorker;)Lcom/nativex/monetization/dialogs/custom/StorePictureDialog;

    move-result-object v1

    const v2, 0x6c7ae

    invoke-virtual {v1, v2}, Lcom/nativex/monetization/dialogs/custom/StorePictureDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 267
    .local v0, "imageView":Landroid/widget/ImageView;
    iget-object v1, p0, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$StorePictureWorker$5;->this$0:Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$StorePictureWorker;

    # getter for: Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$StorePictureWorker;->scaledForDialog:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$StorePictureWorker;->access$600(Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$StorePictureWorker;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 268
    return-void
.end method
