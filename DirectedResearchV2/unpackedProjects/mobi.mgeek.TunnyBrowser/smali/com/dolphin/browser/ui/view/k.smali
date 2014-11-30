.class Lcom/dolphin/browser/ui/view/k;
.super Landroid/support/v4/b/f;
.source "RemoteImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/b/f",
        "<",
        "Ljava/lang/String;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/dolphin/browser/ui/view/RemoteImageLoader;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/ui/view/RemoteImageLoader;I)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/dolphin/browser/ui/view/k;->a:Lcom/dolphin/browser/ui/view/RemoteImageLoader;

    invoke-direct {p0, p2}, Landroid/support/v4/b/f;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;Landroid/graphics/Bitmap;)I
    .locals 2

    .prologue
    .line 128
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method

.method protected synthetic b(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 125
    check-cast p1, Ljava/lang/String;

    check-cast p2, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/dolphin/browser/ui/view/k;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method
