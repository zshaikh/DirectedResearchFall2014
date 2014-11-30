.class Lcom/dolphin/browser/gesture/ui/x;
.super Lcom/dolphin/browser/util/f;
.source "GestureListActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dolphin/browser/util/f",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/String;",
        "Lcom/dolphin/browser/gesture/Gesture;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/dolphin/browser/gesture/ui/GestureListActivity;

.field private b:Z


# direct methods
.method public constructor <init>(Lcom/dolphin/browser/gesture/ui/GestureListActivity;Z)V
    .locals 0

    .prologue
    .line 328
    iput-object p1, p0, Lcom/dolphin/browser/gesture/ui/x;->a:Lcom/dolphin/browser/gesture/ui/GestureListActivity;

    invoke-direct {p0}, Lcom/dolphin/browser/util/f;-><init>()V

    .line 329
    iput-boolean p2, p0, Lcom/dolphin/browser/gesture/ui/x;->b:Z

    .line 330
    return-void
.end method


# virtual methods
.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 325
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/gesture/ui/x;->a([Ljava/lang/Void;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected varargs a([Ljava/lang/Void;)Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/dolphin/browser/gesture/Gesture;",
            ">;"
        }
    .end annotation

    .prologue
    .line 343
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 344
    invoke-virtual {p0}, Lcom/dolphin/browser/gesture/ui/x;->f()Z

    move-result v0

    if-nez v0, :cond_1

    .line 346
    :try_start_0
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/x;->a:Lcom/dolphin/browser/gesture/ui/GestureListActivity;

    invoke-static {v0}, Lcom/dolphin/browser/gesture/ui/GestureListActivity;->d(Lcom/dolphin/browser/gesture/ui/GestureListActivity;)Lcom/dolphin/browser/gesture/i;

    move-result-object v2

    .line 347
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/x;->a:Lcom/dolphin/browser/gesture/ui/GestureListActivity;

    invoke-static {v0}, Lcom/dolphin/browser/gesture/ui/GestureListActivity;->e(Lcom/dolphin/browser/gesture/ui/GestureListActivity;)Lcom/dolphin/browser/gesture/a;

    move-result-object v3

    .line 349
    invoke-virtual {v2}, Lcom/dolphin/browser/gesture/i;->c()Z

    .line 351
    invoke-virtual {v2}, Lcom/dolphin/browser/gesture/i;->d()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 352
    invoke-virtual {p0}, Lcom/dolphin/browser/gesture/ui/x;->f()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 366
    :cond_1
    :goto_1
    return-object v1

    .line 355
    :cond_2
    invoke-virtual {v3, v0}, Lcom/dolphin/browser/gesture/a;->a(Ljava/lang/String;)Lcom/dolphin/browser/gesture/a/a;

    move-result-object v5

    .line 356
    instance-of v5, v5, Lcom/dolphin/browser/gesture/a/e;

    if-eqz v5, :cond_0

    .line 359
    invoke-virtual {v2, v0}, Lcom/dolphin/browser/gesture/i;->a(Ljava/lang/String;)Lcom/dolphin/browser/gesture/Gesture;

    move-result-object v5

    .line 360
    invoke-virtual {v1, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    const-string v5, "GestureListAcitvity"

    const-string v6, "Loaded gesture: %s."

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    invoke-static {v5, v6, v7}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 363
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method protected a()V
    .locals 2

    .prologue
    .line 334
    invoke-super {p0}, Lcom/dolphin/browser/util/f;->a()V

    .line 336
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/x;->a:Lcom/dolphin/browser/gesture/ui/GestureListActivity;

    invoke-static {v0}, Lcom/dolphin/browser/gesture/ui/GestureListActivity;->c(Lcom/dolphin/browser/gesture/ui/GestureListActivity;)Lcom/dolphin/browser/gesture/ui/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/gesture/ui/w;->clear()V

    .line 337
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/x;->a:Lcom/dolphin/browser/gesture/ui/GestureListActivity;

    invoke-static {v0}, Lcom/dolphin/browser/gesture/ui/GestureListActivity;->c(Lcom/dolphin/browser/gesture/ui/GestureListActivity;)Lcom/dolphin/browser/gesture/ui/w;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/gesture/ui/w;->setNotifyOnChange(Z)V

    .line 338
    const-string v0, "GestureListAcitvity"

    const-string v1, "GestureLoadTask onPreExecute"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 325
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/gesture/ui/x;->a(Ljava/util/Map;)V

    return-void
.end method

.method protected a(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/dolphin/browser/gesture/Gesture;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 371
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/x;->a:Lcom/dolphin/browser/gesture/ui/GestureListActivity;

    invoke-static {v0}, Lcom/dolphin/browser/gesture/ui/GestureListActivity;->c(Lcom/dolphin/browser/gesture/ui/GestureListActivity;)Lcom/dolphin/browser/gesture/ui/w;

    move-result-object v0

    .line 373
    invoke-virtual {v0, p1}, Lcom/dolphin/browser/gesture/ui/w;->a(Ljava/util/Map;)V

    .line 375
    invoke-virtual {v0}, Lcom/dolphin/browser/gesture/ui/w;->getCount()I

    move-result v0

    .line 376
    invoke-static {v0}, Lcom/dolphin/browser/util/de;->a(I)Ljava/lang/String;

    move-result-object v1

    .line 377
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 378
    const-string v2, "gesture"

    const-string v3, "count"

    sget-object v4, Lcom/dolphin/browser/util/Tracker$Priority;->Critical:Lcom/dolphin/browser/util/Tracker$Priority;

    invoke-static {v2, v3, v1, v0, v4}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/dolphin/browser/util/Tracker$Priority;)V

    .line 381
    :cond_0
    iget-boolean v0, p0, Lcom/dolphin/browser/gesture/ui/x;->b:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e051d

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 383
    :cond_1
    const-string v0, "GestureListAcitvity"

    const-string v1, "GestureLoadTask onPostExecute"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    return-void
.end method
