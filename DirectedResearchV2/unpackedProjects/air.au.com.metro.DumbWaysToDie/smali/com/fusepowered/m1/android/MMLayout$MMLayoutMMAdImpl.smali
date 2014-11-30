.class Lcom/fusepowered/m1/android/MMLayout$MMLayoutMMAdImpl;
.super Lcom/fusepowered/m1/android/MMAdImpl;
.source "MMLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/m1/android/MMLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MMLayoutMMAdImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/m1/android/MMLayout;


# direct methods
.method public constructor <init>(Lcom/fusepowered/m1/android/MMLayout;Landroid/content/Context;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 419
    iput-object p1, p0, Lcom/fusepowered/m1/android/MMLayout$MMLayoutMMAdImpl;->this$0:Lcom/fusepowered/m1/android/MMLayout;

    .line 420
    invoke-direct {p0, p2}, Lcom/fusepowered/m1/android/MMAdImpl;-><init>(Landroid/content/Context;)V

    .line 421
    new-instance v0, Lcom/fusepowered/m1/android/MMLayout$LayoutAdProperties;

    invoke-virtual {p0}, Lcom/fusepowered/m1/android/MMLayout$MMLayoutMMAdImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/fusepowered/m1/android/MMLayout$LayoutAdProperties;-><init>(Lcom/fusepowered/m1/android/MMLayout;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fusepowered/m1/android/MMLayout$MMLayoutMMAdImpl;->adProperties:Lcom/fusepowered/m1/android/AdProperties;

    .line 422
    return-void
.end method


# virtual methods
.method public addView(Lcom/fusepowered/m1/android/MMWebView;Landroid/widget/RelativeLayout$LayoutParams;)V
    .locals 2
    .param p1, "webView"    # Lcom/fusepowered/m1/android/MMWebView;
    .param p2, "webLayoutParams"    # Landroid/widget/RelativeLayout$LayoutParams;

    .prologue
    .line 445
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MMLayout adding view ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fusepowered/m1/android/MMSDK$Log;->w(Ljava/lang/String;)V

    .line 446
    iget-object v0, p0, Lcom/fusepowered/m1/android/MMLayout$MMLayoutMMAdImpl;->this$0:Lcom/fusepowered/m1/android/MMLayout;

    invoke-virtual {v0, p1, p2}, Lcom/fusepowered/m1/android/MMLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 447
    return-void
.end method

.method bridge synthetic getCallingAd()Lcom/fusepowered/m1/android/MMAd;
    .locals 1

    .prologue
    .line 416
    invoke-virtual {p0}, Lcom/fusepowered/m1/android/MMLayout$MMLayoutMMAdImpl;->getCallingAd()Lcom/fusepowered/m1/android/MMLayout;

    move-result-object v0

    return-object v0
.end method

.method getCallingAd()Lcom/fusepowered/m1/android/MMLayout;
    .locals 1

    .prologue
    .line 427
    iget-object v0, p0, Lcom/fusepowered/m1/android/MMLayout$MMLayoutMMAdImpl;->this$0:Lcom/fusepowered/m1/android/MMLayout;

    return-object v0
.end method

.method getId()I
    .locals 1

    .prologue
    .line 452
    iget-object v0, p0, Lcom/fusepowered/m1/android/MMLayout$MMLayoutMMAdImpl;->this$0:Lcom/fusepowered/m1/android/MMLayout;

    invoke-virtual {v0}, Lcom/fusepowered/m1/android/MMLayout;->getId()I

    move-result v0

    return v0
.end method

.method public removeView(Lcom/fusepowered/m1/android/MMWebView;)V
    .locals 1
    .param p1, "mmWebView"    # Lcom/fusepowered/m1/android/MMWebView;

    .prologue
    .line 439
    iget-object v0, p0, Lcom/fusepowered/m1/android/MMLayout$MMLayoutMMAdImpl;->this$0:Lcom/fusepowered/m1/android/MMLayout;

    invoke-virtual {v0, p1}, Lcom/fusepowered/m1/android/MMLayout;->removeView(Landroid/view/View;)V

    .line 440
    return-void
.end method

.method public setClickable(Z)V
    .locals 1
    .param p1, "clickable"    # Z

    .prologue
    .line 433
    iget-object v0, p0, Lcom/fusepowered/m1/android/MMLayout$MMLayoutMMAdImpl;->this$0:Lcom/fusepowered/m1/android/MMLayout;

    invoke-virtual {v0, p1}, Lcom/fusepowered/m1/android/MMLayout;->setClickable(Z)V

    .line 434
    return-void
.end method
