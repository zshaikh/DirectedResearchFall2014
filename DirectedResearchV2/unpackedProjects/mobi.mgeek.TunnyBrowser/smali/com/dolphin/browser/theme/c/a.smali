.class public Lcom/dolphin/browser/theme/c/a;
.super Landroid/content/res/Resources;
.source "DefaultResources.java"

# interfaces
.implements Lcom/dolphin/browser/theme/c/g;
.implements Lcom/e/a/w;


# instance fields
.field protected final a:Lcom/e/a/v;

.field private b:Ljava/lang/String;

.field private c:Landroid/content/res/Resources;

.field private d:Lcom/dolphin/browser/theme/d/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dolphin/browser/theme/d/c",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;>;"
        }
    .end annotation
.end field

.field private e:Landroid/util/TypedValue;

.field private f:Lcom/e/a/a;

.field private g:Z


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 53
    invoke-virtual {p1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 46
    new-instance v0, Lcom/dolphin/browser/theme/d/c;

    invoke-direct {v0}, Lcom/dolphin/browser/theme/d/c;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/theme/c/a;->d:Lcom/dolphin/browser/theme/d/c;

    .line 54
    iput-object p1, p0, Lcom/dolphin/browser/theme/c/a;->c:Landroid/content/res/Resources;

    .line 55
    iput-object p2, p0, Lcom/dolphin/browser/theme/c/a;->b:Ljava/lang/String;

    .line 56
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/theme/c/a;->e:Landroid/util/TypedValue;

    .line 57
    new-instance v0, Lcom/e/a/v;

    invoke-direct {v0, p0}, Lcom/e/a/v;-><init>(Lcom/e/a/w;)V

    iput-object v0, p0, Lcom/dolphin/browser/theme/c/a;->a:Lcom/e/a/v;

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolphin/browser/theme/c/a;->g:Z

    .line 59
    invoke-virtual {p0}, Lcom/dolphin/browser/theme/c/a;->a()V

    .line 60
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;IILjava/lang/String;)Landroid/content/res/XmlResourceParser;
    .locals 1

    .prologue
    .line 188
    invoke-static {p0, p1, p2, p3, p4}, Lcom/e/a/v;->a(Landroid/content/res/Resources;Ljava/lang/String;IILjava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    return-object v0
.end method

.method protected a(ILandroid/util/TypedValue;Z)Landroid/graphics/drawable/Drawable;
    .locals 6

    .prologue
    .line 93
    iget-object v0, p0, Lcom/dolphin/browser/theme/c/a;->a:Lcom/e/a/v;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/dolphin/browser/theme/c/a;->f:Lcom/e/a/a;

    move-object v1, p2

    move v2, p1

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/e/a/v;->a(Landroid/util/TypedValue;IZLcom/e/a/a;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 130
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final a()V
    .locals 2

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/dolphin/browser/theme/c/a;->g:Z

    if-nez v0, :cond_0

    .line 68
    :goto_0
    return-void

    .line 66
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dolphin/browser/theme/c/a;->g:Z

    .line 67
    new-instance v0, Lcom/dolphin/browser/theme/c/b;

    invoke-static {}, Lcom/dolphin/browser/theme/ak;->H()Lcom/dolphin/browser/theme/ak;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/theme/ak;->a()Lcom/dolphin/browser/theme/c/f;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/dolphin/browser/theme/c/b;-><init>(Lcom/dolphin/browser/theme/c/a;Lcom/dolphin/browser/theme/c/f;)V

    iput-object v0, p0, Lcom/dolphin/browser/theme/c/a;->f:Lcom/e/a/a;

    goto :goto_0
.end method

.method public b(ILandroid/util/TypedValue;Z)Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 115
    invoke-super {p0, p1, p2}, Landroid/content/res/Resources;->openRawResource(ILandroid/util/TypedValue;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public b()V
    .locals 0

    .prologue
    .line 121
    return-void
.end method

.method public c()Landroid/content/res/Resources;
    .locals 0

    .prologue
    .line 125
    return-object p0
.end method

.method public d()V
    .locals 1

    .prologue
    .line 163
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolphin/browser/theme/c/a;->g:Z

    .line 164
    iget-object v0, p0, Lcom/dolphin/browser/theme/c/a;->a:Lcom/e/a/v;

    invoke-virtual {v0}, Lcom/e/a/v;->a()V

    .line 165
    return-void
.end method

.method public getColor(I)I
    .locals 3

    .prologue
    .line 98
    iget-object v1, p0, Lcom/dolphin/browser/theme/c/a;->e:Landroid/util/TypedValue;

    .line 99
    monitor-enter v1

    .line 100
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v1, v0}, Lcom/dolphin/browser/theme/c/a;->getValue(ILandroid/util/TypedValue;Z)V

    .line 101
    iget v0, v1, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 102
    iget v0, v1, Landroid/util/TypedValue;->data:I

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/theme/c/a;->getColor(I)I

    move-result v0

    monitor-exit v1

    .line 105
    :goto_0
    return v0

    .line 104
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    iget-object v0, p0, Lcom/dolphin/browser/theme/c/a;->c:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_0

    .line 104
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getColorStateList(I)Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/dolphin/browser/theme/c/a;->c:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getConfiguration()Landroid/content/res/Configuration;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/dolphin/browser/theme/c/a;->c:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    return-object v0
.end method

.method public getDimension(I)F
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/dolphin/browser/theme/c/a;->c:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    return v0
.end method

.method public getDisplayMetrics()Landroid/util/DisplayMetrics;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/dolphin/browser/theme/c/a;->c:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    return-object v0
.end method

.method public getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 72
    if-nez p1, :cond_1

    .line 73
    const/4 v0, 0x0

    .line 88
    :cond_0
    :goto_0
    return-object v0

    .line 76
    :cond_1
    iget-object v1, p0, Lcom/dolphin/browser/theme/c/a;->e:Landroid/util/TypedValue;

    .line 77
    monitor-enter v1

    .line 78
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v1, v0}, Lcom/dolphin/browser/theme/c/a;->getValue(ILandroid/util/TypedValue;Z)V

    .line 79
    iget v0, v1, Landroid/util/TypedValue;->type:I

    if-ne v0, v2, :cond_2

    .line 80
    iget v0, v1, Landroid/util/TypedValue;->data:I

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/theme/c/a;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    .line 84
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 82
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/dolphin/browser/theme/c/a;->a()V

    .line 83
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v1, v0}, Lcom/dolphin/browser/theme/c/a;->a(ILandroid/util/TypedValue;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 84
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    if-nez v0, :cond_0

    .line 86
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/dolphin/browser/theme/c/a;->c:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
