.class final Lcom/dolphin/browser/util/dv;
.super Ljava/lang/Object;
.source "WebViewUtil.java"

# interfaces
.implements Lcom/dolphin/browser/util/dh;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/dolphin/browser/util/dh",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:I

.field final synthetic c:I


# direct methods
.method constructor <init>(Landroid/view/View;II)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/dolphin/browser/util/dv;->a:Landroid/view/View;

    iput p2, p0, Lcom/dolphin/browser/util/dv;->b:I

    iput p3, p0, Lcom/dolphin/browser/util/dv;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 158
    iget-object v0, p0, Lcom/dolphin/browser/util/dv;->a:Landroid/view/View;

    iget v1, p0, Lcom/dolphin/browser/util/dv;->b:I

    iget v2, p0, Lcom/dolphin/browser/util/dv;->c:I

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/dt;->a(Landroid/view/View;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/dolphin/browser/util/dv;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
