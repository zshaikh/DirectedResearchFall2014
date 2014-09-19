.class Lcom/fusepowered/m1/android/AdViewOverlayView$OverlayWebViewClientListener;
.super Lcom/fusepowered/m1/android/MMAdImpl$BasicWebViewClientListener;
.source "AdViewOverlayView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/m1/android/AdViewOverlayView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OverlayWebViewClientListener"
.end annotation


# direct methods
.method constructor <init>(Lcom/fusepowered/m1/android/MMAdImpl;)V
    .locals 0
    .parameter "adImpl"

    .prologue
    .line 287
    invoke-direct {p0, p1}, Lcom/fusepowered/m1/android/MMAdImpl$BasicWebViewClientListener;-><init>(Lcom/fusepowered/m1/android/MMAdImpl;)V

    .line 288
    return-void
.end method


# virtual methods
.method public onPageFinished(Ljava/lang/String;)V
    .locals 2
    .parameter "url"

    .prologue
    .line 293
    invoke-super {p0, p1}, Lcom/fusepowered/m1/android/MMAdImpl$BasicWebViewClientListener;->onPageFinished(Ljava/lang/String;)V

    .line 294
    iget-object v1, p0, Lcom/fusepowered/m1/android/AdViewOverlayView$OverlayWebViewClientListener;->adImplRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/m1/android/MMAdImpl;

    .line 295
    .local v0, adImpl:Lcom/fusepowered/m1/android/MMAdImpl;
    if-eqz v0, :cond_0

    .line 297
    invoke-virtual {v0}, Lcom/fusepowered/m1/android/MMAdImpl;->removeProgressBar()V

    .line 299
    :cond_0
    return-void
.end method
