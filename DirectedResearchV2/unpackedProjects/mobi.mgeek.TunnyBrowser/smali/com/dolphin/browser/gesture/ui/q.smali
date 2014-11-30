.class Lcom/dolphin/browser/gesture/ui/q;
.super Lcom/dolphin/browser/util/f;
.source "GestureCreateActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dolphin/browser/util/f",
        "<",
        "Ljava/lang/Void;",
        "Lcom/dolphin/browser/gesture/ui/o;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;

.field private b:I

.field private c:I

.field private d:I


# direct methods
.method private constructor <init>(Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;)V
    .locals 0

    .prologue
    .line 574
    iput-object p1, p0, Lcom/dolphin/browser/gesture/ui/q;->a:Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;

    invoke-direct {p0}, Lcom/dolphin/browser/util/f;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;Lcom/dolphin/browser/gesture/ui/d;)V
    .locals 0

    .prologue
    .line 574
    invoke-direct {p0, p1}, Lcom/dolphin/browser/gesture/ui/q;-><init>(Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 11

    .prologue
    const/4 v1, 0x1

    const/4 v9, 0x0

    .line 596
    .line 597
    invoke-virtual {p0}, Lcom/dolphin/browser/gesture/ui/q;->f()Z

    move-result v2

    if-nez v2, :cond_1

    .line 599
    :try_start_0
    iget-object v1, p0, Lcom/dolphin/browser/gesture/ui/q;->a:Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;

    invoke-static {v1}, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->d(Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;)Lcom/dolphin/browser/gesture/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/gesture/i;->k()Ljava/util/HashMap;

    move-result-object v1

    .line 601
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/util/Map$Entry;

    move-object v8, v0

    .line 602
    invoke-virtual {p0}, Lcom/dolphin/browser/gesture/ui/q;->f()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    move v1, v9

    .line 616
    :cond_1
    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    .line 605
    :cond_2
    :try_start_1
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dolphin/browser/gesture/Gesture;

    .line 606
    iget v2, p0, Lcom/dolphin/browser/gesture/ui/q;->b:I

    iget v3, p0, Lcom/dolphin/browser/gesture/ui/q;->b:I

    iget v4, p0, Lcom/dolphin/browser/gesture/ui/q;->c:I

    iget v5, p0, Lcom/dolphin/browser/gesture/ui/q;->d:I

    const/high16 v6, 0x40a00000

    const/16 v7, 0x14

    invoke-virtual/range {v1 .. v7}, Lcom/dolphin/browser/gesture/Gesture;->a(IIIIFI)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 609
    const/4 v1, 0x1

    new-array v3, v1, [Lcom/dolphin/browser/gesture/ui/o;

    const/4 v4, 0x0

    new-instance v5, Lcom/dolphin/browser/gesture/ui/o;

    iget-object v6, p0, Lcom/dolphin/browser/gesture/ui/q;->a:Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v5, v6, v1, v2}, Lcom/dolphin/browser/gesture/ui/o;-><init>(Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    aput-object v5, v3, v4

    invoke-virtual {p0, v3}, Lcom/dolphin/browser/gesture/ui/q;->e([Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 612
    :catch_0
    move-exception v1

    .line 613
    const/4 v1, 0x3

    goto :goto_1
.end method

.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 574
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/gesture/ui/q;->a([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected a()V
    .locals 2

    .prologue
    .line 582
    invoke-super {p0}, Lcom/dolphin/browser/util/f;->a()V

    .line 584
    sget-object v0, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v0, 0x7f0a0062

    invoke-static {v0}, Lcom/dolphin/browser/util/cu;->b(I)I

    move-result v0

    iput v0, p0, Lcom/dolphin/browser/gesture/ui/q;->d:I

    .line 585
    invoke-static {}, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->e()I

    move-result v0

    iput v0, p0, Lcom/dolphin/browser/gesture/ui/q;->c:I

    .line 586
    invoke-static {}, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->f()I

    move-result v0

    iput v0, p0, Lcom/dolphin/browser/gesture/ui/q;->b:I

    .line 588
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/q;->a:Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;

    invoke-static {v0}, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->i(Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;)Lcom/dolphin/browser/gesture/ui/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/gesture/ui/p;->clear()V

    .line 589
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/q;->a:Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;

    invoke-static {v0}, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->i(Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;)Lcom/dolphin/browser/gesture/ui/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/gesture/ui/p;->notifyDataSetChanged()V

    .line 590
    const-string v0, "GestureCreateActivity"

    const-string v1, "GesturesLoadTask onPreExecute"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    return-void
.end method

.method protected a(Ljava/lang/Integer;)V
    .locals 2

    .prologue
    .line 631
    const-string v0, "GestureCreateActivity"

    const-string v1, "GesturesLoadTask onPostExecute"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/q;->a:Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;

    invoke-static {v0}, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->j(Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;)V

    .line 633
    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 574
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/gesture/ui/q;->a(Ljava/lang/Integer;)V

    return-void
.end method

.method protected varargs a([Lcom/dolphin/browser/gesture/ui/o;)V
    .locals 5

    .prologue
    .line 622
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    .line 623
    iget-object v3, p0, Lcom/dolphin/browser/gesture/ui/q;->a:Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;

    invoke-static {v3}, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->i(Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;)Lcom/dolphin/browser/gesture/ui/p;

    move-result-object v3

    invoke-static {v2}, Lcom/dolphin/browser/gesture/ui/o;->a(Lcom/dolphin/browser/gesture/ui/o;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2}, Lcom/dolphin/browser/gesture/ui/o;->b(Lcom/dolphin/browser/gesture/ui/o;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lcom/dolphin/browser/gesture/ui/p;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 622
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 625
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/q;->a:Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;

    invoke-static {v0}, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->i(Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;)Lcom/dolphin/browser/gesture/ui/p;

    move-result-object v0

    invoke-static {}, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->d()Ljava/util/Comparator;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/gesture/ui/p;->sort(Ljava/util/Comparator;)V

    .line 626
    return-void
.end method

.method protected synthetic a_([Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 574
    check-cast p1, [Lcom/dolphin/browser/gesture/ui/o;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/gesture/ui/q;->a([Lcom/dolphin/browser/gesture/ui/o;)V

    return-void
.end method
