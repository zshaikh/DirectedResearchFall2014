.class Lcom/dolphin/browser/DolphinService/ui/aj;
.super Lcom/dolphin/browser/util/f;
.source "DolphinAccountActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dolphin/browser/util/f",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/dolphin/browser/DolphinService/ui/DolphinAccountActivity;

.field private final b:Ljava/io/File;

.field private final c:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Lcom/dolphin/browser/DolphinService/ui/DolphinAccountActivity;Ljava/io/File;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 498
    iput-object p1, p0, Lcom/dolphin/browser/DolphinService/ui/aj;->a:Lcom/dolphin/browser/DolphinService/ui/DolphinAccountActivity;

    invoke-direct {p0}, Lcom/dolphin/browser/util/f;-><init>()V

    .line 500
    iput-object p2, p0, Lcom/dolphin/browser/DolphinService/ui/aj;->b:Ljava/io/File;

    .line 501
    iput-object p3, p0, Lcom/dolphin/browser/DolphinService/ui/aj;->c:Landroid/graphics/Bitmap;

    .line 502
    return-void
.end method


# virtual methods
.method protected synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 493
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/DolphinService/ui/aj;->b([Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/lang/Boolean;)V
    .locals 2

    .prologue
    .line 507
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 508
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/aj;->a:Lcom/dolphin/browser/DolphinService/ui/DolphinAccountActivity;

    iget-object v1, p0, Lcom/dolphin/browser/DolphinService/ui/aj;->b:Ljava/io/File;

    invoke-static {v0, v1}, Lcom/dolphin/browser/DolphinService/ui/DolphinAccountActivity;->a(Lcom/dolphin/browser/DolphinService/ui/DolphinAccountActivity;Ljava/io/File;)V

    .line 509
    invoke-static {}, Lcom/dolphin/browser/DolphinService/c;->a()Lcom/dolphin/browser/DolphinService/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/DolphinService/c;->b()V

    .line 511
    :cond_0
    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 493
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/DolphinService/ui/aj;->a(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected varargs b([Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 516
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/aj;->c:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/dolphin/browser/DolphinService/ui/aj;->b:Ljava/io/File;

    invoke-static {v0, v1}, Lcom/dolphin/browser/pagedrop/e/a;->a(Landroid/graphics/Bitmap;Ljava/io/File;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
