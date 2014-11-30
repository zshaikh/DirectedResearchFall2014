.class public abstract Lcom/dolphin/browser/share/b/k;
.super Ljava/lang/Object;
.source "SharePlatform.java"


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static g()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<",
            "Lcom/dolphin/browser/share/b/k;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    new-instance v0, Lcom/dolphin/browser/share/b/l;

    invoke-direct {v0}, Lcom/dolphin/browser/share/b/l;-><init>()V

    return-object v0
.end method


# virtual methods
.method protected a(ILjava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 23
    iput p1, p0, Lcom/dolphin/browser/share/b/k;->a:I

    .line 24
    iput-object p2, p0, Lcom/dolphin/browser/share/b/k;->b:Ljava/lang/String;

    .line 25
    iput-object p3, p0, Lcom/dolphin/browser/share/b/k;->c:Landroid/graphics/drawable/Drawable;

    .line 26
    return-void
.end method

.method public a(Landroid/content/Context;Lcom/dolphin/browser/share/b/j;)V
    .locals 0

    .prologue
    .line 42
    return-void
.end method

.method public d()I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/dolphin/browser/share/b/k;->a:I

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/dolphin/browser/share/b/k;->b:Ljava/lang/String;

    return-object v0
.end method

.method public f()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/dolphin/browser/share/b/k;->c:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method
