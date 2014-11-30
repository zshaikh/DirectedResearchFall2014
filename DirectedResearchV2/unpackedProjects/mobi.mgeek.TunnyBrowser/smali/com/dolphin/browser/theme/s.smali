.class Lcom/dolphin/browser/theme/s;
.super Ljava/lang/Object;
.source "SkinItem.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/theme/q;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/theme/q;)V
    .locals 0

    .prologue
    .line 245
    iput-object p1, p0, Lcom/dolphin/browser/theme/s;->a:Lcom/dolphin/browser/theme/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const-wide/16 v7, 0x96

    const/4 v6, 0x2

    .line 249
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 250
    invoke-static {}, Lcom/dolphin/browser/theme/q;->d()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/dolphin/browser/theme/q;->d()J

    move-result-wide v2

    sub-long v2, v0, v2

    cmp-long v2, v2, v7

    if-gez v2, :cond_0

    .line 251
    iget-object v2, p0, Lcom/dolphin/browser/theme/s;->a:Lcom/dolphin/browser/theme/q;

    invoke-static {}, Lcom/dolphin/browser/theme/q;->d()J

    move-result-wide v3

    sub-long/2addr v0, v3

    sub-long v0, v7, v0

    invoke-virtual {v2, p0, v0, v1}, Lcom/dolphin/browser/theme/q;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 299
    :goto_0
    return-void

    .line 254
    :cond_0
    invoke-static {v0, v1}, Lcom/dolphin/browser/theme/q;->a(J)J

    .line 255
    iget-object v0, p0, Lcom/dolphin/browser/theme/s;->a:Lcom/dolphin/browser/theme/q;

    iget-object v0, v0, Lcom/dolphin/browser/theme/q;->b:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 256
    iget-object v0, p0, Lcom/dolphin/browser/theme/s;->a:Lcom/dolphin/browser/theme/q;

    iget-object v0, v0, Lcom/dolphin/browser/theme/q;->b:Landroid/widget/ImageView;

    const-string v1, "alpha"

    new-array v2, v6, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Lcom/g/a/s;->a(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/g/a/s;

    move-result-object v0

    .line 257
    new-instance v1, Lcom/dolphin/browser/theme/t;

    invoke-direct {v1, p0}, Lcom/dolphin/browser/theme/t;-><init>(Lcom/dolphin/browser/theme/s;)V

    invoke-virtual {v0, v1}, Lcom/g/a/s;->a(Lcom/g/a/b;)V

    .line 276
    invoke-virtual {v0}, Lcom/g/a/s;->a()V

    .line 277
    iget-object v0, p0, Lcom/dolphin/browser/theme/s;->a:Lcom/dolphin/browser/theme/q;

    iget-object v0, v0, Lcom/dolphin/browser/theme/q;->c:Landroid/widget/ImageView;

    const-string v1, "alpha"

    new-array v2, v6, [F

    fill-array-data v2, :array_1

    invoke-static {v0, v1, v2}, Lcom/g/a/s;->a(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/g/a/s;

    move-result-object v0

    .line 278
    new-instance v1, Lcom/dolphin/browser/theme/u;

    invoke-direct {v1, p0}, Lcom/dolphin/browser/theme/u;-><init>(Lcom/dolphin/browser/theme/s;)V

    invoke-virtual {v0, v1}, Lcom/g/a/s;->a(Lcom/g/a/b;)V

    .line 298
    invoke-virtual {v0}, Lcom/g/a/s;->a()V

    goto :goto_0

    .line 256
    :array_0
    .array-data 4
        0x0
        0x3f800000
    .end array-data

    .line 277
    :array_1
    .array-data 4
        0x3f800000
        0x0
    .end array-data
.end method
