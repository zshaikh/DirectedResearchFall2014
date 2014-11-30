.class Lcom/fusepowered/m1/android/MMWebView$3;
.super Ljava/lang/Object;
.source "MMWebView.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/m1/android/MMWebView;->animateTransition(Lcom/fusepowered/m1/android/MMAdImpl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/m1/android/MMWebView;

.field final synthetic val$adImpl:Lcom/fusepowered/m1/android/MMAdImpl;


# direct methods
.method constructor <init>(Lcom/fusepowered/m1/android/MMWebView;Lcom/fusepowered/m1/android/MMAdImpl;)V
    .locals 0

    .prologue
    .line 360
    iput-object p1, p0, Lcom/fusepowered/m1/android/MMWebView$3;->this$0:Lcom/fusepowered/m1/android/MMWebView;

    iput-object p2, p0, Lcom/fusepowered/m1/android/MMWebView$3;->val$adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 360
    invoke-virtual {p0}, Lcom/fusepowered/m1/android/MMWebView$3;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 4

    .prologue
    .line 365
    :try_start_0
    iget-object v3, p0, Lcom/fusepowered/m1/android/MMWebView$3;->this$0:Lcom/fusepowered/m1/android/MMWebView;

    invoke-virtual {v3}, Lcom/fusepowered/m1/android/MMWebView;->buildDrawingCache()V

    .line 366
    iget-object v3, p0, Lcom/fusepowered/m1/android/MMWebView$3;->this$0:Lcom/fusepowered/m1/android/MMWebView;

    invoke-virtual {v3}, Lcom/fusepowered/m1/android/MMWebView;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 367
    .local v1, "cache":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    .line 368
    invoke-static {v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 369
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/fusepowered/m1/android/MMWebView$3;->val$adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

    invoke-virtual {v3, v0}, Lcom/fusepowered/m1/android/MMAdImpl;->prepareTransition(Landroid/graphics/Bitmap;)V

    .line 371
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    iget-object v3, p0, Lcom/fusepowered/m1/android/MMWebView$3;->this$0:Lcom/fusepowered/m1/android/MMWebView;

    invoke-virtual {v3}, Lcom/fusepowered/m1/android/MMWebView;->destroyDrawingCache()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 375
    .end local v1    # "cache":Landroid/graphics/Bitmap;
    :goto_0
    const/4 v3, 0x0

    return-object v3

    .line 372
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 373
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lcom/fusepowered/m1/android/MMSDK$Log;->d(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
