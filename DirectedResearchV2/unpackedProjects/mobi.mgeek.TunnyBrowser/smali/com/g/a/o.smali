.class public abstract Lcom/g/a/o;
.super Ljava/lang/Object;
.source "Keyframe.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field a:F

.field b:Ljava/lang/Class;

.field c:Z

.field private d:Landroid/view/animation/Interpolator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/g/a/o;->d:Landroid/view/animation/Interpolator;

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/g/a/o;->c:Z

    .line 320
    return-void
.end method

.method public static a(F)Lcom/g/a/o;
    .locals 1

    .prologue
    .line 92
    new-instance v0, Lcom/g/a/q;

    invoke-direct {v0, p0}, Lcom/g/a/q;-><init>(F)V

    return-object v0
.end method

.method public static a(FF)Lcom/g/a/o;
    .locals 1

    .prologue
    .line 108
    new-instance v0, Lcom/g/a/p;

    invoke-direct {v0, p0, p1}, Lcom/g/a/p;-><init>(FF)V

    return-object v0
.end method

.method public static a(FI)Lcom/g/a/o;
    .locals 1

    .prologue
    .line 76
    new-instance v0, Lcom/g/a/q;

    invoke-direct {v0, p0, p1}, Lcom/g/a/q;-><init>(FI)V

    return-object v0
.end method

.method public static b(F)Lcom/g/a/o;
    .locals 1

    .prologue
    .line 124
    new-instance v0, Lcom/g/a/p;

    invoke-direct {v0, p0}, Lcom/g/a/p;-><init>(F)V

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/animation/Interpolator;)V
    .locals 0

    .prologue
    .line 221
    iput-object p1, p0, Lcom/g/a/o;->d:Landroid/view/animation/Interpolator;

    .line 222
    return-void
.end method

.method public abstract a(Ljava/lang/Object;)V
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 167
    iget-boolean v0, p0, Lcom/g/a/o;->c:Z

    return v0
.end method

.method public abstract b()Ljava/lang/Object;
.end method

.method public c()F
    .locals 1

    .prologue
    .line 191
    iget v0, p0, Lcom/g/a/o;->a:F

    return v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/g/a/o;->e()Lcom/g/a/o;

    move-result-object v0

    return-object v0
.end method

.method public d()Landroid/view/animation/Interpolator;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/g/a/o;->d:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method public abstract e()Lcom/g/a/o;
.end method
