.class public Lcom/dolphin/browser/theme/j;
.super Ljava/lang/Object;
.source "IconProcessor.java"

# interfaces
.implements Lcom/dolphin/browser/theme/d/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 31
    if-nez p1, :cond_1

    .line 37
    :cond_0
    :goto_0
    return-object p1

    .line 34
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ne v0, p2, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-eq v0, p3, :cond_0

    .line 35
    :cond_2
    const/4 v0, 0x0

    invoke-static {p1, p2, p3, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0
.end method
