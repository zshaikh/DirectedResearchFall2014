.class Lcom/dolphin/browser/launcher/k;
.super Ljava/lang/Object;
.source "DataManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/graphics/Bitmap;

.field final synthetic b:I

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/dolphin/browser/launcher/i;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/launcher/i;Landroid/graphics/Bitmap;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 465
    iput-object p1, p0, Lcom/dolphin/browser/launcher/k;->d:Lcom/dolphin/browser/launcher/i;

    iput-object p2, p0, Lcom/dolphin/browser/launcher/k;->a:Landroid/graphics/Bitmap;

    iput p3, p0, Lcom/dolphin/browser/launcher/k;->b:I

    iput-object p4, p0, Lcom/dolphin/browser/launcher/k;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 467
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 468
    iget-object v1, p0, Lcom/dolphin/browser/launcher/k;->a:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lcom/dolphin/browser/launcher/cl;->a(Landroid/content/ContentValues;Landroid/graphics/Bitmap;)V

    .line 469
    iget-object v1, p0, Lcom/dolphin/browser/launcher/k;->d:Lcom/dolphin/browser/launcher/i;

    iget-object v1, v1, Lcom/dolphin/browser/launcher/i;->a:Lcom/dolphin/browser/launcher/f;

    invoke-static {v1}, Lcom/dolphin/browser/launcher/f;->a(Lcom/dolphin/browser/launcher/f;)Lcom/dolphin/browser/launcher/q;

    move-result-object v1

    const-string v2, "%s = ? AND %s = ?"

    new-array v3, v7, [Ljava/lang/Object;

    const-string v4, "iconType"

    aput-object v4, v3, v5

    const-string v4, "iconResource"

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v7, [Ljava/lang/String;

    iget v4, p0, Lcom/dolphin/browser/launcher/k;->b:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/dolphin/browser/launcher/k;->c:Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-virtual {v1, v0, v2, v3}, Lcom/dolphin/browser/launcher/q;->a(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 472
    return-void
.end method
