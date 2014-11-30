.class public Lam/sunrise/android/calendar/ui/widgets/al;
.super Ljava/lang/Object;
.source "TypefaceManager.java"


# static fields
.field private static a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 32
    new-instance v0, Landroid/util/SparseArray;

    invoke-static {}, Lam/sunrise/android/calendar/ui/widgets/am;->values()[Lam/sunrise/android/calendar/ui/widgets/am;

    move-result-object v1

    array-length v1, v1

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    sput-object v0, Lam/sunrise/android/calendar/ui/widgets/al;->a:Landroid/util/SparseArray;

    return-void
.end method

.method public static a(Landroid/content/Context;Lam/sunrise/android/calendar/ui/widgets/am;)Landroid/graphics/Typeface;
    .locals 3

    .prologue
    .line 35
    sget-object v0, Lam/sunrise/android/calendar/ui/widgets/al;->a:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lam/sunrise/android/calendar/ui/widgets/am;->ordinal()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;

    .line 36
    if-nez v0, :cond_0

    .line 37
    iget-object v0, p1, Lam/sunrise/android/calendar/ui/widgets/am;->g:Ljava/lang/String;

    const-string v1, "fonts/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 38
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    iget-object v1, p1, Lam/sunrise/android/calendar/ui/widgets/am;->g:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 42
    :goto_0
    if-eqz v0, :cond_0

    .line 43
    sget-object v1, Lam/sunrise/android/calendar/ui/widgets/al;->a:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lam/sunrise/android/calendar/ui/widgets/am;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 46
    :cond_0
    return-object v0

    .line 40
    :cond_1
    iget-object v0, p1, Lam/sunrise/android/calendar/ui/widgets/am;->g:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_0
.end method
