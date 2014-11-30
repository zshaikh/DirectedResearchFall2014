.class public Lcom/dolphin/browser/menu/ae;
.super Ljava/util/Observable;
.source "PanelMenuItemInfo.java"


# instance fields
.field private a:Lcom/dolphin/browser/c/a;

.field private final b:I

.field private c:Ljava/lang/String;

.field private d:Landroid/graphics/drawable/Drawable;

.field private e:Z

.field private f:Z

.field private g:I

.field private h:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 37
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    .line 34
    iput v0, p0, Lcom/dolphin/browser/menu/ae;->g:I

    .line 38
    iput p1, p0, Lcom/dolphin/browser/menu/ae;->b:I

    .line 39
    iput-boolean v0, p0, Lcom/dolphin/browser/menu/ae;->e:Z

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dolphin/browser/menu/ae;->f:Z

    .line 41
    return-void
.end method

.method private i()Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 70
    .line 72
    invoke-virtual {p0}, Lcom/dolphin/browser/menu/ae;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    invoke-static {}, Lcom/dolphin/browser/util/bb;->a()Lcom/dolphin/browser/util/bb;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/menu/v;->f:[[I

    invoke-virtual {p0}, Lcom/dolphin/browser/menu/ae;->f()I

    move-result v2

    aget-object v1, v1, v2

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/util/bb;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 79
    :goto_0
    return-object v0

    .line 76
    :cond_0
    invoke-static {}, Lcom/dolphin/browser/util/bb;->a()Lcom/dolphin/browser/util/bb;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/menu/v;->f:[[I

    invoke-virtual {p0}, Lcom/dolphin/browser/menu/ae;->f()I

    move-result v2

    aget-object v1, v1, v2

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/util/bb;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method private j()V
    .locals 0

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/dolphin/browser/menu/ae;->setChanged()V

    .line 107
    invoke-virtual {p0}, Lcom/dolphin/browser/menu/ae;->notifyObservers()V

    .line 108
    return-void
.end method


# virtual methods
.method public a()Lcom/dolphin/browser/c/a;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/dolphin/browser/menu/ae;->a:Lcom/dolphin/browser/c/a;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 119
    iput p1, p0, Lcom/dolphin/browser/menu/ae;->g:I

    .line 120
    invoke-direct {p0}, Lcom/dolphin/browser/menu/ae;->j()V

    .line 121
    return-void
.end method

.method public a(Lcom/dolphin/browser/c/a;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/dolphin/browser/menu/ae;->a:Lcom/dolphin/browser/c/a;

    .line 49
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/dolphin/browser/menu/ae;->e:Z

    .line 93
    invoke-direct {p0}, Lcom/dolphin/browser/menu/ae;->j()V

    .line 94
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 3

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/dolphin/browser/menu/ae;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/menu/v;->e:[[I

    invoke-virtual {p0}, Lcom/dolphin/browser/menu/ae;->f()I

    move-result v2

    aget-object v1, v1, v2

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/ThemeManager;->d(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/menu/ae;->c:Ljava/lang/String;

    .line 59
    :goto_0
    iget-object v0, p0, Lcom/dolphin/browser/menu/ae;->c:Ljava/lang/String;

    return-object v0

    .line 56
    :cond_0
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/menu/v;->e:[[I

    invoke-virtual {p0}, Lcom/dolphin/browser/menu/ae;->f()I

    move-result v2

    aget-object v1, v1, v2

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/ThemeManager;->d(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/menu/ae;->c:Ljava/lang/String;

    goto :goto_0
.end method

.method public b(I)V
    .locals 0

    .prologue
    .line 128
    iput p1, p0, Lcom/dolphin/browser/menu/ae;->h:I

    .line 129
    invoke-direct {p0}, Lcom/dolphin/browser/menu/ae;->j()V

    .line 130
    return-void
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 101
    iput-boolean p1, p0, Lcom/dolphin/browser/menu/ae;->f:Z

    .line 102
    invoke-direct {p0}, Lcom/dolphin/browser/menu/ae;->j()V

    .line 103
    return-void
.end method

.method public c()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/dolphin/browser/menu/ae;->d:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 64
    invoke-direct {p0}, Lcom/dolphin/browser/menu/ae;->i()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 66
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/menu/ae;->d:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/dolphin/browser/menu/ae;->e:Z

    return v0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/dolphin/browser/menu/ae;->f:Z

    return v0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Lcom/dolphin/browser/menu/ae;->b:I

    return v0
.end method

.method public g()I
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lcom/dolphin/browser/menu/ae;->g:I

    return v0
.end method

.method public h()I
    .locals 1

    .prologue
    .line 124
    iget v0, p0, Lcom/dolphin/browser/menu/ae;->h:I

    return v0
.end method
