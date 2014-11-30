.class Lcom/dolphin/browser/ui/menu/MenuBuilder$MenuType;
.super Ljava/lang/Object;
.source "MenuBuilder.java"


# annotations
.annotation build Lcom/dolphin/browser/annotation/AddonSDKPublic;
.end annotation


# instance fields
.field final synthetic a:Lcom/dolphin/browser/ui/menu/MenuBuilder;

.field private final b:I

.field private c:Landroid/view/LayoutInflater;

.field private d:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/dolphin/browser/ui/menu/f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/dolphin/browser/ui/menu/MenuBuilder;I)V
    .locals 0

    .prologue
    .line 186
    iput-object p1, p0, Lcom/dolphin/browser/ui/menu/MenuBuilder$MenuType;->a:Lcom/dolphin/browser/ui/menu/MenuBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    iput p2, p0, Lcom/dolphin/browser/ui/menu/MenuBuilder$MenuType;->b:I

    .line 188
    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/ui/menu/MenuBuilder$MenuType;)Ljava/lang/ref/WeakReference;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/dolphin/browser/ui/menu/MenuBuilder$MenuType;->d:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic a(Lcom/dolphin/browser/ui/menu/MenuBuilder$MenuType;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .locals 0

    .prologue
    .line 177
    iput-object p1, p0, Lcom/dolphin/browser/ui/menu/MenuBuilder$MenuType;->d:Ljava/lang/ref/WeakReference;

    return-object p1
.end method


# virtual methods
.method a()Landroid/view/LayoutInflater;
    .locals 4

    .prologue
    .line 192
    iget-object v0, p0, Lcom/dolphin/browser/ui/menu/MenuBuilder$MenuType;->c:Landroid/view/LayoutInflater;

    if-nez v0, :cond_0

    .line 193
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Lcom/dolphin/browser/ui/menu/MenuBuilder$MenuType;->a:Lcom/dolphin/browser/ui/menu/MenuBuilder;

    invoke-static {v1}, Lcom/dolphin/browser/ui/menu/MenuBuilder;->a(Lcom/dolphin/browser/ui/menu/MenuBuilder;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/ui/menu/MenuBuilder;->a:[I

    iget v3, p0, Lcom/dolphin/browser/ui/menu/MenuBuilder$MenuType;->b:I

    aget v2, v2, v3

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 195
    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/dolphin/browser/ui/menu/MenuBuilder$MenuType;->c:Landroid/view/LayoutInflater;

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/ui/menu/MenuBuilder$MenuType;->c:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method a(Landroid/view/ViewGroup;)Lcom/dolphin/browser/ui/menu/f;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 203
    sget-object v2, Lcom/dolphin/browser/ui/menu/MenuBuilder;->b:[I

    iget v3, p0, Lcom/dolphin/browser/ui/menu/MenuBuilder$MenuType;->b:I

    aget v2, v2, v3

    if-nez v2, :cond_0

    .line 227
    :goto_0
    return-object v1

    .line 207
    :cond_0
    monitor-enter p0

    .line 208
    :try_start_0
    iget-object v2, p0, Lcom/dolphin/browser/ui/menu/MenuBuilder$MenuType;->d:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/dolphin/browser/ui/menu/MenuBuilder$MenuType;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dolphin/browser/ui/menu/f;

    .line 210
    :cond_1
    if-nez v1, :cond_2

    .line 211
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/menu/MenuBuilder$MenuType;->a()Landroid/view/LayoutInflater;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/ui/menu/MenuBuilder;->b:[I

    iget v3, p0, Lcom/dolphin/browser/ui/menu/MenuBuilder$MenuType;->b:I

    aget v2, v2, v3

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/dolphin/browser/ui/menu/f;

    .line 213
    iget-object v2, p0, Lcom/dolphin/browser/ui/menu/MenuBuilder$MenuType;->a:Lcom/dolphin/browser/ui/menu/MenuBuilder;

    iget v3, p0, Lcom/dolphin/browser/ui/menu/MenuBuilder$MenuType;->b:I

    invoke-interface {v1, v2, v3}, Lcom/dolphin/browser/ui/menu/f;->a(Lcom/dolphin/browser/ui/menu/MenuBuilder;I)V

    .line 216
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/dolphin/browser/ui/menu/MenuBuilder$MenuType;->d:Ljava/lang/ref/WeakReference;

    .line 218
    iget-object v2, p0, Lcom/dolphin/browser/ui/menu/MenuBuilder$MenuType;->a:Lcom/dolphin/browser/ui/menu/MenuBuilder;

    invoke-static {v2}, Lcom/dolphin/browser/ui/menu/MenuBuilder;->b(Lcom/dolphin/browser/ui/menu/MenuBuilder;)Landroid/util/SparseArray;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 219
    move-object v0, v1

    check-cast v0, Landroid/view/View;

    move-object v2, v0

    .line 220
    iget-object v3, p0, Lcom/dolphin/browser/ui/menu/MenuBuilder$MenuType;->a:Lcom/dolphin/browser/ui/menu/MenuBuilder;

    invoke-static {v3}, Lcom/dolphin/browser/ui/menu/MenuBuilder;->b(Lcom/dolphin/browser/ui/menu/MenuBuilder;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 223
    iget-object v3, p0, Lcom/dolphin/browser/ui/menu/MenuBuilder$MenuType;->a:Lcom/dolphin/browser/ui/menu/MenuBuilder;

    invoke-static {v3}, Lcom/dolphin/browser/ui/menu/MenuBuilder;->b(Lcom/dolphin/browser/ui/menu/MenuBuilder;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 227
    :cond_2
    monitor-exit p0

    goto :goto_0

    .line 228
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method b()Z
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/dolphin/browser/ui/menu/MenuBuilder$MenuType;->d:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/ui/menu/MenuBuilder$MenuType;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
