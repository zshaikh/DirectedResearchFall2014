.class public Lcom/dolphin/browser/tablist/bk;
.super Ljava/lang/Object;
.source "TabHolder.java"


# static fields
.field private static final c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/dolphin/browser/core/ITab;",
            "Lcom/dolphin/browser/tablist/bk;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Lcom/dolphin/browser/core/ITab;

.field private b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/dolphin/browser/tablist/bk;->c:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(Lcom/dolphin/browser/core/ITab;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/dolphin/browser/tablist/bk;->a:Lcom/dolphin/browser/core/ITab;

    .line 29
    return-void
.end method

.method public static a(Lcom/dolphin/browser/core/ITab;)Lcom/dolphin/browser/tablist/bk;
    .locals 2

    .prologue
    .line 47
    sget-object v0, Lcom/dolphin/browser/tablist/bk;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/tablist/bk;

    .line 48
    if-nez v0, :cond_0

    .line 49
    new-instance v0, Lcom/dolphin/browser/tablist/bk;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/tablist/bk;-><init>(Lcom/dolphin/browser/core/ITab;)V

    .line 50
    sget-object v1, Lcom/dolphin/browser/tablist/bk;->c:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    :cond_0
    return-object v0
.end method

.method public static c()V
    .locals 6

    .prologue
    .line 60
    invoke-static {}, Lcom/dolphin/browser/core/TabManager;->getInstance()Lcom/dolphin/browser/core/TabManager;

    move-result-object v1

    .line 61
    if-nez v1, :cond_1

    .line 76
    :cond_0
    return-void

    .line 64
    :cond_1
    sget-object v2, Lcom/dolphin/browser/tablist/bk;->c:Ljava/util/HashMap;

    .line 66
    new-instance v3, Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 67
    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 68
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/core/ITab;

    .line 69
    invoke-virtual {v1, v0}, Lcom/dolphin/browser/core/TabManager;->getTabIndex(Lcom/dolphin/browser/core/ITab;)I

    move-result v5

    if-gez v5, :cond_2

    .line 70
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 73
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/core/ITab;

    .line 74
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method


# virtual methods
.method public a()Lcom/dolphin/browser/core/ITab;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/dolphin/browser/tablist/bk;->a:Lcom/dolphin/browser/core/ITab;

    return-object v0
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/dolphin/browser/tablist/bk;->b:Ljava/lang/ref/WeakReference;

    .line 42
    return-void
.end method

.method public b()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/dolphin/browser/tablist/bk;->b:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/tablist/bk;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    goto :goto_0
.end method
