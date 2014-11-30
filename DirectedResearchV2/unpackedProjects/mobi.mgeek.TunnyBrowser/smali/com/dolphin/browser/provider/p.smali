.class public Lcom/dolphin/browser/provider/p;
.super Ljava/lang/Object;
.source "BuiltinMostVisitedItem.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/provider/p;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, -0x1

    .line 60
    array-length v0, p0

    .line 61
    rem-int/lit8 v1, v0, 0x6

    if-eqz v1, :cond_1

    .line 63
    const/4 v0, 0x0

    .line 96
    :cond_0
    return-object v0

    .line 66
    :cond_1
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/core/AppContext;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 67
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/core/AppContext;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 69
    div-int/lit8 v4, v0, 0x6

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 71
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v4, :cond_0

    .line 72
    new-instance v5, Lcom/dolphin/browser/provider/p;

    invoke-direct {v5}, Lcom/dolphin/browser/provider/p;-><init>()V

    .line 73
    mul-int/lit8 v6, v1, 0x6

    .line 74
    add-int/lit8 v7, v6, 0x0

    aget-object v7, p0, v7

    iput-object v7, v5, Lcom/dolphin/browser/provider/p;->a:Ljava/lang/String;

    .line 75
    add-int/lit8 v7, v6, 0x1

    aget-object v7, p0, v7

    iput-object v7, v5, Lcom/dolphin/browser/provider/p;->b:Ljava/lang/String;

    .line 76
    add-int/lit8 v7, v6, 0x2

    aget-object v7, p0, v7

    iput-object v7, v5, Lcom/dolphin/browser/provider/p;->c:Ljava/lang/String;

    .line 78
    add-int/lit8 v7, v6, 0x3

    aget-object v7, p0, v7

    .line 79
    const-string v8, "drawable"

    invoke-virtual {v2, v7, v8, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    iput v7, v5, Lcom/dolphin/browser/provider/p;->d:I

    .line 81
    add-int/lit8 v7, v6, 0x4

    aget-object v7, p0, v7

    .line 82
    const-string v8, "true"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 83
    iput v1, v5, Lcom/dolphin/browser/provider/p;->e:I

    .line 88
    :goto_1
    add-int/lit8 v6, v6, 0x5

    aget-object v6, p0, v6

    .line 89
    const-string v7, "true"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 90
    iput v1, v5, Lcom/dolphin/browser/provider/p;->f:I

    .line 94
    :goto_2
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 85
    :cond_2
    iput v9, v5, Lcom/dolphin/browser/provider/p;->e:I

    goto :goto_1

    .line 92
    :cond_3
    iput v9, v5, Lcom/dolphin/browser/provider/p;->f:I

    goto :goto_2
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/dolphin/browser/provider/p;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/dolphin/browser/provider/p;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/dolphin/browser/provider/p;->d:I

    return v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/dolphin/browser/provider/p;->e:I

    return v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/dolphin/browser/provider/p;->f:I

    return v0
.end method
