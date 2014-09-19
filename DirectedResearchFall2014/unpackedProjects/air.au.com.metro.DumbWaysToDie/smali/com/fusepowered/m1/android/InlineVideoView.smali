.class Lcom/fusepowered/m1/android/InlineVideoView;
.super Landroid/widget/VideoView;
.source "InlineVideoView.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/m1/android/InlineVideoView$MediaController;,
        Lcom/fusepowered/m1/android/InlineVideoView$VideoPreparedListener;,
        Lcom/fusepowered/m1/android/InlineVideoView$VideoCompletionListener;,
        Lcom/fusepowered/m1/android/InlineVideoView$VideoErrorListener;,
        Lcom/fusepowered/m1/android/InlineVideoView$TransparentHandler;,
        Lcom/fusepowered/m1/android/InlineVideoView$TransparentFix;,
        Lcom/fusepowered/m1/android/InlineVideoView$VideoHandler;,
        Lcom/fusepowered/m1/android/InlineVideoView$VideoTouchListener;,
        Lcom/fusepowered/m1/android/InlineVideoView$DownloadRunnable;,
        Lcom/fusepowered/m1/android/InlineVideoView$InlineParams;
    }
.end annotation


# static fields
.field private static final ANCHOR_IN_PNG:Ljava/lang/String; = "iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAABOpJREFUeNrUmmtIY0cUgCfJ3VBXUXxR0dp2Ya0aBSFi6yOtFPGF1d1WavrAXy1YwVcLLaQpttsH+lcbirYq0a3Ptd0WpKi1P1SMaAitJNptalcQIwV/iI+o2ST39kx6I9cY3STcuSYHhjuTzD33fJk5M+fciWh9fR0tLCwgrhwfH6OcnBwkl8ur9vb2DIODg5aIiAjkq1itViQWi1FYWBgiKYmJiQhptdpzX6SlpSGz2fwRwzDHR0dH83V1dYn+KK6oqLjR19enQISluLgYof7+/jMfZmRkIIvFcoc5K783NTU95YvSsrKyFLvd/s/a2pqRNEBJSclZAJlMhra2tjyNP4Vobm5OukxhaWlpysnJyQPceXl5WS8SicgDDAwMuBrp6enY+M+Zy2UFIJ72pqy8vDwFfOcvd0ebzWYoLCwkD9DR0YFSU1Ox8W2Mb7IKEM+4lWBnHRoaSnM6nX97jhhAkQfQ6/XXNjY27jD+iamhoeFZiqLQyMhIOrQfeuljhCklJg4AD7rFBCA0Tf+h0+luQ9V80UgBAEUaQAzrvB7qk/7eDA6alZeXdx+qKRd0wb++hPRKJIZNaru+vv4NqP/Gs25sPEUcIDw8HHV1de2BY1bzDCFmC1kA91rd2dmJIV6D6nRIjQC3ARD7LMQvPOmWCArAQlhbWlqUPEBIrgQAC2xuh42NjUoI5O5BkwmpEXCLRqM5XFlZ+Qaq9qB2Yq9jL5HgHRaW+bzvoSkNZic+9wA2tnmxpqbmB2jGB7sPUB67KzZeAcb/CM24kHBi9z6Ar8PDwy8plcr7PBgvnBND9uSa82D8y2D8TzwZLxgAhRN4yF+zwfhfeX7gdSjXiANgp11cXDyCjOxr1ick7MojYQ2g2Cu3fvpZcnKyOCEhQcL5xd1XK+QLu8QB2GDuTyjvB6IgKSkJZWZmejouLrTBYLAJvoz6KxaLxVVYcbLljOTm5oqioqLwlHJw+jB4+s7NzQX8bIfDQX6jwdLb2/upTCZ7kzWcZouTHSUnZHd2tv2IvdrZ4vC4uuv09va2eXx8XCMIgNVqxXPsOW/fZWdnB6TTZrNp8egJAgByyKey/f19LeTD7+IFSCwQgINH47+rrKx8Z2lpyRkZGSkYwCM+lBwcHHwLxtfB1ME+hN+ohM4IsMa/B8YzPuUDwQSwu7urAePrZ2dnGd73AdJTCGK1n2traxvBeP8ysmAZAQhHXlCpVK/Ex8dfKUCgaSkO8xMKCgpGJycnb3uDCBUnvi6Xy4cA4lZcXFxIAmAJA4iRqamp12NjY0+TsJDaB0CeAIjB6enpmujo6P8PE0NtJ8Y5CEDcnZiYUOJQngpBACzS/Pz8u1lZWfSVr0I7OzufrK6uqgMZCUjG3qauEgDCgy+qqqq+woftsFGJIGf40g+dD+fn51XnzolJCCQtb3meP21ubn7GPcXE89lkMql9POFab21tTYVMDwkCMDMzo+Q+fXR0VI1DYW/5tdFoVD3G+AdtbW2uY62ioiJhAKqrq1/lGo9PNy8S/P8HgPjwEuNvuvueO6knDTA2NvbxZcY/BmKtvb39JrefC6Cnp4c4AMQyT3Z3d5f6cw9+3aPT6T7AlkNEalKr1Tc8+ygUCiSC7B7BMkYUgKZpnIQjqVTqeo3pYxjtGglY65+H+ib40b949Lj/v4iJiUH/CTAAFI2ZNCJ5irUAAAAASUVORK5CYII="

.field private static final ANCHOR_OUT_PNG:Ljava/lang/String; = "iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAABEZJREFUeNrUml9IU1Ecx8+2uwnCrBlaGD2YEKiVla2ypAj8X+l8KYpkLxUFoT0VBT1YUYYP6ktQCGUQgQr+w0o3sgdDEv+AaBH9odicEq4XY25u7vY9dhe3m9N5d+8Z/uDHvRzPn+/nnN/5d6eG5/mNhJCjcAPcD18QngHhPSDxBVE+cfo/aXa7/afL5eKJipaSkkI4QfwzuBZOGwwKQoKS90jTqOvm5uZqrFbrYzUB8vPzFwEMgnhqGtq44LLN4/F8bmxsfEdUNo1GswjgF3peo0SlED9hsVhKbTbbV8LAtELMBhUSP1ZeXn6clXgxwEK0FSHmqfgTvb293whD45QAEMQfh3gHYWxa0eohy2ZmZt4i5o/19PQwFx8CmI9mBLq6umrQ804SI4t6BCoqKh5UVVWZYwVAsBMfhrv56GwKEPtYay8oKFgEyIH/4KO36crKyoOxADDTxnll7AcgDrEG2A2f5JUzCpHLEmAn3MEraxTiCCuAdPj3ZcR4ZEK4MbH3qw2w7FFidna2t6mpiU7M1zLqT8QSu43FMroV/vm/bvd47Dhvm2ge9OQGJL1ZTfc7nc77WVlZOhYhtAX+USLeVlhYaBJnXg0ExN/LyMhgNolT4B9CjeNg9hLiE5YqAAgTsthWEp+ens50Gd0If08b93q9r8KJF0GsR1Z7GPG3WfS8FCCBzgGfz/e6qKgoIZKCWCLXS0dicnKyOjMzk/1Roq+vj+AsfyA7OzthNYUBYYTuF/BALMT/BcDlW3YFubm58Qi5vampqTE5iFIATq/Xy66gv7/fg8eQ3PJ5eXmbdTrduqGhofdut1vOHZwQbFQx6b2GhoZMhN8n+K/h4eHypKSkiMvGxcXRsN9XXV29KSYA9fX1GRD+RbQGeAFxMhIIKr6zs/M0yvjh55gDQPx2ifiQ+QBxKjk5eSXxZwTx1C4xBYB4evL9tsw+6B0ZGVkSwmAwkI6ODip+XpT/MjOAurq6HSucev+OBCAqxBCCeKtEPLUrqgPQxtHzeyIUH7L50dHRs4mJiYt1tLe3W0VhI7arqgMUFxfHSw+LEZpvcHDwZHd39+kw4qnd4NQOnfHxcf/ExMQAdurV3g0MZrP5ufDROdyHZ71WbQCHw+HHjnkRIE9lfrda7qs5p2UxgV0ulxeXo3OAeKJw1TotqyV0enqajsR5hSEMzACoTU1NBXD4oxCNClXJMQUQwolCXMDEfqRAdXrmAAIETyf22NjYQ/Ln5621MwJiCIvFcjEQCAysuREI7dC1tbVVuA/simYEuFiJb2lpuVZaWlqz5iYxvQE2NzcrIZ59CHEYcPT89bKyshql+oMZAGKdtLa23oT4u0r2CRMAk8mkb2truwPxt5SeTpzf71cdIC0tzVhSUpKP1++hARFcu8RzqbSwBzoN1mOCXVFVgGAwSHJycuKMRmM8+fcfSqQg0jQuzN90Qj3O3wIMAN8Np0JgnxtnAAAAAElFTkSuQmCC"

.field static final TIME_TO_UPDATE_SEEK_JS:I = 0x1f4


# instance fields
.field private duration:I

.field inlineParams:Lcom/fusepowered/m1/android/InlineVideoView$InlineParams;

.field mediaController:Lcom/fusepowered/m1/android/InlineVideoView$MediaController;

.field mmLayoutRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/fusepowered/m1/android/MMLayout;",
            ">;"
        }
    .end annotation
.end field

.field transFix:Lcom/fusepowered/m1/android/InlineVideoView$TransparentFix;

.field transparentHandler:Lcom/fusepowered/m1/android/InlineVideoView$TransparentHandler;

.field videoHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/fusepowered/m1/android/MMLayout;)V
    .locals 1
    .parameter "mmLayout"

    .prologue
    .line 45
    invoke-virtual {p1}, Lcom/fusepowered/m1/android/MMLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    .line 554
    new-instance v0, Lcom/fusepowered/m1/android/InlineVideoView$TransparentHandler;

    invoke-direct {v0, p0}, Lcom/fusepowered/m1/android/InlineVideoView$TransparentHandler;-><init>(Lcom/fusepowered/m1/android/InlineVideoView;)V

    iput-object v0, p0, Lcom/fusepowered/m1/android/InlineVideoView;->transparentHandler:Lcom/fusepowered/m1/android/InlineVideoView$TransparentHandler;

    .line 46
    const v0, 0x86c5ad

    invoke-virtual {p0, v0}, Lcom/fusepowered/m1/android/InlineVideoView;->setId(I)V

    .line 47
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/fusepowered/m1/android/InlineVideoView;->setFocusable(Z)V

    .line 48
    invoke-virtual {p1}, Lcom/fusepowered/m1/android/MMLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/fusepowered/m1/android/MMAdImplController;->destroyOtherInlineVideo(Landroid/content/Context;)V

    .line 49
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/fusepowered/m1/android/InlineVideoView;->mmLayoutRef:Ljava/lang/ref/WeakReference;

    .line 50
    return-void
.end method

.method private createOnCompletionListener()Landroid/media/MediaPlayer$OnCompletionListener;
    .locals 1

    .prologue
    .line 694
    new-instance v0, Lcom/fusepowered/m1/android/InlineVideoView$VideoCompletionListener;

    invoke-direct {v0, p0}, Lcom/fusepowered/m1/android/InlineVideoView$VideoCompletionListener;-><init>(Lcom/fusepowered/m1/android/InlineVideoView;)V

    return-object v0
.end method

.method private createOnErrorListener()Landroid/media/MediaPlayer$OnErrorListener;
    .locals 1

    .prologue
    .line 653
    new-instance v0, Lcom/fusepowered/m1/android/InlineVideoView$VideoErrorListener;

    invoke-direct {v0, p0}, Lcom/fusepowered/m1/android/InlineVideoView$VideoErrorListener;-><init>(Lcom/fusepowered/m1/android/InlineVideoView;)V

    return-object v0
.end method

.method private createOnPreparedListener()Landroid/media/MediaPlayer$OnPreparedListener;
    .locals 1

    .prologue
    .line 733
    new-instance v0, Lcom/fusepowered/m1/android/InlineVideoView$VideoPreparedListener;

    invoke-direct {v0, p0}, Lcom/fusepowered/m1/android/InlineVideoView$VideoPreparedListener;-><init>(Lcom/fusepowered/m1/android/InlineVideoView;)V

    return-object v0
.end method

.method private createOnTouchListener()Landroid/view/View$OnTouchListener;
    .locals 1

    .prologue
    .line 369
    new-instance v0, Lcom/fusepowered/m1/android/InlineVideoView$VideoTouchListener;

    invoke-direct {v0, p0}, Lcom/fusepowered/m1/android/InlineVideoView$VideoTouchListener;-><init>(Lcom/fusepowered/m1/android/InlineVideoView;)V

    return-object v0
.end method

.method private createVideoHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 417
    new-instance v0, Lcom/fusepowered/m1/android/InlineVideoView$VideoHandler;

    invoke-direct {v0, p0}, Lcom/fusepowered/m1/android/InlineVideoView$VideoHandler;-><init>(Lcom/fusepowered/m1/android/InlineVideoView;)V

    return-object v0
.end method

.method private downloadCacheVideo()V
    .locals 1

    .prologue
    .line 242
    new-instance v0, Lcom/fusepowered/m1/android/InlineVideoView$DownloadRunnable;

    invoke-direct {v0, p0}, Lcom/fusepowered/m1/android/InlineVideoView$DownloadRunnable;-><init>(Lcom/fusepowered/m1/android/InlineVideoView;)V

    invoke-static {v0}, Lcom/fusepowered/m1/android/Utils$ThreadUtils;->execute(Ljava/lang/Runnable;)V

    .line 243
    return-void
.end method

.method private getVideoUri()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 303
    invoke-direct {p0}, Lcom/fusepowered/m1/android/InlineVideoView;->hasCachedVideo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/m1/android/InlineVideoView;->inlineParams:Lcom/fusepowered/m1/android/InlineVideoView$InlineParams;

    iget-boolean v0, v0, Lcom/fusepowered/m1/android/InlineVideoView$InlineParams;->isPlayingStreaming:Z

    if-nez v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/fusepowered/m1/android/InlineVideoView;->inlineParams:Lcom/fusepowered/m1/android/InlineVideoView$InlineParams;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/fusepowered/m1/android/InlineVideoView$InlineParams;->isPlayingStreaming:Z

    .line 306
    invoke-virtual {p0}, Lcom/fusepowered/m1/android/InlineVideoView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/m1/android/InlineVideoView;->inlineParams:Lcom/fusepowered/m1/android/InlineVideoView$InlineParams;

    iget-object v1, v1, Lcom/fusepowered/m1/android/InlineVideoView$InlineParams;->cachedVideoID:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/fusepowered/m1/android/VideoAd;->getVideoUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 313
    :goto_0
    return-object v0

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/fusepowered/m1/android/InlineVideoView;->inlineParams:Lcom/fusepowered/m1/android/InlineVideoView$InlineParams;

    iget-object v0, v0, Lcom/fusepowered/m1/android/InlineVideoView$InlineParams;->streamVideoURI:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 310
    iget-object v0, p0, Lcom/fusepowered/m1/android/InlineVideoView;->inlineParams:Lcom/fusepowered/m1/android/InlineVideoView$InlineParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/fusepowered/m1/android/InlineVideoView$InlineParams;->isPlayingStreaming:Z

    .line 311
    iget-object v0, p0, Lcom/fusepowered/m1/android/InlineVideoView;->inlineParams:Lcom/fusepowered/m1/android/InlineVideoView$InlineParams;

    iget-object v0, v0, Lcom/fusepowered/m1/android/InlineVideoView$InlineParams;->streamVideoURI:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 313
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasCachedVideo()Z
    .locals 2

    .prologue
    .line 184
    iget-object v0, p0, Lcom/fusepowered/m1/android/InlineVideoView;->inlineParams:Lcom/fusepowered/m1/android/InlineVideoView$InlineParams;

    iget-object v0, v0, Lcom/fusepowered/m1/android/InlineVideoView$InlineParams;->cachedVideoID:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/fusepowered/m1/android/InlineVideoView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/m1/android/InlineVideoView;->inlineParams:Lcom/fusepowered/m1/android/InlineVideoView$InlineParams;

    iget-object v1, v1, Lcom/fusepowered/m1/android/InlineVideoView$InlineParams;->cachedVideoID:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/fusepowered/m1/android/VideoAd;->hasVideoFile(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initInternalInlineVideo()V
    .locals 4

    .prologue
    const/4 v2, 0x2

    .line 272
    invoke-direct {p0}, Lcom/fusepowered/m1/android/InlineVideoView;->createVideoHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/m1/android/InlineVideoView;->videoHandler:Landroid/os/Handler;

    .line 273
    invoke-direct {p0}, Lcom/fusepowered/m1/android/InlineVideoView;->getVideoUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fusepowered/m1/android/InlineVideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 274
    const/high16 v0, -0x100

    invoke-virtual {p0, v0}, Lcom/fusepowered/m1/android/InlineVideoView;->setBackgroundColor(I)V

    .line 275
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/fusepowered/m1/android/InlineVideoView;->setClickable(Z)V

    .line 276
    invoke-direct {p0}, Lcom/fusepowered/m1/android/InlineVideoView;->createOnErrorListener()Landroid/media/MediaPlayer$OnErrorListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fusepowered/m1/android/InlineVideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 277
    invoke-direct {p0}, Lcom/fusepowered/m1/android/InlineVideoView;->createOnCompletionListener()Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fusepowered/m1/android/InlineVideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 278
    invoke-direct {p0}, Lcom/fusepowered/m1/android/InlineVideoView;->createOnPreparedListener()Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fusepowered/m1/android/InlineVideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 279
    invoke-direct {p0}, Lcom/fusepowered/m1/android/InlineVideoView;->createOnTouchListener()Landroid/view/View$OnTouchListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fusepowered/m1/android/InlineVideoView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 282
    iget-object v0, p0, Lcom/fusepowered/m1/android/InlineVideoView;->inlineParams:Lcom/fusepowered/m1/android/InlineVideoView$InlineParams;

    iget-boolean v0, v0, Lcom/fusepowered/m1/android/InlineVideoView$InlineParams;->autoPlay:Z

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/fusepowered/m1/android/InlineVideoView;->inlineParams:Lcom/fusepowered/m1/android/InlineVideoView$InlineParams;

    iget v0, v0, Lcom/fusepowered/m1/android/InlineVideoView$InlineParams;->currentPosition:I

    invoke-virtual {p0, v0}, Lcom/fusepowered/m1/android/InlineVideoView;->seekTo(I)V

    .line 285
    invoke-virtual {p0}, Lcom/fusepowered/m1/android/InlineVideoView;->startInternal()V

    .line 287
    iget-object v0, p0, Lcom/fusepowered/m1/android/InlineVideoView;->videoHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/m1/android/InlineVideoView;->videoHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/fusepowered/m1/android/InlineVideoView;->videoHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/fusepowered/m1/android/InlineVideoView;->videoHandler:Landroid/os/Handler;

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 292
    :cond_0
    iget-object v0, p0, Lcom/fusepowered/m1/android/InlineVideoView;->inlineParams:Lcom/fusepowered/m1/android/InlineVideoView$InlineParams;

    iget-boolean v0, v0, Lcom/fusepowered/m1/android/InlineVideoView$InlineParams;->showControls:Z

    if-eqz v0, :cond_1

    .line 294
    new-instance v0, Lcom/fusepowered/m1/android/InlineVideoView$MediaController;

    invoke-direct {v0, p0}, Lcom/fusepowered/m1/android/InlineVideoView$MediaController;-><init>(Lcom/fusepowered/m1/android/InlineVideoView;)V

    iput-object v0, p0, Lcom/fusepowered/m1/android/InlineVideoView;->mediaController:Lcom/fusepowered/m1/android/InlineVideoView$MediaController;

    .line 295
    iget-object v0, p0, Lcom/fusepowered/m1/android/InlineVideoView;->mediaController:Lcom/fusepowered/m1/android/InlineVideoView$MediaController;

    invoke-virtual {p0, v0}, Lcom/fusepowered/m1/android/InlineVideoView;->setMediaController(Landroid/widget/MediaController;)V

    .line 296
    iget-object v0, p0, Lcom/fusepowered/m1/android/InlineVideoView;->mediaController:Lcom/fusepowered/m1/android/InlineVideoView$MediaController;

    invoke-virtual {v0}, Lcom/fusepowered/m1/android/InlineVideoView$MediaController;->show()V

    .line 298
    :cond_1
    const-string v0, "Finished inserting inlineVideo player"

    invoke-static {v0}, Lcom/fusepowered/m1/android/MMSDK$Log;->e(Ljava/lang/String;)V

    .line 299
    return-void
.end method

.method private makeTransparent()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 605
    iget-object v0, p0, Lcom/fusepowered/m1/android/InlineVideoView;->transparentHandler:Lcom/fusepowered/m1/android/InlineVideoView$TransparentHandler;

    invoke-virtual {v0, v1}, Lcom/fusepowered/m1/android/InlineVideoView$TransparentHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 607
    iget-object v0, p0, Lcom/fusepowered/m1/android/InlineVideoView;->transparentHandler:Lcom/fusepowered/m1/android/InlineVideoView$TransparentHandler;

    invoke-virtual {v0, v1}, Lcom/fusepowered/m1/android/InlineVideoView$TransparentHandler;->sendEmptyMessage(I)Z

    .line 609
    :cond_0
    return-void
.end method

.method private removeFromParent()V
    .locals 1

    .prologue
    .line 504
    invoke-virtual {p0}, Lcom/fusepowered/m1/android/InlineVideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 505
    .local v0, currentParent:Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 506
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 507
    :cond_0
    return-void
.end method

.method private removeKeyboardFocusViewJira1642()V
    .locals 3

    .prologue
    .line 794
    invoke-virtual {p0}, Lcom/fusepowered/m1/android/InlineVideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 795
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Lcom/fusepowered/m1/android/InlineVideoView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 797
    invoke-virtual {p0}, Lcom/fusepowered/m1/android/InlineVideoView;->requestFocus()Z

    .line 798
    return-void
.end method

.method private resumeInternal(Z)V
    .locals 4
    .parameter "wasPlaying"

    .prologue
    const/4 v2, 0x2

    .line 352
    iget-object v0, p0, Lcom/fusepowered/m1/android/InlineVideoView;->inlineParams:Lcom/fusepowered/m1/android/InlineVideoView$InlineParams;

    iget-boolean v0, v0, Lcom/fusepowered/m1/android/InlineVideoView$InlineParams;->isCompleted:Z

    if-nez v0, :cond_1

    .line 354
    iget-object v0, p0, Lcom/fusepowered/m1/android/InlineVideoView;->inlineParams:Lcom/fusepowered/m1/android/InlineVideoView$InlineParams;

    iget v0, v0, Lcom/fusepowered/m1/android/InlineVideoView$InlineParams;->currentPosition:I

    invoke-virtual {p0, v0}, Lcom/fusepowered/m1/android/InlineVideoView;->seekTo(I)V

    .line 355
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/fusepowered/m1/android/InlineVideoView;->inlineParams:Lcom/fusepowered/m1/android/InlineVideoView$InlineParams;

    iget-boolean v0, v0, Lcom/fusepowered/m1/android/InlineVideoView$InlineParams;->autoPlay:Z

    if-eqz v0, :cond_1

    .line 357
    :cond_0
    invoke-virtual {p0}, Lcom/fusepowered/m1/android/InlineVideoView;->startInternal()V

    .line 359
    iget-object v0, p0, Lcom/fusepowered/m1/android/InlineVideoView;->videoHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fusepowered/m1/android/InlineVideoView;->videoHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 361
    iget-object v0, p0, Lcom/fusepowered/m1/android/InlineVideoView;->videoHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/fusepowered/m1/android/InlineVideoView;->videoHandler:Landroid/os/Handler;

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 365
    :cond_1
    return-void
.end method

.method private setInlineVideoParams(Lcom/fusepowered/m1/android/InlineVideoView$InlineParams;)V
    .locals 0
    .parameter "parameters"

    .prologue
    .line 213
    iput-object p1, p0, Lcom/fusepowered/m1/android/InlineVideoView;->inlineParams:Lcom/fusepowered/m1/android/InlineVideoView$InlineParams;

    .line 214
    return-void
.end method


# virtual methods
.method declared-synchronized adjustVideo(Lcom/fusepowered/m1/android/InlineVideoView$InlineParams;)Z
    .locals 3
    .parameter "params"

    .prologue
    .line 318
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/fusepowered/m1/android/InlineVideoView;->setAdjustVideoParams(Lcom/fusepowered/m1/android/InlineVideoView$InlineParams;)V

    .line 320
    const-string v2, "Called initInlineVideo inside reposition section code"

    invoke-static {v2}, Lcom/fusepowered/m1/android/MMSDK$Log;->e(Ljava/lang/String;)V

    .line 322
    invoke-virtual {p0}, Lcom/fusepowered/m1/android/InlineVideoView;->isPlaying()Z

    move-result v1

    .line 323
    .local v1, wasPlaying:Z
    invoke-virtual {p0}, Lcom/fusepowered/m1/android/InlineVideoView;->stopPlayback()V

    .line 326
    iget-object v2, p0, Lcom/fusepowered/m1/android/InlineVideoView;->mmLayoutRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/m1/android/MMLayout;

    .line 327
    .local v0, mmLayout:Lcom/fusepowered/m1/android/MMLayout;
    if-eqz v0, :cond_0

    .line 329
    invoke-virtual {v0}, Lcom/fusepowered/m1/android/MMLayout;->addInlineVideo()V

    .line 331
    :cond_0
    invoke-direct {p0, v1}, Lcom/fusepowered/m1/android/InlineVideoView;->resumeInternal(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 333
    const/4 v2, 0x1

    monitor-exit p0

    return v2

    .line 318
    .end local v0           #mmLayout:Lcom/fusepowered/m1/android/MMLayout;
    .end local v1           #wasPlaying:Z
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method downloadVideo()V
    .locals 3

    .prologue
    .line 267
    invoke-virtual {p0}, Lcom/fusepowered/m1/android/InlineVideoView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/m1/android/InlineVideoView;->inlineParams:Lcom/fusepowered/m1/android/InlineVideoView$InlineParams;

    iget-object v1, v1, Lcom/fusepowered/m1/android/InlineVideoView$InlineParams;->cachedVideoURI:Ljava/lang/String;

    iget-object v2, p0, Lcom/fusepowered/m1/android/InlineVideoView;->inlineParams:Lcom/fusepowered/m1/android/InlineVideoView$InlineParams;

    iget-object v2, v2, Lcom/fusepowered/m1/android/InlineVideoView$InlineParams;->cachedVideoID:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/fusepowered/m1/android/VideoAd;->downloadVideoFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 268
    return-void
.end method

.method public getCustomLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;
    .locals 4

    .prologue
    const/4 v2, -0x1

    .line 196
    iget-object v1, p0, Lcom/fusepowered/m1/android/InlineVideoView;->inlineParams:Lcom/fusepowered/m1/android/InlineVideoView$InlineParams;

    iget-boolean v1, v1, Lcom/fusepowered/m1/android/InlineVideoView$InlineParams;->goingFullScreen:Z

    if-eqz v1, :cond_0

    .line 198
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 208
    .local v0, lp:Landroid/widget/RelativeLayout$LayoutParams;
    :goto_0
    return-object v0

    .line 202
    .end local v0           #lp:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/fusepowered/m1/android/InlineVideoView;->inlineParams:Lcom/fusepowered/m1/android/InlineVideoView$InlineParams;

    iget v1, v1, Lcom/fusepowered/m1/android/InlineVideoView$InlineParams;->scaleFactor:F

    iget-object v2, p0, Lcom/fusepowered/m1/android/InlineVideoView;->inlineParams:Lcom/fusepowered/m1/android/InlineVideoView$InlineParams;

    iget v2, v2, Lcom/fusepowered/m1/android/InlineVideoView$InlineParams;->width:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Lcom/fusepowered/m1/android/InlineVideoView;->inlineParams:Lcom/fusepowered/m1/android/InlineVideoView$InlineParams;

    iget v2, v2, Lcom/fusepowered/m1/android/InlineVideoView$InlineParams;->scaleFactor:F

    iget-object v3, p0, Lcom/fusepowered/m1/android/InlineVideoView;->inlineParams:Lcom/fusepowered/m1/android/InlineVideoView$InlineParams;

    iget v3, v3, Lcom/fusepowered/m1/android/InlineVideoView$InlineParams;->height:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 203
    .restart local v0       #lp:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v1, p0, Lcom/fusepowered/m1/android/InlineVideoView;->inlineParams:Lcom/fusepowered/m1/android/InlineVideoView$InlineParams;

    iget v1, v1, Lcom/fusepowered/m1/android/InlineVideoView$InlineParams;->scaleFactor:F

    iget-object v2, p0, Lcom/fusepowered/m1/android/InlineVideoView;->inlineParams:Lcom/fusepowered/m1/android/InlineVideoView$InlineParams;

    iget v2, v2, Lcom/fusepowered/m1/android/InlineVideoView$InlineParams;->y:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 204
    iget-object v1, p0, Lcom/fusepowered/m1/android/InlineVideoView;->inlineParams:Lcom/fusepowered/m1/android/InlineVideoView$InlineParams;

    iget v1, v1, Lcom/fusepowered/m1/android/InlineVideoView$InlineParams;->scaleFactor:F

    iget-object v2, p0, Lcom/fusepowered/m1/android/InlineVideoView;->inlineParams:Lcom/fusepowered/m1/android/InlineVideoView$InlineParams;

    iget v2, v2, Lcom/fusepowered/m1/android/InlineVideoView$InlineParams;->x:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 206
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lp height = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/fusepowered/m1/android/MMSDK$Log;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method getGsonState()Ljava/lang/String;
    .locals 2

    .prologue
    .line 174
    new-instance v0, Lcom/fusepowered/m1/google/gson/Gson;

    invoke-direct {v0}, Lcom/fusepowered/m1/google/gson/Gson;-><init>()V

    iget-object v1, p0, Lcom/fusepowered/m1/android/InlineVideoView;->inlineParams:Lcom/fusepowered/m1/android/InlineVideoView$InlineParams;

    invoke-virtual {v0, v1}, Lcom/fusepowered/m1/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method handleTransparentMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 578
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 601
    .end local p0
    :cond_0
    :goto_0
    return-void

    .line 581
    .restart local p0
    :pswitch_0
    invoke-virtual {p0}, Lcom/fusepowered/m1/android/InlineVideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/fusepowered/m1/android/InlineVideoView;->getCurrentPosition()I

    move-result v0

    if-lez v0, :cond_1

    .line 583
    iget-object v0, p0, Lcom/fusepowered/m1/android/InlineVideoView;->transparentHandler:Lcom/fusepowered/m1/android/InlineVideoView$TransparentHandler;

    const/4 v1, 0x5

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lcom/fusepowered/m1/android/InlineVideoView$TransparentHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 587
    :cond_1
    iget-object v0, p0, Lcom/fusepowered/m1/android/InlineVideoView;->transparentHandler:Lcom/fusepowered/m1/android/InlineVideoView$TransparentHandler;

    const/4 v1, 0x4

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Lcom/fusepowered/m1/android/InlineVideoView$TransparentHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 591
    :pswitch_1
    invoke-virtual {p0}, Lcom/fusepowered/m1/android/InlineVideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/fusepowered/m1/android/InlineVideoView;->getCurrentPosition()I

    move-result v0

    if-lez v0, :cond_0

    .line 593
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/fusepowered/m1/android/InlineVideoView;->setBackgroundColor(I)V

    .line 594
    iget-object v0, p0, Lcom/fusepowered/m1/android/InlineVideoView;->mmLayoutRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/m1/android/InlineVideoView;->mmLayoutRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 596
    iget-object v0, p0, Lcom/fusepowered/m1/android/InlineVideoView;->mmLayoutRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/fusepowered/m1/android/MMLayout;

    invoke-virtual {p0}, Lcom/fusepowered/m1/android/MMLayout;->removeBlackView()V

    goto :goto_0

    .line 578
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method declared-synchronized initInlineVideo(Lcom/fusepowered/m1/android/InlineVideoView$InlineParams;)V
    .locals 1
    .parameter "parameters"

    .prologue
    .line 226
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/fusepowered/m1/android/InlineVideoView;->setInlineVideoParams(Lcom/fusepowered/m1/android/InlineVideoView$InlineParams;)V

    .line 227
    iget-object v0, p0, Lcom/fusepowered/m1/android/InlineVideoView;->inlineParams:Lcom/fusepowered/m1/android/InlineVideoView$InlineParams;

    iget-object v0, v0, Lcom/fusepowered/m1/android/InlineVideoView$InlineParams;->cachedVideoURI:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 228
    invoke-direct {p0}, Lcom/fusepowered/m1/android/InlineVideoView;->downloadCacheVideo()V

    .line 230
    :cond_0
    invoke-virtual {p0}, Lcom/fusepowered/m1/android/InlineVideoView;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 232
    invoke-direct {p0}, Lcom/fusepowered/m1/android/InlineVideoView;->initInternalInlineVideo()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 238
    :goto_0
    monitor-exit p0

    return-void

    .line 236
    :cond_1
    :try_start_1
    const-string v0, "The videoURI attribute was not specified on the video marker div."

    invoke-static {v0}, Lcom/fusepowered/m1/android/MMSDK$Log;->e(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 226
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method isPlayingStreaming()Z
    .locals 1

    .prologue
    .line 909
    iget-object v0, p0, Lcom/fusepowered/m1/android/InlineVideoView;->inlineParams:Lcom/fusepowered/m1/android/InlineVideoView$InlineParams;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/m1/android/InlineVideoView;->inlineParams:Lcom/fusepowered/m1/android/InlineVideoView$InlineParams;

    iget-boolean v0, v0, Lcom/fusepowered/m1/android/InlineVideoView$InlineParams;->isPlayingStreaming:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isValid()Z
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/fusepowered/m1/android/InlineVideoView;->inlineParams:Lcom/fusepowered/m1/android/InlineVideoView$InlineParams;

    iget-object v0, v0, Lcom/fusepowered/m1/android/InlineVideoView$InlineParams;->streamVideoURI:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/fusepowered/m1/android/InlineVideoView;->hasCachedVideo()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .parameter "mp"

    .prologue
    const/4 v1, 0x2

    .line 720
    iget-object v0, p0, Lcom/fusepowered/m1/android/InlineVideoView;->videoHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/m1/android/InlineVideoView;->videoHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 722
    iget-object v0, p0, Lcom/fusepowered/m1/android/InlineVideoView;->videoHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 724
    :cond_0
    iget-object v0, p0, Lcom/fusepowered/m1/android/InlineVideoView;->inlineParams:Lcom/fusepowered/m1/android/InlineVideoView$InlineParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/fusepowered/m1/android/InlineVideoView$InlineParams;->isCompleted:Z

    .line 725
    iget-object v0, p0, Lcom/fusepowered/m1/android/InlineVideoView;->inlineParams:Lcom/fusepowered/m1/android/InlineVideoView$InlineParams;

    iget v1, p0, Lcom/fusepowered/m1/android/InlineVideoView;->duration:I

    iput v1, v0, Lcom/fusepowered/m1/android/InlineVideoView$InlineParams;->currentPosition:I

    .line 726
    iget-object v0, p0, Lcom/fusepowered/m1/android/InlineVideoView;->inlineParams:Lcom/fusepowered/m1/android/InlineVideoView$InlineParams;

    iget v0, v0, Lcom/fusepowered/m1/android/InlineVideoView$InlineParams;->currentPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 727
    iget-object v0, p0, Lcom/fusepowered/m1/android/InlineVideoView;->inlineParams:Lcom/fusepowered/m1/android/InlineVideoView$InlineParams;

    const/4 v1, 0x0

    iput v1, v0, Lcom/fusepowered/m1/android/InlineVideoView$InlineParams;->currentPosition:I

    .line 728
    :cond_1
    invoke-virtual {p0}, Lcom/fusepowered/m1/android/InlineVideoView;->updateVideoSeekTimeFinal()V

    .line 729
    return-void
.end method

.method onError(Landroid/media/MediaPlayer;II)Z
    .locals 7
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x2

    .line 679
    iget-object v1, p0, Lcom/fusepowered/m1/android/InlineVideoView;->videoHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/fusepowered/m1/android/InlineVideoView;->videoHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 680
    iget-object v1, p0, Lcom/fusepowered/m1/android/InlineVideoView;->videoHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 682
    :cond_0
    iget-object v1, p0, Lcom/fusepowered/m1/android/InlineVideoView;->mmLayoutRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/m1/android/MMLayout;

    .line 683
    .local v0, mmLayout:Lcom/fusepowered/m1/android/MMLayout;
    if-nez v0, :cond_1

    .line 685
    const-string v1, "MMLayout weak reference broken"

    invoke-static {v1}, Lcom/fusepowered/m1/android/MMSDK$Log;->w(Ljava/lang/String;)V

    move v1, v5

    .line 689
    :goto_0
    return v1

    .line 688
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:MMJS.setError("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Error while playing, %d - %d"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fusepowered/m1/android/MMLayout;->loadUrl(Ljava/lang/String;)V

    move v1, v6

    .line 689
    goto :goto_0
.end method

.method onMediaControllerClick(Landroid/view/View;)V
    .locals 7
    .parameter "arg0"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 914
    iget-object v3, p0, Lcom/fusepowered/m1/android/InlineVideoView;->mmLayoutRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fusepowered/m1/android/MMLayout;

    .line 915
    .local v1, mmLayout:Lcom/fusepowered/m1/android/MMLayout;
    if-eqz v1, :cond_1

    .line 917
    const/high16 v3, -0x100

    invoke-virtual {p0, v3}, Lcom/fusepowered/m1/android/InlineVideoView;->setBackgroundColor(I)V

    .line 919
    invoke-virtual {p0}, Lcom/fusepowered/m1/android/InlineVideoView;->isPlaying()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 921
    iget-object v3, p0, Lcom/fusepowered/m1/android/InlineVideoView;->inlineParams:Lcom/fusepowered/m1/android/InlineVideoView$InlineParams;

    invoke-virtual {p0}, Lcom/fusepowered/m1/android/InlineVideoView;->getCurrentPosition()I

    move-result v4

    iput v4, v3, Lcom/fusepowered/m1/android/InlineVideoView$InlineParams;->currentPosition:I

    .line 924
    :cond_0
    iget-object v3, p0, Lcom/fusepowered/m1/android/InlineVideoView;->inlineParams:Lcom/fusepowered/m1/android/InlineVideoView$InlineParams;

    iget-boolean v3, v3, Lcom/fusepowered/m1/android/InlineVideoView$InlineParams;->goingFullScreen:Z

    if-eqz v3, :cond_3

    .line 926
    iget-object v3, p0, Lcom/fusepowered/m1/android/InlineVideoView;->inlineParams:Lcom/fusepowered/m1/android/InlineVideoView$InlineParams;

    iput-boolean v6, v3, Lcom/fusepowered/m1/android/InlineVideoView$InlineParams;->goingFullScreen:Z

    .line 927
    iget-object v3, p0, Lcom/fusepowered/m1/android/InlineVideoView;->inlineParams:Lcom/fusepowered/m1/android/InlineVideoView$InlineParams;

    iget v3, v3, Lcom/fusepowered/m1/android/InlineVideoView$InlineParams;->originalOrientation:I

    if-ne v3, v5, :cond_2

    .line 929
    invoke-virtual {p0}, Lcom/fusepowered/m1/android/InlineVideoView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 930
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_1

    .line 932
    invoke-virtual {v0, v5}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 964
    .end local v0           #activity:Landroid/app/Activity;
    :cond_1
    :goto_0
    return-void

    .line 937
    :cond_2
    invoke-virtual {p0}, Lcom/fusepowered/m1/android/InlineVideoView;->isPlaying()Z

    move-result v2

    .line 938
    .local v2, wasPlaying:Z
    invoke-virtual {p0}, Lcom/fusepowered/m1/android/InlineVideoView;->stopPlayback()V

    .line 939
    invoke-virtual {v1}, Lcom/fusepowered/m1/android/MMLayout;->repositionVideoLayout()V

    .line 940
    invoke-direct {p0, v2}, Lcom/fusepowered/m1/android/InlineVideoView;->resumeInternal(Z)V

    goto :goto_0

    .line 945
    .end local v2           #wasPlaying:Z
    :cond_3
    iget-object v3, p0, Lcom/fusepowered/m1/android/InlineVideoView;->inlineParams:Lcom/fusepowered/m1/android/InlineVideoView$InlineParams;

    invoke-virtual {p0}, Lcom/fusepowered/m1/android/InlineVideoView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    iput v4, v3, Lcom/fusepowered/m1/android/InlineVideoView$InlineParams;->originalOrientation:I

    .line 946
    iget-object v3, p0, Lcom/fusepowered/m1/android/InlineVideoView;->inlineParams:Lcom/fusepowered/m1/android/InlineVideoView$InlineParams;

    iput-boolean v5, v3, Lcom/fusepowered/m1/android/InlineVideoView$InlineParams;->goingFullScreen:Z

    .line 947
    iget-object v3, p0, Lcom/fusepowered/m1/android/InlineVideoView;->inlineParams:Lcom/fusepowered/m1/android/InlineVideoView$InlineParams;

    iget v3, v3, Lcom/fusepowered/m1/android/InlineVideoView$InlineParams;->originalOrientation:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_4

    .line 949
    invoke-virtual {p0}, Lcom/fusepowered/m1/android/InlineVideoView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 950
    .restart local v0       #activity:Landroid/app/Activity;
    if-eqz v0, :cond_1

    .line 952
    invoke-virtual {v0, v6}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 957
    .end local v0           #activity:Landroid/app/Activity;
    :cond_4
    invoke-virtual {p0}, Lcom/fusepowered/m1/android/InlineVideoView;->isPlaying()Z

    move-result v2

    .line 958
    .restart local v2       #wasPlaying:Z
    invoke-virtual {p0}, Lcom/fusepowered/m1/android/InlineVideoView;->stopPlayback()V

    .line 959
    invoke-virtual {v1}, Lcom/fusepowered/m1/android/MMLayout;->fullScreenVideoLayout()V

    .line 960
    invoke-direct {p0, v2}, Lcom/fusepowered/m1/android/InlineVideoView;->resumeInternal(Z)V

    goto :goto_0
.end method

.method onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2
    .parameter "mp"

    .prologue
    .line 763
    iget-object v0, p0, Lcom/fusepowered/m1/android/InlineVideoView;->inlineParams:Lcom/fusepowered/m1/android/InlineVideoView$InlineParams;

    iget-boolean v0, v0, Lcom/fusepowered/m1/android/InlineVideoView$InlineParams;->autoPlay:Z

    if-eqz v0, :cond_0

    .line 765
    invoke-direct {p0}, Lcom/fusepowered/m1/android/InlineVideoView;->makeTransparent()V

    .line 767
    :cond_0
    iget-object v0, p0, Lcom/fusepowered/m1/android/InlineVideoView;->inlineParams:Lcom/fusepowered/m1/android/InlineVideoView$InlineParams;

    iget v0, v0, Lcom/fusepowered/m1/android/InlineVideoView$InlineParams;->currentPosition:I

    invoke-virtual {p0, v0}, Lcom/fusepowered/m1/android/InlineVideoView;->seekTo(I)V

    .line 768
    iget-object v0, p0, Lcom/fusepowered/m1/android/InlineVideoView;->inlineParams:Lcom/fusepowered/m1/android/InlineVideoView$InlineParams;

    iget-boolean v0, v0, Lcom/fusepowered/m1/android/InlineVideoView$InlineParams;->autoPlay:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/fusepowered/m1/android/InlineVideoView;->inlineParams:Lcom/fusepowered/m1/android/InlineVideoView$InlineParams;

    iget-boolean v0, v0, Lcom/fusepowered/m1/android/InlineVideoView$InlineParams;->isInitialPlayBack:Z

    if-nez v0, :cond_2

    .line 770
    :cond_1
    invoke-virtual {p0}, Lcom/fusepowered/m1/android/InlineVideoView;->getHeight()I

    .line 776
    :goto_0
    invoke-virtual {p0}, Lcom/fusepowered/m1/android/InlineVideoView;->getDuration()I

    move-result v0

    iput v0, p0, Lcom/fusepowered/m1/android/InlineVideoView;->duration:I

    .line 777
    return-void

    .line 774
    :cond_2
    iget-object v0, p0, Lcom/fusepowered/m1/android/InlineVideoView;->inlineParams:Lcom/fusepowered/m1/android/InlineVideoView$InlineParams;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/fusepowered/m1/android/InlineVideoView$InlineParams;->isInitialPlayBack:Z

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .parameter "state"

    .prologue
    .line 159
    instance-of v2, p1, Lcom/fusepowered/m1/android/AdViewOverlayView$SavedState;

    if-nez v2, :cond_0

    .line 161
    invoke-super {p0, p1}, Landroid/widget/VideoView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 170
    :goto_0
    return-void

    .line 165
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/fusepowered/m1/android/AdViewOverlayView$SavedState;

    move-object v1, v0

    .line 166
    .local v1, ss:Lcom/fusepowered/m1/android/AdViewOverlayView$SavedState;
    invoke-virtual {v1}, Lcom/fusepowered/m1/android/AdViewOverlayView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-super {p0, v2}, Landroid/widget/VideoView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 169
    iget-object v2, p0, Lcom/fusepowered/m1/android/InlineVideoView;->inlineParams:Lcom/fusepowered/m1/android/InlineVideoView$InlineParams;

    iget-object v3, v1, Lcom/fusepowered/m1/android/AdViewOverlayView$SavedState;->gson:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/fusepowered/m1/android/InlineVideoView$InlineParams;->inflateFromGson(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .prologue
    .line 147
    invoke-super {p0}, Landroid/widget/VideoView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 148
    .local v1, superState:Landroid/os/Parcelable;
    new-instance v0, Lcom/fusepowered/m1/android/AdViewOverlayView$SavedState;

    invoke-direct {v0, v1}, Lcom/fusepowered/m1/android/AdViewOverlayView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 149
    .local v0, ss:Lcom/fusepowered/m1/android/AdViewOverlayView$SavedState;
    invoke-virtual {p0}, Lcom/fusepowered/m1/android/InlineVideoView;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 150
    iget-object v2, p0, Lcom/fusepowered/m1/android/InlineVideoView;->inlineParams:Lcom/fusepowered/m1/android/InlineVideoView$InlineParams;

    invoke-virtual {p0}, Lcom/fusepowered/m1/android/InlineVideoView;->getCurrentPosition()I

    move-result v3

    iput v3, v2, Lcom/fusepowered/m1/android/InlineVideoView$InlineParams;->currentPosition:I

    .line 151
    :cond_0
    invoke-virtual {p0}, Lcom/fusepowered/m1/android/InlineVideoView;->getGsonState()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/fusepowered/m1/android/AdViewOverlayView$SavedState;->gson:Ljava/lang/String;

    .line 152
    return-object v0
.end method

.method onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 395
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v4, :cond_2

    .line 397
    iget-object v1, p0, Lcom/fusepowered/m1/android/InlineVideoView;->mmLayoutRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/m1/android/MMLayout;

    .line 398
    .local v0, mmLayout:Lcom/fusepowered/m1/android/MMLayout;
    if-nez v0, :cond_0

    .line 400
    const-string v1, "MMLayout weak reference broken"

    invoke-static {v1}, Lcom/fusepowered/m1/android/MMSDK$Log;->w(Ljava/lang/String;)V

    move v1, v5

    .line 412
    .end local v0           #mmLayout:Lcom/fusepowered/m1/android/MMLayout;
    :goto_0
    return v1

    .line 403
    .restart local v0       #mmLayout:Lcom/fusepowered/m1/android/MMLayout;
    :cond_0
    iget-object v1, p0, Lcom/fusepowered/m1/android/InlineVideoView;->inlineParams:Lcom/fusepowered/m1/android/InlineVideoView$InlineParams;

    iget-object v1, v1, Lcom/fusepowered/m1/android/InlineVideoView$InlineParams;->touchCallBack:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 404
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fusepowered/m1/android/InlineVideoView;->inlineParams:Lcom/fusepowered/m1/android/InlineVideoView$InlineParams;

    iget-object v2, v2, Lcom/fusepowered/m1/android/InlineVideoView$InlineParams;->touchCallBack:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "(%f,%f)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fusepowered/m1/android/MMLayout;->loadUrl(Ljava/lang/String;)V

    .line 406
    :cond_1
    iget-object v1, p0, Lcom/fusepowered/m1/android/InlineVideoView;->inlineParams:Lcom/fusepowered/m1/android/InlineVideoView$InlineParams;

    iget-boolean v1, v1, Lcom/fusepowered/m1/android/InlineVideoView$InlineParams;->showControls:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/fusepowered/m1/android/InlineVideoView;->mediaController:Lcom/fusepowered/m1/android/InlineVideoView$MediaController;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/fusepowered/m1/android/InlineVideoView;->mediaController:Lcom/fusepowered/m1/android/InlineVideoView$MediaController;

    invoke-virtual {v1}, Lcom/fusepowered/m1/android/InlineVideoView$MediaController;->isShowing()Z

    move-result v1

    if-nez v1, :cond_2

    .line 408
    iget-object v1, p0, Lcom/fusepowered/m1/android/InlineVideoView;->mediaController:Lcom/fusepowered/m1/android/InlineVideoView$MediaController;

    invoke-virtual {v1}, Lcom/fusepowered/m1/android/InlineVideoView$MediaController;->show()V

    move v1, v4

    .line 409
    goto :goto_0

    .end local v0           #mmLayout:Lcom/fusepowered/m1/android/MMLayout;
    :cond_2
    move v1, v4

    .line 412
    goto :goto_0
.end method

.method pauseVideo()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 630
    iget-object v0, p0, Lcom/fusepowered/m1/android/InlineVideoView;->videoHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/m1/android/InlineVideoView;->videoHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 631
    iget-object v0, p0, Lcom/fusepowered/m1/android/InlineVideoView;->videoHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 632
    :cond_0
    invoke-virtual {p0}, Lcom/fusepowered/m1/android/InlineVideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 634
    iget-object v0, p0, Lcom/fusepowered/m1/android/InlineVideoView;->inlineParams:Lcom/fusepowered/m1/android/InlineVideoView$InlineParams;

    invoke-virtual {p0}, Lcom/fusepowered/m1/android/InlineVideoView;->getCurrentPosition()I

    move-result v1

    iput v1, v0, Lcom/fusepowered/m1/android/InlineVideoView$InlineParams;->currentPosition:I

    .line 635
    invoke-virtual {p0}, Lcom/fusepowered/m1/android/InlineVideoView;->pause()V

    .line 637
    :cond_1
    return-void
.end method

.method playVideo()V
    .locals 4

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 511
    invoke-virtual {p0}, Lcom/fusepowered/m1/android/InlineVideoView;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_1

    .line 513
    iget-object v0, p0, Lcom/fusepowered/m1/android/InlineVideoView;->inlineParams:Lcom/fusepowered/m1/android/InlineVideoView$InlineParams;

    iget-boolean v0, v0, Lcom/fusepowered/m1/android/InlineVideoView$InlineParams;->isStopped:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/fusepowered/m1/android/InlineVideoView;->getVideoUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 515
    iget-object v0, p0, Lcom/fusepowered/m1/android/InlineVideoView;->inlineParams:Lcom/fusepowered/m1/android/InlineVideoView$InlineParams;

    iput-boolean v1, v0, Lcom/fusepowered/m1/android/InlineVideoView$InlineParams;->isStopped:Z

    .line 516
    invoke-direct {p0}, Lcom/fusepowered/m1/android/InlineVideoView;->getVideoUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fusepowered/m1/android/InlineVideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 517
    invoke-virtual {p0, v1}, Lcom/fusepowered/m1/android/InlineVideoView;->seekTo(I)V

    .line 523
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/fusepowered/m1/android/InlineVideoView;->inlineParams:Lcom/fusepowered/m1/android/InlineVideoView$InlineParams;

    iput-boolean v1, v0, Lcom/fusepowered/m1/android/InlineVideoView$InlineParams;->isCompleted:Z

    .line 524
    invoke-virtual {p0}, Lcom/fusepowered/m1/android/InlineVideoView;->startInternal()V

    .line 526
    :cond_1
    iget-object v0, p0, Lcom/fusepowered/m1/android/InlineVideoView;->videoHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/fusepowered/m1/android/InlineVideoView;->videoHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 528
    iget-object v0, p0, Lcom/fusepowered/m1/android/InlineVideoView;->videoHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/fusepowered/m1/android/InlineVideoView;->videoHandler:Landroid/os/Handler;

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 530
    :cond_2
    return-void

    .line 519
    :cond_3
    iget-object v0, p0, Lcom/fusepowered/m1/android/InlineVideoView;->inlineParams:Lcom/fusepowered/m1/android/InlineVideoView$InlineParams;

    iget-boolean v0, v0, Lcom/fusepowered/m1/android/InlineVideoView$InlineParams;->isCompleted:Z

    if-eqz v0, :cond_0

    .line 521
    invoke-virtual {p0, v1}, Lcom/fusepowered/m1/android/InlineVideoView;->seekTo(I)V

    goto :goto_0
.end method

.method removeVideo()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 487
    iget-object v0, p0, Lcom/fusepowered/m1/android/InlineVideoView;->videoHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/m1/android/InlineVideoView;->videoHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 488
    iget-object v0, p0, Lcom/fusepowered/m1/android/InlineVideoView;->videoHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 490
    :cond_0
    invoke-virtual {p0}, Lcom/fusepowered/m1/android/InlineVideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 492
    invoke-virtual {p0}, Lcom/fusepowered/m1/android/InlineVideoView;->stopPlayback()V

    .line 495
    :cond_1
    invoke-virtual {p0, v1}, Lcom/fusepowered/m1/android/InlineVideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 496
    invoke-virtual {p0, v1}, Lcom/fusepowered/m1/android/InlineVideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 497
    invoke-virtual {p0, v1}, Lcom/fusepowered/m1/android/InlineVideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 498
    invoke-virtual {p0, v1}, Lcom/fusepowered/m1/android/InlineVideoView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 499
    invoke-direct {p0}, Lcom/fusepowered/m1/android/InlineVideoView;->removeFromParent()V

    .line 500
    return-void
.end method

.method resumeVideo()V
    .locals 4

    .prologue
    const/4 v2, 0x2

    .line 641
    invoke-virtual {p0}, Lcom/fusepowered/m1/android/InlineVideoView;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/m1/android/InlineVideoView;->inlineParams:Lcom/fusepowered/m1/android/InlineVideoView$InlineParams;

    iget-boolean v0, v0, Lcom/fusepowered/m1/android/InlineVideoView$InlineParams;->isCompleted:Z

    if-nez v0, :cond_0

    .line 643
    invoke-virtual {p0}, Lcom/fusepowered/m1/android/InlineVideoView;->startInternal()V

    .line 644
    iget-object v0, p0, Lcom/fusepowered/m1/android/InlineVideoView;->videoHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/m1/android/InlineVideoView;->videoHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 646
    iget-object v0, p0, Lcom/fusepowered/m1/android/InlineVideoView;->videoHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/fusepowered/m1/android/InlineVideoView;->videoHandler:Landroid/os/Handler;

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 649
    :cond_0
    return-void
.end method

.method setAdjustVideoParams(Lcom/fusepowered/m1/android/InlineVideoView$InlineParams;)V
    .locals 2
    .parameter "parameters"

    .prologue
    .line 218
    iget-object v0, p0, Lcom/fusepowered/m1/android/InlineVideoView;->inlineParams:Lcom/fusepowered/m1/android/InlineVideoView$InlineParams;

    iget v1, p1, Lcom/fusepowered/m1/android/InlineVideoView$InlineParams;->x:I

    iput v1, v0, Lcom/fusepowered/m1/android/InlineVideoView$InlineParams;->x:I

    .line 219
    iget-object v0, p0, Lcom/fusepowered/m1/android/InlineVideoView;->inlineParams:Lcom/fusepowered/m1/android/InlineVideoView$InlineParams;

    iget v1, p1, Lcom/fusepowered/m1/android/InlineVideoView$InlineParams;->y:I

    iput v1, v0, Lcom/fusepowered/m1/android/InlineVideoView$InlineParams;->y:I

    .line 220
    iget-object v0, p0, Lcom/fusepowered/m1/android/InlineVideoView;->inlineParams:Lcom/fusepowered/m1/android/InlineVideoView$InlineParams;

    iget v1, p1, Lcom/fusepowered/m1/android/InlineVideoView$InlineParams;->width:I

    iput v1, v0, Lcom/fusepowered/m1/android/InlineVideoView$InlineParams;->width:I

    .line 221
    iget-object v0, p0, Lcom/fusepowered/m1/android/InlineVideoView;->inlineParams:Lcom/fusepowered/m1/android/InlineVideoView$InlineParams;

    iget v1, p1, Lcom/fusepowered/m1/android/InlineVideoView$InlineParams;->height:I

    iput v1, v0, Lcom/fusepowered/m1/android/InlineVideoView$InlineParams;->height:I

    .line 222
    return-void
.end method

.method setVideoSource(Ljava/lang/String;)V
    .locals 2
    .parameter "streamVideoURI"

    .prologue
    .line 781
    invoke-virtual {p0}, Lcom/fusepowered/m1/android/InlineVideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 783
    invoke-virtual {p0}, Lcom/fusepowered/m1/android/InlineVideoView;->stopPlayback()V

    .line 786
    :cond_0
    iget-object v0, p0, Lcom/fusepowered/m1/android/InlineVideoView;->inlineParams:Lcom/fusepowered/m1/android/InlineVideoView$InlineParams;

    const/4 v1, 0x0

    iput v1, v0, Lcom/fusepowered/m1/android/InlineVideoView$InlineParams;->currentPosition:I

    .line 787
    const/high16 v0, -0x100

    invoke-virtual {p0, v0}, Lcom/fusepowered/m1/android/InlineVideoView;->setBackgroundColor(I)V

    .line 788
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fusepowered/m1/android/InlineVideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 789
    invoke-virtual {p0}, Lcom/fusepowered/m1/android/InlineVideoView;->startInternal()V

    .line 790
    return-void
.end method

.method public start()V
    .locals 0

    .prologue
    .line 544
    invoke-direct {p0}, Lcom/fusepowered/m1/android/InlineVideoView;->makeTransparent()V

    .line 545
    invoke-direct {p0}, Lcom/fusepowered/m1/android/InlineVideoView;->removeKeyboardFocusViewJira1642()V

    .line 546
    invoke-super {p0}, Landroid/widget/VideoView;->start()V

    .line 547
    return-void
.end method

.method public startInternal()V
    .locals 3

    .prologue
    .line 534
    invoke-virtual {p0}, Lcom/fusepowered/m1/android/InlineVideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 535
    .local v0, pm:Landroid/os/PowerManager;
    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 537
    invoke-virtual {p0}, Lcom/fusepowered/m1/android/InlineVideoView;->start()V

    .line 539
    :cond_0
    return-void
.end method

.method public stopPlayback()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 339
    iget-object v0, p0, Lcom/fusepowered/m1/android/InlineVideoView;->videoHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/m1/android/InlineVideoView;->videoHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/fusepowered/m1/android/InlineVideoView;->videoHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 343
    :cond_0
    invoke-virtual {p0}, Lcom/fusepowered/m1/android/InlineVideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 345
    iget-object v0, p0, Lcom/fusepowered/m1/android/InlineVideoView;->inlineParams:Lcom/fusepowered/m1/android/InlineVideoView$InlineParams;

    const/4 v1, 0x0

    iput v1, v0, Lcom/fusepowered/m1/android/InlineVideoView$InlineParams;->currentPosition:I

    .line 347
    :cond_1
    invoke-super {p0}, Landroid/widget/VideoView;->stopPlayback()V

    .line 348
    return-void
.end method

.method stopVideo()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 613
    iget-object v0, p0, Lcom/fusepowered/m1/android/InlineVideoView;->videoHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/m1/android/InlineVideoView;->videoHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 614
    iget-object v0, p0, Lcom/fusepowered/m1/android/InlineVideoView;->videoHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 615
    :cond_0
    invoke-virtual {p0}, Lcom/fusepowered/m1/android/InlineVideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 617
    iget-object v0, p0, Lcom/fusepowered/m1/android/InlineVideoView;->inlineParams:Lcom/fusepowered/m1/android/InlineVideoView$InlineParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/fusepowered/m1/android/InlineVideoView$InlineParams;->isStopped:Z

    .line 618
    iget-object v0, p0, Lcom/fusepowered/m1/android/InlineVideoView;->inlineParams:Lcom/fusepowered/m1/android/InlineVideoView$InlineParams;

    const/4 v1, 0x0

    iput v1, v0, Lcom/fusepowered/m1/android/InlineVideoView$InlineParams;->currentPosition:I

    .line 620
    iget-object v0, p0, Lcom/fusepowered/m1/android/InlineVideoView;->mmLayoutRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fusepowered/m1/android/InlineVideoView;->mmLayoutRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 622
    iget-object v0, p0, Lcom/fusepowered/m1/android/InlineVideoView;->mmLayoutRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/m1/android/MMLayout;

    invoke-virtual {v0}, Lcom/fusepowered/m1/android/MMLayout;->addBlackView()V

    .line 624
    :cond_1
    invoke-virtual {p0}, Lcom/fusepowered/m1/android/InlineVideoView;->stopPlayback()V

    .line 626
    :cond_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/fusepowered/m1/android/InlineVideoView;->inlineParams:Lcom/fusepowered/m1/android/InlineVideoView$InlineParams;

    invoke-virtual {v0}, Lcom/fusepowered/m1/android/InlineVideoView$InlineParams;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method updateVideoSeekTime()V
    .locals 5

    .prologue
    .line 451
    invoke-virtual {p0}, Lcom/fusepowered/m1/android/InlineVideoView;->getCurrentPosition()I

    move-result v0

    .line 452
    .local v0, time:I
    if-ltz v0, :cond_0

    .line 454
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Time is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/fusepowered/m1/android/MMSDK$Log;->d(Ljava/lang/String;)V

    .line 455
    int-to-float v3, v0

    const/high16 v4, 0x447a

    div-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    .line 456
    .local v1, timeInSeconds:D
    invoke-virtual {p0, v1, v2}, Lcom/fusepowered/m1/android/InlineVideoView;->updateVideoSeekTime(D)V

    .line 458
    .end local v1           #timeInSeconds:D
    :cond_0
    return-void
.end method

.method updateVideoSeekTime(D)V
    .locals 3
    .parameter "timeInSeconds"

    .prologue
    .line 474
    iget-object v1, p0, Lcom/fusepowered/m1/android/InlineVideoView;->mmLayoutRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/m1/android/MMLayout;

    .line 475
    .local v0, mmLayout:Lcom/fusepowered/m1/android/MMLayout;
    if-nez v0, :cond_0

    .line 477
    const-string v1, "MMLayout weak reference broken"

    invoke-static {v1}, Lcom/fusepowered/m1/android/MMSDK$Log;->w(Ljava/lang/String;)V

    .line 480
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:MMJS.inlineVideo.updateVideoSeekTime("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fusepowered/m1/android/MMLayout;->loadUrl(Ljava/lang/String;)V

    .line 481
    return-void
.end method

.method updateVideoSeekTimeFinal()V
    .locals 4

    .prologue
    .line 464
    iget v2, p0, Lcom/fusepowered/m1/android/InlineVideoView;->duration:I

    if-lez v2, :cond_0

    .line 466
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Time is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/fusepowered/m1/android/InlineVideoView;->duration:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/fusepowered/m1/android/MMSDK$Log;->d(Ljava/lang/String;)V

    .line 467
    iget v2, p0, Lcom/fusepowered/m1/android/InlineVideoView;->duration:I

    int-to-float v2, v2

    const/high16 v3, 0x447a

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    .line 468
    .local v0, timeInSeconds:D
    invoke-virtual {p0, v0, v1}, Lcom/fusepowered/m1/android/InlineVideoView;->updateVideoSeekTime(D)V

    .line 470
    .end local v0           #timeInSeconds:D
    :cond_0
    return-void
.end method
