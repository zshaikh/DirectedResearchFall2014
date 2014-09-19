.class Lcom/fusepowered/m1/android/AdViewOverlayView$OverlayRedirectionListenerImpl;
.super Lcom/fusepowered/m1/android/MMAdImpl$MMAdImplRedirectionListenerImpl;
.source "AdViewOverlayView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/m1/android/AdViewOverlayView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "OverlayRedirectionListenerImpl"
.end annotation


# direct methods
.method public constructor <init>(Lcom/fusepowered/m1/android/MMAdImpl;)V
    .locals 0
    .parameter "adImpl"

    .prologue
    .line 339
    invoke-direct {p0, p1}, Lcom/fusepowered/m1/android/MMAdImpl$MMAdImplRedirectionListenerImpl;-><init>(Lcom/fusepowered/m1/android/MMAdImpl;)V

    .line 340
    return-void
.end method


# virtual methods
.method public isExpandingToUrl()Z
    .locals 2

    .prologue
    .line 345
    iget-object v1, p0, Lcom/fusepowered/m1/android/AdViewOverlayView$OverlayRedirectionListenerImpl;->adImplRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/m1/android/MMAdImpl;

    .line 346
    .local v0, adImpl:Lcom/fusepowered/m1/android/MMAdImpl;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/fusepowered/m1/android/AdViewOverlayView$AdViewOverlayViewMMAdImpl;

    if-eqz v1, :cond_0

    .line 348
    invoke-virtual {v0}, Lcom/fusepowered/m1/android/MMAdImpl;->isExpandingToUrl()Z

    move-result v1

    .line 350
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
