.class public Lcom/dolphin/browser/menu/x;
.super Ljava/lang/Object;
.source "MenuItemInfo.java"


# instance fields
.field private a:Lcom/dolphin/browser/c/a;

.field private b:Ljava/util/Observable;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:Z

.field private f:Z

.field private g:I

.field private h:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolphin/browser/menu/x;->e:Z

    .line 19
    iput-boolean v1, p0, Lcom/dolphin/browser/menu/x;->f:Z

    .line 20
    const/4 v0, -0x1

    iput v0, p0, Lcom/dolphin/browser/menu/x;->g:I

    .line 21
    iput-boolean v1, p0, Lcom/dolphin/browser/menu/x;->h:Z

    .line 24
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolphin/browser/menu/x;->e:Z

    .line 19
    iput-boolean v1, p0, Lcom/dolphin/browser/menu/x;->f:Z

    .line 20
    const/4 v0, -0x1

    iput v0, p0, Lcom/dolphin/browser/menu/x;->g:I

    .line 21
    iput-boolean v1, p0, Lcom/dolphin/browser/menu/x;->h:Z

    .line 28
    iput p1, p0, Lcom/dolphin/browser/menu/x;->g:I

    .line 29
    return-void
.end method

.method private i()Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 68
    .line 69
    invoke-virtual {p0}, Lcom/dolphin/browser/menu/x;->g()I

    move-result v0

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/dolphin/browser/menu/x;->d:I

    if-lez v0, :cond_1

    .line 70
    :cond_0
    invoke-static {}, Lcom/dolphin/browser/util/bb;->a()Lcom/dolphin/browser/util/bb;

    move-result-object v0

    iget v1, p0, Lcom/dolphin/browser/menu/x;->d:I

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/util/bb;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 78
    :goto_0
    return-object v0

    .line 71
    :cond_1
    invoke-virtual {p0}, Lcom/dolphin/browser/menu/x;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 72
    invoke-static {}, Lcom/dolphin/browser/util/bb;->a()Lcom/dolphin/browser/util/bb;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/menu/MenuBar;->b:[I

    invoke-virtual {p0}, Lcom/dolphin/browser/menu/x;->g()I

    move-result v2

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/util/bb;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 75
    :cond_2
    invoke-static {}, Lcom/dolphin/browser/util/bb;->a()Lcom/dolphin/browser/util/bb;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/menu/MenuBar;->b:[I

    invoke-virtual {p0}, Lcom/dolphin/browser/menu/x;->g()I

    move-result v2

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/util/bb;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public a()Lcom/dolphin/browser/c/a;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/dolphin/browser/menu/x;->a:Lcom/dolphin/browser/c/a;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 83
    iput p1, p0, Lcom/dolphin/browser/menu/x;->d:I

    .line 84
    return-void
.end method

.method public a(Lcom/dolphin/browser/c/a;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/dolphin/browser/menu/x;->a:Lcom/dolphin/browser/c/a;

    .line 39
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/dolphin/browser/menu/x;->c:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/dolphin/browser/menu/x;->e:Z

    .line 94
    return-void
.end method

.method public b()Ljava/util/Observable;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/dolphin/browser/menu/x;->b:Ljava/util/Observable;

    return-object v0
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 103
    iput-boolean p1, p0, Lcom/dolphin/browser/menu/x;->f:Z

    .line 104
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/dolphin/browser/menu/x;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c(Z)V
    .locals 0

    .prologue
    .line 124
    iput-boolean p1, p0, Lcom/dolphin/browser/menu/x;->h:Z

    .line 125
    return-void
.end method

.method public d()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/dolphin/browser/menu/x;->i()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/dolphin/browser/menu/x;->e:Z

    return v0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/dolphin/browser/menu/x;->f:Z

    return v0
.end method

.method public g()I
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lcom/dolphin/browser/menu/x;->g:I

    return v0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/dolphin/browser/menu/x;->h:Z

    return v0
.end method
