.class Lcom/dolphin/browser/theme/c/m;
.super Ljava/lang/Object;
.source "ThemeResources.java"

# interfaces
.implements Lcom/dolphin/browser/theme/c/n;


# instance fields
.field final synthetic a:Ljava/util/HashMap;

.field final synthetic b:Ljava/util/HashMap;

.field final synthetic c:Lcom/dolphin/browser/theme/c/l;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/theme/c/l;Ljava/util/HashMap;Ljava/util/HashMap;)V
    .locals 0

    .prologue
    .line 580
    iput-object p1, p0, Lcom/dolphin/browser/theme/c/m;->c:Lcom/dolphin/browser/theme/c/l;

    iput-object p2, p0, Lcom/dolphin/browser/theme/c/m;->a:Ljava/util/HashMap;

    iput-object p3, p0, Lcom/dolphin/browser/theme/c/m;->b:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    .prologue
    const/4 v1, 0x2

    const/4 v0, 0x1

    .line 584
    const-string v2, "color"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 585
    const-string v2, "#"

    invoke-virtual {p3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 588
    :try_start_0
    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 593
    iget-object v2, p0, Lcom/dolphin/browser/theme/c/m;->a:Ljava/util/HashMap;

    new-instance v3, Lcom/dolphin/browser/theme/c/i;

    invoke-direct {v3, v0}, Lcom/dolphin/browser/theme/c/i;-><init>(I)V

    invoke-virtual {v2, p2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    move v0, v1

    .line 613
    :cond_0
    :goto_1
    return v0

    .line 589
    :catch_0
    move-exception v1

    .line 590
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;)I

    goto :goto_1

    .line 595
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/theme/c/m;->a:Ljava/util/HashMap;

    new-instance v2, Lcom/dolphin/browser/theme/c/i;

    invoke-direct {v2, p3}, Lcom/dolphin/browser/theme/c/i;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 598
    :cond_2
    const-string v2, "drawable"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 599
    const-string v2, "#"

    invoke-virtual {p3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 602
    :try_start_1
    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    .line 607
    iget-object v2, p0, Lcom/dolphin/browser/theme/c/m;->b:Ljava/util/HashMap;

    new-instance v3, Lcom/dolphin/browser/theme/c/i;

    invoke-direct {v3, v0}, Lcom/dolphin/browser/theme/c/i;-><init>(I)V

    invoke-virtual {v2, p2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    move v0, v1

    .line 611
    goto :goto_1

    .line 603
    :catch_1
    move-exception v1

    .line 604
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;)I

    goto :goto_1

    .line 609
    :cond_3
    iget-object v0, p0, Lcom/dolphin/browser/theme/c/m;->b:Ljava/util/HashMap;

    new-instance v2, Lcom/dolphin/browser/theme/c/i;

    invoke-direct {v2, p3}, Lcom/dolphin/browser/theme/c/i;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method
