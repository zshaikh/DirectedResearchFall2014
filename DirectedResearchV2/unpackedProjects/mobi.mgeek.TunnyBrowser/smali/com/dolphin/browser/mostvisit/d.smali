.class Lcom/dolphin/browser/mostvisit/d;
.super Ljava/lang/Object;
.source "MostVisitedManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:I

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/dolphin/browser/mostvisit/b;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/mostvisit/b;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 390
    iput-object p1, p0, Lcom/dolphin/browser/mostvisit/d;->e:Lcom/dolphin/browser/mostvisit/b;

    iput-object p2, p0, Lcom/dolphin/browser/mostvisit/d;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/dolphin/browser/mostvisit/d;->b:Ljava/lang/String;

    iput p4, p0, Lcom/dolphin/browser/mostvisit/d;->c:I

    iput-object p5, p0, Lcom/dolphin/browser/mostvisit/d;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v8, 0x1

    .line 395
    iget-object v0, p0, Lcom/dolphin/browser/mostvisit/d;->e:Lcom/dolphin/browser/mostvisit/b;

    iget-object v1, p0, Lcom/dolphin/browser/mostvisit/d;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/dolphin/browser/mostvisit/b;->a(Lcom/dolphin/browser/mostvisit/b;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 397
    iget-object v0, p0, Lcom/dolphin/browser/mostvisit/d;->e:Lcom/dolphin/browser/mostvisit/b;

    iget-object v1, p0, Lcom/dolphin/browser/mostvisit/d;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/dolphin/browser/mostvisit/d;->a:Ljava/lang/String;

    iget v3, p0, Lcom/dolphin/browser/mostvisit/d;->c:I

    invoke-static {v0, v1, v2, v3}, Lcom/dolphin/browser/mostvisit/b;->a(Lcom/dolphin/browser/mostvisit/b;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    .line 400
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 401
    invoke-static {v2, v3, v4}, Lcom/dolphin/browser/mostvisit/a;->a(IJ)I

    move-result v5

    .line 402
    iget-object v0, p0, Lcom/dolphin/browser/mostvisit/d;->e:Lcom/dolphin/browser/mostvisit/b;

    iget-object v1, p0, Lcom/dolphin/browser/mostvisit/d;->a:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/dolphin/browser/mostvisit/b;->a(Lcom/dolphin/browser/mostvisit/b;Ljava/lang/String;IJI)V

    .line 405
    iget-object v0, p0, Lcom/dolphin/browser/mostvisit/d;->e:Lcom/dolphin/browser/mostvisit/b;

    iget-object v1, p0, Lcom/dolphin/browser/mostvisit/d;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/dolphin/browser/mostvisit/b;->b(Lcom/dolphin/browser/mostvisit/b;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 406
    iget-object v1, p0, Lcom/dolphin/browser/mostvisit/d;->e:Lcom/dolphin/browser/mostvisit/b;

    invoke-static {v1, v0}, Lcom/dolphin/browser/mostvisit/b;->a(Lcom/dolphin/browser/mostvisit/b;Ljava/util/List;)I

    move-result v1

    .line 407
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 410
    :goto_0
    iget-object v2, p0, Lcom/dolphin/browser/mostvisit/d;->e:Lcom/dolphin/browser/mostvisit/b;

    iget-object v5, p0, Lcom/dolphin/browser/mostvisit/d;->a:Ljava/lang/String;

    invoke-static {v2, v5}, Lcom/dolphin/browser/mostvisit/b;->c(Lcom/dolphin/browser/mostvisit/b;Ljava/lang/String;)Lcom/dolphin/browser/mostvisit/a/a;

    move-result-object v2

    .line 411
    if-nez v2, :cond_2

    .line 412
    invoke-static {v8, v1, v0}, Lcom/dolphin/browser/mostvisit/a;->a(III)I

    move-result v11

    .line 414
    iget-object v5, p0, Lcom/dolphin/browser/mostvisit/d;->e:Lcom/dolphin/browser/mostvisit/b;

    iget-object v6, p0, Lcom/dolphin/browser/mostvisit/d;->d:Ljava/lang/String;

    iget-object v7, p0, Lcom/dolphin/browser/mostvisit/d;->a:Ljava/lang/String;

    move-wide v9, v3

    invoke-static/range {v5 .. v11}, Lcom/dolphin/browser/mostvisit/b;->a(Lcom/dolphin/browser/mostvisit/b;Ljava/lang/String;Ljava/lang/String;IJI)V

    .line 423
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v8

    .line 407
    goto :goto_0

    .line 416
    :cond_2
    invoke-virtual {v2}, Lcom/dolphin/browser/mostvisit/a/a;->c()I

    move-result v5

    add-int/lit8 v8, v5, 0x1

    .line 417
    invoke-static {v8, v1, v0}, Lcom/dolphin/browser/mostvisit/a;->a(III)I

    move-result v12

    .line 419
    iget-object v5, p0, Lcom/dolphin/browser/mostvisit/d;->e:Lcom/dolphin/browser/mostvisit/b;

    invoke-virtual {v2}, Lcom/dolphin/browser/mostvisit/a/a;->a()I

    move-result v6

    iget-object v7, p0, Lcom/dolphin/browser/mostvisit/d;->d:Ljava/lang/String;

    int-to-long v8, v8

    move-wide v10, v3

    invoke-static/range {v5 .. v12}, Lcom/dolphin/browser/mostvisit/b;->a(Lcom/dolphin/browser/mostvisit/b;ILjava/lang/String;JJI)V

    goto :goto_1
.end method
