.class Lcom/facebook/internal/FileLruCache$CloseCallbackOutputStream;
.super Ljava/io/OutputStream;
.source "FileLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/internal/FileLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CloseCallbackOutputStream"
.end annotation


# instance fields
.field final callback:Lcom/facebook/internal/FileLruCache$StreamCloseCallback;

.field final innerStream:Ljava/io/OutputStream;


# direct methods
.method constructor <init>(Ljava/io/OutputStream;Lcom/facebook/internal/FileLruCache$StreamCloseCallback;)V
    .locals 0
    .param p1, "innerStream"    # Ljava/io/OutputStream;
    .param p2, "callback"    # Lcom/facebook/internal/FileLruCache$StreamCloseCallback;

    .prologue
    .line 441
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 442
    iput-object p1, p0, Lcom/facebook/internal/FileLruCache$CloseCallbackOutputStream;->innerStream:Ljava/io/OutputStream;

    .line 443
    iput-object p2, p0, Lcom/facebook/internal/FileLruCache$CloseCallbackOutputStream;->callback:Lcom/facebook/internal/FileLruCache$StreamCloseCallback;

    .line 444
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 449
    :try_start_0
    iget-object v0, p0, Lcom/facebook/internal/FileLruCache$CloseCallbackOutputStream;->innerStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 451
    iget-object v0, p0, Lcom/facebook/internal/FileLruCache$CloseCallbackOutputStream;->callback:Lcom/facebook/internal/FileLruCache$StreamCloseCallback;

    invoke-interface {v0}, Lcom/facebook/internal/FileLruCache$StreamCloseCallback;->onClose()V

    .line 453
    return-void

    .line 450
    :catchall_0
    move-exception v0

    .line 451
    iget-object v1, p0, Lcom/facebook/internal/FileLruCache$CloseCallbackOutputStream;->callback:Lcom/facebook/internal/FileLruCache$StreamCloseCallback;

    invoke-interface {v1}, Lcom/facebook/internal/FileLruCache$StreamCloseCallback;->onClose()V

    .line 452
    throw v0
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 457
    iget-object v0, p0, Lcom/facebook/internal/FileLruCache$CloseCallbackOutputStream;->innerStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 458
    return-void
.end method

.method public write(I)V
    .locals 1
    .param p1, "oneByte"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 472
    iget-object v0, p0, Lcom/facebook/internal/FileLruCache$CloseCallbackOutputStream;->innerStream:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 473
    return-void
.end method

.method public write([B)V
    .locals 1
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 467
    iget-object v0, p0, Lcom/facebook/internal/FileLruCache$CloseCallbackOutputStream;->innerStream:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 468
    return-void
.end method

.method public write([BII)V
    .locals 1
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 462
    iget-object v0, p0, Lcom/facebook/internal/FileLruCache$CloseCallbackOutputStream;->innerStream:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 463
    return-void
.end method
