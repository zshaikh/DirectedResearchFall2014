.class Lcom/fusepowered/m1/android/MMAdView$MMAdViewWebViewClientListener;
.super Lcom/fusepowered/m1/android/MMAdImpl$BasicWebViewClientListener;
.source "MMAdView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/m1/android/MMAdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MMAdViewWebViewClientListener"
.end annotation


# direct methods
.method constructor <init>(Lcom/fusepowered/m1/android/MMAdImpl;)V
    .locals 0
    .parameter "adImpl"

    .prologue
    .line 303
    invoke-direct {p0, p1}, Lcom/fusepowered/m1/android/MMAdImpl$BasicWebViewClientListener;-><init>(Lcom/fusepowered/m1/android/MMAdImpl;)V

    .line 304
    return-void
.end method


# virtual methods
.method public onPageFinished(Ljava/lang/String;)V
    .locals 2
    .parameter "url"

    .prologue
    .line 309
    invoke-super {p0, p1}, Lcom/fusepowered/m1/android/MMAdImpl$BasicWebViewClientListener;->onPageFinished(Ljava/lang/String;)V

    .line 310
    iget-object v1, p0, Lcom/fusepowered/m1/android/MMAdView$MMAdViewWebViewClientListener;->adImplRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/m1/android/MMAdImpl;

    .line 311
    .local v0, adImpl:Lcom/fusepowered/m1/android/MMAdImpl;
    if-eqz v0, :cond_0

    .line 313
    invoke-virtual {v0}, Lcom/fusepowered/m1/android/MMAdImpl;->isTransitionAnimated()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 315
    invoke-virtual {v0}, Lcom/fusepowered/m1/android/MMAdImpl;->animateTransition()V

    .line 318
    :cond_0
    return-void
.end method
