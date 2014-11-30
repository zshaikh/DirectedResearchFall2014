.class Lcom/e/a/c;
.super Ljava/lang/Object;
.source "DrawCommand.java"

# interfaces
.implements Lcom/e/a/ai;
.implements Lcom/e/a/aj;
.implements Lcom/e/a/ak;


# instance fields
.field private a:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/e/a/b;",
            ">;"
        }
    .end annotation
.end field

.field private b:I

.field private c:I

.field private d:Lcom/e/a/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput v0, p0, Lcom/e/a/c;->b:I

    .line 43
    iput v0, p0, Lcom/e/a/c;->c:I

    .line 46
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/e/a/c;->a:Ljava/util/LinkedList;

    .line 47
    return-void
.end method

.method static synthetic a(Lcom/e/a/c;)Lcom/e/a/a;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/e/a/c;->d:Lcom/e/a/a;

    return-object v0
.end method


# virtual methods
.method public a(II)Lcom/e/a/ai;
    .locals 0

    .prologue
    .line 143
    iput p1, p0, Lcom/e/a/c;->b:I

    .line 144
    iput p2, p0, Lcom/e/a/c;->c:I

    .line 145
    return-object p0
.end method

.method public a()V
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/e/a/c;->a:Ljava/util/LinkedList;

    new-instance v1, Lcom/e/a/d;

    invoke-direct {v1, p0}, Lcom/e/a/d;-><init>(Lcom/e/a/c;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 57
    return-void
.end method

.method public a(F)V
    .locals 2

    .prologue
    .line 198
    iget-object v0, p0, Lcom/e/a/c;->a:Ljava/util/LinkedList;

    new-instance v1, Lcom/e/a/i;

    invoke-direct {v1, p0, p1}, Lcom/e/a/i;-><init>(Lcom/e/a/c;F)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 204
    return-void
.end method

.method public a(FF)V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/e/a/c;->a:Ljava/util/LinkedList;

    new-instance v1, Lcom/e/a/m;

    invoke-direct {v1, p0, p1, p2}, Lcom/e/a/m;-><init>(Lcom/e/a/c;FF)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 78
    return-void
.end method

.method public a(FFFFLcom/e/a/aj;)V
    .locals 7

    .prologue
    .line 92
    iget-object v6, p0, Lcom/e/a/c;->a:Ljava/util/LinkedList;

    new-instance v0, Lcom/e/a/o;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/e/a/o;-><init>(Lcom/e/a/c;FFFF)V

    invoke-virtual {v6, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 98
    return-void
.end method

.method public a(FFFLcom/e/a/aj;)V
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/e/a/c;->a:Ljava/util/LinkedList;

    new-instance v1, Lcom/e/a/q;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/e/a/q;-><init>(Lcom/e/a/c;FFF)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 118
    return-void
.end method

.method public a(I)V
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/e/a/c;->a:Ljava/util/LinkedList;

    new-instance v1, Lcom/e/a/f;

    invoke-direct {v1, p0, p1}, Lcom/e/a/f;-><init>(Lcom/e/a/c;I)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 174
    return-void
.end method

.method public a(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/e/a/a;)V
    .locals 2

    .prologue
    .line 227
    iput-object p3, p0, Lcom/e/a/c;->d:Lcom/e/a/a;

    .line 228
    iget-object v0, p0, Lcom/e/a/c;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/e/a/b;

    .line 230
    invoke-virtual {v0, p1, p2}, Lcom/e/a/b;->a(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 232
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/e/a/c;->d:Lcom/e/a/a;

    .line 233
    return-void
.end method

.method public a(Landroid/graphics/Matrix;)V
    .locals 3

    .prologue
    .line 61
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0, p1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 62
    iget-object v1, p0, Lcom/e/a/c;->a:Ljava/util/LinkedList;

    new-instance v2, Lcom/e/a/l;

    invoke-direct {v2, p0, v0}, Lcom/e/a/l;-><init>(Lcom/e/a/c;Landroid/graphics/Matrix;)V

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 68
    return-void
.end method

.method public a(Landroid/graphics/Paint$Cap;)V
    .locals 2

    .prologue
    .line 208
    iget-object v0, p0, Lcom/e/a/c;->a:Ljava/util/LinkedList;

    new-instance v1, Lcom/e/a/j;

    invoke-direct {v1, p0, p1}, Lcom/e/a/j;-><init>(Lcom/e/a/c;Landroid/graphics/Paint$Cap;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 214
    return-void
.end method

.method public a(Landroid/graphics/Paint$Join;)V
    .locals 2

    .prologue
    .line 218
    iget-object v0, p0, Lcom/e/a/c;->a:Ljava/util/LinkedList;

    new-instance v1, Lcom/e/a/k;

    invoke-direct {v1, p0, p1}, Lcom/e/a/k;-><init>(Lcom/e/a/c;Landroid/graphics/Paint$Join;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 224
    return-void
.end method

.method public a(Landroid/graphics/Paint$Style;)V
    .locals 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/e/a/c;->a:Ljava/util/LinkedList;

    new-instance v1, Lcom/e/a/e;

    invoke-direct {v1, p0, p1}, Lcom/e/a/e;-><init>(Lcom/e/a/c;Landroid/graphics/Paint$Style;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 160
    return-void
.end method

.method public a(Landroid/graphics/Path;Lcom/e/a/aj;)V
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/e/a/c;->a:Ljava/util/LinkedList;

    new-instance v1, Lcom/e/a/s;

    invoke-direct {v1, p0, p1}, Lcom/e/a/s;-><init>(Lcom/e/a/c;Landroid/graphics/Path;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 139
    return-void
.end method

.method public a(Landroid/graphics/RectF;Lcom/e/a/aj;)V
    .locals 3

    .prologue
    .line 122
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 123
    iget-object v1, p0, Lcom/e/a/c;->a:Ljava/util/LinkedList;

    new-instance v2, Lcom/e/a/r;

    invoke-direct {v2, p0, v0}, Lcom/e/a/r;-><init>(Lcom/e/a/c;Landroid/graphics/RectF;)V

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 129
    return-void
.end method

.method public a(Landroid/graphics/Shader;)V
    .locals 2

    .prologue
    .line 188
    iget-object v0, p0, Lcom/e/a/c;->a:Ljava/util/LinkedList;

    new-instance v1, Lcom/e/a/h;

    invoke-direct {v1, p0, p1}, Lcom/e/a/h;-><init>(Lcom/e/a/c;Landroid/graphics/Shader;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 194
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/e/a/c;->a:Ljava/util/LinkedList;

    new-instance v1, Lcom/e/a/n;

    invoke-direct {v1, p0}, Lcom/e/a/n;-><init>(Lcom/e/a/c;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 88
    return-void
.end method

.method public b(FFFFLcom/e/a/aj;)V
    .locals 7

    .prologue
    .line 102
    iget-object v6, p0, Lcom/e/a/c;->a:Ljava/util/LinkedList;

    new-instance v0, Lcom/e/a/p;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/e/a/p;-><init>(Lcom/e/a/c;FFFF)V

    invoke-virtual {v6, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 108
    return-void
.end method

.method public b(I)V
    .locals 2

    .prologue
    .line 178
    iget-object v0, p0, Lcom/e/a/c;->a:Ljava/util/LinkedList;

    new-instance v1, Lcom/e/a/g;

    invoke-direct {v1, p0, p1}, Lcom/e/a/g;-><init>(Lcom/e/a/c;I)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 184
    return-void
.end method

.method public c()V
    .locals 0

    .prologue
    .line 150
    return-void
.end method

.method public d()I
    .locals 1

    .prologue
    .line 236
    iget v0, p0, Lcom/e/a/c;->b:I

    return v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 240
    iget v0, p0, Lcom/e/a/c;->c:I

    return v0
.end method
