.class Ldolphin/util/d;
.super Ljava/lang/Object;
.source "CLog.java"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/16 v0, 0x1f4

    iput v0, p0, Ldolphin/util/d;->a:I

    .line 59
    iput v1, p0, Ldolphin/util/d;->b:I

    .line 60
    iput v1, p0, Ldolphin/util/d;->c:I

    .line 61
    iput v1, p0, Ldolphin/util/d;->d:I

    .line 62
    iput-object v3, p0, Ldolphin/util/d;->e:Ljava/util/Vector;

    .line 65
    new-instance v0, Ljava/util/Vector;

    iget v2, p0, Ldolphin/util/d;->a:I

    invoke-direct {v0, v2}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Ldolphin/util/d;->e:Ljava/util/Vector;

    move v0, v1

    .line 66
    :goto_0
    iget v2, p0, Ldolphin/util/d;->a:I

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Ldolphin/util/d;->e:Ljava/util/Vector;

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 67
    :cond_0
    iput v1, p0, Ldolphin/util/d;->b:I

    .line 68
    iput v1, p0, Ldolphin/util/d;->c:I

    .line 69
    iput v1, p0, Ldolphin/util/d;->d:I

    .line 70
    return-void
.end method

.method static synthetic a(Ldolphin/util/d;)I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Ldolphin/util/d;->b:I

    return v0
.end method

.method static synthetic b(Ldolphin/util/d;)I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Ldolphin/util/d;->c:I

    return v0
.end method

.method static synthetic c(Ldolphin/util/d;)I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Ldolphin/util/d;->a:I

    return v0
.end method

.method static synthetic d(Ldolphin/util/d;)Ljava/util/Vector;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Ldolphin/util/d;->e:Ljava/util/Vector;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 112
    new-instance v0, Ldolphin/util/e;

    invoke-direct {v0, p0}, Ldolphin/util/e;-><init>(Ldolphin/util/d;)V

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 87
    iget v0, p0, Ldolphin/util/d;->b:I

    iget v2, p0, Ldolphin/util/d;->a:I

    if-ne v0, v2, :cond_2

    .line 89
    iget v0, p0, Ldolphin/util/d;->c:I

    iget v2, p0, Ldolphin/util/d;->a:I

    add-int/lit8 v2, v2, -0x1

    if-ne v0, v2, :cond_0

    move v0, v1

    :goto_0
    iput v0, p0, Ldolphin/util/d;->c:I

    .line 90
    iget-object v0, p0, Ldolphin/util/d;->e:Ljava/util/Vector;

    iget v2, p0, Ldolphin/util/d;->d:I

    invoke-virtual {v0, p1, v2}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 91
    iget v0, p0, Ldolphin/util/d;->d:I

    iget v2, p0, Ldolphin/util/d;->a:I

    add-int/lit8 v2, v2, -0x1

    if-ne v0, v2, :cond_1

    :goto_1
    iput v1, p0, Ldolphin/util/d;->d:I

    .line 98
    :goto_2
    return-void

    .line 89
    :cond_0
    iget v0, p0, Ldolphin/util/d;->c:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 91
    :cond_1
    iget v0, p0, Ldolphin/util/d;->d:I

    add-int/lit8 v1, v0, 0x1

    goto :goto_1

    .line 94
    :cond_2
    iget-object v0, p0, Ldolphin/util/d;->e:Ljava/util/Vector;

    iget v2, p0, Ldolphin/util/d;->d:I

    invoke-virtual {v0, p1, v2}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 95
    iget v0, p0, Ldolphin/util/d;->d:I

    iget v2, p0, Ldolphin/util/d;->a:I

    add-int/lit8 v2, v2, -0x1

    if-ne v0, v2, :cond_3

    :goto_3
    iput v1, p0, Ldolphin/util/d;->d:I

    .line 96
    iget v0, p0, Ldolphin/util/d;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ldolphin/util/d;->b:I

    goto :goto_2

    .line 95
    :cond_3
    iget v0, p0, Ldolphin/util/d;->d:I

    add-int/lit8 v1, v0, 0x1

    goto :goto_3
.end method
