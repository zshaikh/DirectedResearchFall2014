.class Lcom/dolphin/browser/b/f;
.super Lcom/dolphin/browser/util/f;
.source "ImageManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dolphin/browser/util/f",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/graphics/Bitmap;

.field final synthetic c:Lcom/dolphin/browser/b/i;

.field final synthetic d:Lcom/dolphin/browser/b/a;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/b/a;Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/dolphin/browser/b/i;)V
    .locals 0

    .prologue
    .line 1025
    iput-object p1, p0, Lcom/dolphin/browser/b/f;->d:Lcom/dolphin/browser/b/a;

    iput-object p2, p0, Lcom/dolphin/browser/b/f;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/dolphin/browser/b/f;->b:Landroid/graphics/Bitmap;

    iput-object p4, p0, Lcom/dolphin/browser/b/f;->c:Lcom/dolphin/browser/b/i;

    invoke-direct {p0}, Lcom/dolphin/browser/util/f;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 4

    .prologue
    .line 1029
    iget-object v0, p0, Lcom/dolphin/browser/b/f;->d:Lcom/dolphin/browser/b/a;

    iget-object v1, p0, Lcom/dolphin/browser/b/f;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/dolphin/browser/b/f;->b:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/dolphin/browser/b/f;->c:Lcom/dolphin/browser/b/i;

    invoke-virtual {v0, v1, v2, v3}, Lcom/dolphin/browser/b/a;->a(Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/dolphin/browser/b/i;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1025
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/b/f;->a([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/lang/Boolean;)V
    .locals 2

    .prologue
    .line 1034
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/b/f;->c:Lcom/dolphin/browser/b/i;

    if-eqz v0, :cond_0

    .line 1035
    iget-object v0, p0, Lcom/dolphin/browser/b/f;->c:Lcom/dolphin/browser/b/i;

    iget-object v1, p0, Lcom/dolphin/browser/b/f;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/dolphin/browser/b/i;->a(Ljava/lang/String;)V

    .line 1037
    :cond_0
    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1025
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/b/f;->a(Ljava/lang/Boolean;)V

    return-void
.end method
