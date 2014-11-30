.class public Lcom/dolphin/browser/share/box/p;
.super Ljava/lang/Object;
.source "WebCapture.java"


# static fields
.field private static e:Lcom/dolphin/browser/share/box/p;


# instance fields
.field private a:Z

.field private b:I

.field private c:I

.field private d:Lcom/dolphin/browser/share/box/r;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    return-void
.end method

.method public static a()Lcom/dolphin/browser/share/box/p;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/dolphin/browser/share/box/p;->e:Lcom/dolphin/browser/share/box/p;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcom/dolphin/browser/share/box/p;

    invoke-direct {v0}, Lcom/dolphin/browser/share/box/p;-><init>()V

    sput-object v0, Lcom/dolphin/browser/share/box/p;->e:Lcom/dolphin/browser/share/box/p;

    .line 32
    :cond_0
    sget-object v0, Lcom/dolphin/browser/share/box/p;->e:Lcom/dolphin/browser/share/box/p;

    return-object v0
.end method

.method static synthetic a(Lcom/dolphin/browser/share/box/p;)Lcom/dolphin/browser/share/box/r;
    .locals 1

    .prologue
    .line 9
    iget-object v0, p0, Lcom/dolphin/browser/share/box/p;->d:Lcom/dolphin/browser/share/box/r;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 72
    const/4 v0, 0x0

    .line 73
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 74
    invoke-static {}, Lcom/dolphin/browser/b/a;->a()Lcom/dolphin/browser/b/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/b/a;->f(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 77
    :cond_0
    return-object v0
.end method

.method public a(II)V
    .locals 0

    .prologue
    .line 36
    iput p1, p0, Lcom/dolphin/browser/share/box/p;->b:I

    .line 37
    iput p2, p0, Lcom/dolphin/browser/share/box/p;->c:I

    .line 38
    return-void
.end method

.method public a(Lcom/dolphin/browser/share/box/r;)V
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/dolphin/browser/share/box/p;->d:Lcom/dolphin/browser/share/box/r;

    .line 24
    return-void
.end method

.method public a(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 57
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    invoke-static {}, Lcom/dolphin/browser/b/a;->a()Lcom/dolphin/browser/b/a;

    move-result-object v0

    new-instance v1, Lcom/dolphin/browser/share/box/q;

    invoke-direct {v1, p0}, Lcom/dolphin/browser/share/box/q;-><init>(Lcom/dolphin/browser/share/box/p;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/dolphin/browser/b/a;->b(Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/dolphin/browser/b/i;)V

    .line 69
    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/dolphin/browser/share/box/p;->a:Z

    .line 54
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/dolphin/browser/share/box/p;->b:I

    return v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/dolphin/browser/share/box/p;->c:I

    return v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/dolphin/browser/share/box/p;->a:Z

    return v0
.end method
