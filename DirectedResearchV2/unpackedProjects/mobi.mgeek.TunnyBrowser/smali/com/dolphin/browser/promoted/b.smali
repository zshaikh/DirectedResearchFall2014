.class public Lcom/dolphin/browser/promoted/b;
.super Lcom/dolphin/browser/promoted/a;
.source "AddShortcutPromotion.java"


# instance fields
.field private b:Lcom/dolphin/browser/promoted/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/dolphin/browser/promoted/a;-><init>(Landroid/content/Context;)V

    .line 20
    :try_start_0
    const-string v0, "com.dolphin.browser.promoted.impl.AddShortcutPromotionImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 21
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Landroid/content/Context;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 22
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/promoted/a;

    iput-object v0, p0, Lcom/dolphin/browser/promoted/b;->b:Lcom/dolphin/browser/promoted/a;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    :goto_0
    return-void

    .line 33
    :catch_0
    move-exception v0

    goto :goto_0

    .line 31
    :catch_1
    move-exception v0

    goto :goto_0

    .line 29
    :catch_2
    move-exception v0

    goto :goto_0

    .line 27
    :catch_3
    move-exception v0

    goto :goto_0

    .line 25
    :catch_4
    move-exception v0

    goto :goto_0

    .line 23
    :catch_5
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/dolphin/browser/promoted/b;->b:Lcom/dolphin/browser/promoted/a;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/dolphin/browser/promoted/b;->b:Lcom/dolphin/browser/promoted/a;

    invoke-virtual {v0}, Lcom/dolphin/browser/promoted/a;->a()Z

    move-result v0

    .line 45
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/dolphin/browser/promoted/b;->b:Lcom/dolphin/browser/promoted/a;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/dolphin/browser/promoted/b;->b:Lcom/dolphin/browser/promoted/a;

    invoke-virtual {v0}, Lcom/dolphin/browser/promoted/a;->b()Ljava/lang/String;

    move-result-object v0

    .line 80
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/dolphin/browser/promoted/b;->b:Lcom/dolphin/browser/promoted/a;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/dolphin/browser/promoted/b;->b:Lcom/dolphin/browser/promoted/a;

    invoke-virtual {v0}, Lcom/dolphin/browser/promoted/a;->c()Ljava/lang/String;

    move-result-object v0

    .line 71
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public d()V
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/dolphin/browser/promoted/b;->b:Lcom/dolphin/browser/promoted/a;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/dolphin/browser/promoted/b;->b:Lcom/dolphin/browser/promoted/a;

    invoke-virtual {v0}, Lcom/dolphin/browser/promoted/a;->d()V

    .line 54
    :cond_0
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/dolphin/browser/promoted/b;->b:Lcom/dolphin/browser/promoted/a;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/dolphin/browser/promoted/b;->b:Lcom/dolphin/browser/promoted/a;

    invoke-virtual {v0}, Lcom/dolphin/browser/promoted/a;->e()V

    .line 63
    :cond_0
    return-void
.end method
