.class Ldolphin/util/e;
.super Ljava/lang/Object;
.source "CLog.java"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field final synthetic a:Ldolphin/util/d;

.field private b:I


# direct methods
.method constructor <init>(Ldolphin/util/d;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 34
    iput-object p1, p0, Ldolphin/util/e;->a:Ldolphin/util/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput v0, p0, Ldolphin/util/e;->b:I

    .line 35
    iput v0, p0, Ldolphin/util/e;->b:I

    .line 36
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .line 40
    iget v0, p0, Ldolphin/util/e;->b:I

    iget-object v1, p0, Ldolphin/util/e;->a:Ldolphin/util/d;

    invoke-static {v1}, Ldolphin/util/d;->a(Ldolphin/util/d;)I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Ldolphin/util/e;->a:Ldolphin/util/d;

    invoke-static {v0}, Ldolphin/util/d;->b(Ldolphin/util/d;)I

    move-result v0

    iget v1, p0, Ldolphin/util/e;->b:I

    add-int/2addr v0, v1

    .line 46
    iget-object v1, p0, Ldolphin/util/e;->a:Ldolphin/util/d;

    invoke-static {v1}, Ldolphin/util/d;->c(Ldolphin/util/d;)I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-object v1, p0, Ldolphin/util/e;->a:Ldolphin/util/d;

    invoke-static {v1}, Ldolphin/util/d;->c(Ldolphin/util/d;)I

    move-result v1

    sub-int/2addr v0, v1

    .line 47
    :cond_0
    iget-object v1, p0, Ldolphin/util/e;->a:Ldolphin/util/d;

    invoke-static {v1}, Ldolphin/util/d;->d(Ldolphin/util/d;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    .line 49
    iget v1, p0, Ldolphin/util/e;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ldolphin/util/e;->b:I

    .line 50
    return-object v0
.end method

.method public remove()V
    .locals 0

    .prologue
    .line 55
    return-void
.end method
