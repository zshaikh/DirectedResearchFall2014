.class Lcom/facebook/NativeAppCallAttachmentStore$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/NativeAppCallAttachmentStore$ProcessAttachment;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/NativeAppCallAttachmentStore$ProcessAttachment",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/NativeAppCallAttachmentStore;


# direct methods
.method constructor <init>(Lcom/facebook/NativeAppCallAttachmentStore;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/NativeAppCallAttachmentStore$1;->this$0:Lcom/facebook/NativeAppCallAttachmentStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processAttachment(Landroid/graphics/Bitmap;Ljava/io/File;)V
    .locals 3

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    :try_start_0
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p1, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception v1

    invoke-static {v0}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    throw v1
.end method

.method public bridge synthetic processAttachment(Ljava/lang/Object;Ljava/io/File;)V
    .locals 0

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/NativeAppCallAttachmentStore$1;->processAttachment(Landroid/graphics/Bitmap;Ljava/io/File;)V

    return-void
.end method
