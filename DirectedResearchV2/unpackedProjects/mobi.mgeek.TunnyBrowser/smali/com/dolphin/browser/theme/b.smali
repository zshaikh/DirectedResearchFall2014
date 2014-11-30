.class public Lcom/dolphin/browser/theme/b;
.super Ljava/lang/Object;
.source "ColorProcessor.java"

# interfaces
.implements Lcom/dolphin/browser/theme/c/f;


# static fields
.field public static final a:[I


# instance fields
.field private b:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 30
    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a0062

    aput v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a0063

    aput v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a0095

    aput v2, v0, v1

    sput-object v0, Lcom/dolphin/browser/theme/b;->a:[I

    return-void
.end method

.method constructor <init>()V
    .locals 4

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    sget-object v0, Lcom/dolphin/browser/theme/b;->a:[I

    array-length v0, v0

    new-array v1, v0, [I

    .line 40
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v0

    .line 41
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 42
    const/4 v0, 0x0

    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    .line 43
    sget-object v3, Lcom/dolphin/browser/theme/b;->a:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    aput v3, v1, v0

    .line 42
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 45
    :cond_0
    iput-object v1, p0, Lcom/dolphin/browser/theme/b;->b:[I

    .line 46
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method public a(II)I
    .locals 2

    .prologue
    .line 50
    sget-object v0, Lcom/dolphin/browser/theme/b;->a:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    if-ne p1, v0, :cond_1

    .line 51
    const/high16 v0, -0x1000000

    or-int/2addr p2, v0

    .line 57
    :cond_0
    :goto_0
    return p2

    .line 52
    :cond_1
    sget-object v0, Lcom/dolphin/browser/theme/b;->a:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    if-ne p1, v0, :cond_2

    .line 53
    const v0, 0xffffff

    and-int/2addr v0, p2

    const/high16 v1, -0x23000000

    or-int p2, v0, v1

    goto :goto_0

    .line 54
    :cond_2
    sget-object v0, Lcom/dolphin/browser/theme/b;->a:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    if-ne p1, v0, :cond_0

    .line 55
    const/high16 v0, 0x66000000

    or-int/2addr p2, v0

    goto :goto_0
.end method

.method public a([I)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 62
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 74
    :cond_0
    return-void

    .line 65
    :cond_1
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/theme/ar;->a(Landroid/content/Context;)Lcom/dolphin/browser/theme/i;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/theme/ar;

    invoke-virtual {v0}, Lcom/dolphin/browser/theme/ar;->e()I

    move-result v3

    .line 66
    iget-object v4, p0, Lcom/dolphin/browser/theme/b;->b:[I

    move v0, v1

    .line 67
    :goto_0
    array-length v2, v4

    if-ge v0, v2, :cond_0

    move v2, v1

    .line 68
    :goto_1
    array-length v5, p1

    if-ge v2, v5, :cond_3

    .line 69
    aget v5, p1, v2

    aget v6, v4, v0

    if-ne v5, v6, :cond_2

    .line 70
    sget-object v5, Lcom/dolphin/browser/theme/b;->a:[I

    aget v5, v5, v0

    invoke-virtual {p0, v5, v3}, Lcom/dolphin/browser/theme/b;->a(II)I

    move-result v5

    aput v5, p1, v2

    .line 68
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 67
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x0

    return v0
.end method
