.class public Lcom/dolphin/browser/k/j;
.super Ljava/lang/Object;
.source "ObservableManager.java"


# static fields
.field private static a:Lcom/dolphin/browser/k/j;


# instance fields
.field private b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/Observable;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lmobi/mgeek/TunnyBrowser/BrowserActivity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x0

    sput-object v0, Lcom/dolphin/browser/k/j;->a:Lcom/dolphin/browser/k/j;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/k/j;->b:Landroid/util/SparseArray;

    .line 34
    return-void
.end method

.method public static a()Lcom/dolphin/browser/k/j;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/dolphin/browser/k/j;->a:Lcom/dolphin/browser/k/j;

    return-object v0
.end method

.method public static a(Lmobi/mgeek/TunnyBrowser/BrowserActivity;)Lcom/dolphin/browser/k/j;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/dolphin/browser/k/j;->a:Lcom/dolphin/browser/k/j;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/dolphin/browser/k/j;->a:Lcom/dolphin/browser/k/j;

    iget-object v0, v0, Lcom/dolphin/browser/k/j;->c:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    if-eq v0, p0, :cond_1

    .line 20
    :cond_0
    new-instance v0, Lcom/dolphin/browser/k/j;

    invoke-direct {v0}, Lcom/dolphin/browser/k/j;-><init>()V

    sput-object v0, Lcom/dolphin/browser/k/j;->a:Lcom/dolphin/browser/k/j;

    .line 22
    :cond_1
    sget-object v0, Lcom/dolphin/browser/k/j;->a:Lcom/dolphin/browser/k/j;

    iput-object p0, v0, Lcom/dolphin/browser/k/j;->c:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    .line 23
    sget-object v0, Lcom/dolphin/browser/k/j;->a:Lcom/dolphin/browser/k/j;

    return-object v0
.end method


# virtual methods
.method public a(I)Ljava/util/Observable;
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/dolphin/browser/k/j;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Observable;

    .line 39
    if-nez v0, :cond_0

    .line 40
    invoke-static {p1}, Lcom/dolphin/browser/k/i;->a(I)Ljava/util/Observable;

    move-result-object v0

    .line 41
    iget-object v1, p0, Lcom/dolphin/browser/k/j;->b:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 43
    :cond_0
    return-object v0
.end method
