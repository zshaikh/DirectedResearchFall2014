.class public Lcom/dolphin/browser/theme/ak;
.super Ljava/lang/Object;
.source "ThemeConfiguration.java"

# interfaces
.implements Lcom/dolphin/browser/theme/h;


# static fields
.field private static a:Lcom/dolphin/browser/theme/ak;


# instance fields
.field private b:Lcom/dolphin/browser/theme/h;


# direct methods
.method private constructor <init>(Lcom/dolphin/browser/theme/h;)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/dolphin/browser/theme/ak;->b:Lcom/dolphin/browser/theme/h;

    .line 66
    return-void
.end method

.method public static final H()Lcom/dolphin/browser/theme/ak;
    .locals 3

    .prologue
    .line 39
    sget-object v0, Lcom/dolphin/browser/theme/ak;->a:Lcom/dolphin/browser/theme/ak;

    if-nez v0, :cond_0

    .line 41
    :try_start_0
    const-string v0, "com.dolphin.browser.theme.al"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 42
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 43
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 44
    new-instance v1, Lcom/dolphin/browser/theme/ak;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/theme/h;

    invoke-direct {v1, v0}, Lcom/dolphin/browser/theme/ak;-><init>(Lcom/dolphin/browser/theme/h;)V

    sput-object v1, Lcom/dolphin/browser/theme/ak;->a:Lcom/dolphin/browser/theme/ak;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_5

    .line 59
    :cond_0
    sget-object v0, Lcom/dolphin/browser/theme/ak;->a:Lcom/dolphin/browser/theme/ak;

    return-object v0

    .line 45
    :catch_0
    move-exception v0

    .line 46
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 47
    :catch_1
    move-exception v0

    .line 48
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 49
    :catch_2
    move-exception v0

    .line 50
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 51
    :catch_3
    move-exception v0

    .line 52
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 53
    :catch_4
    move-exception v0

    .line 54
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 55
    :catch_5
    move-exception v0

    .line 56
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public A()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/dolphin/browser/theme/ak;->b:Lcom/dolphin/browser/theme/h;

    invoke-interface {v0}, Lcom/dolphin/browser/theme/h;->A()Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public B()Ljava/io/File;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/dolphin/browser/theme/ak;->b:Lcom/dolphin/browser/theme/h;

    invoke-interface {v0}, Lcom/dolphin/browser/theme/h;->B()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public C()Z
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/dolphin/browser/theme/ak;->b:Lcom/dolphin/browser/theme/h;

    invoke-interface {v0}, Lcom/dolphin/browser/theme/h;->C()Z

    move-result v0

    return v0
.end method

.method public D()Z
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/dolphin/browser/theme/ak;->b:Lcom/dolphin/browser/theme/h;

    invoke-interface {v0}, Lcom/dolphin/browser/theme/h;->D()Z

    move-result v0

    return v0
.end method

.method public E()Z
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/dolphin/browser/theme/ak;->b:Lcom/dolphin/browser/theme/h;

    invoke-interface {v0}, Lcom/dolphin/browser/theme/h;->E()Z

    move-result v0

    return v0
.end method

.method public F()Lcom/dolphin/browser/theme/b/h;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/dolphin/browser/theme/ak;->b:Lcom/dolphin/browser/theme/h;

    invoke-interface {v0}, Lcom/dolphin/browser/theme/h;->F()Lcom/dolphin/browser/theme/b/h;

    move-result-object v0

    return-object v0
.end method

.method public G()I
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/dolphin/browser/theme/ak;->b:Lcom/dolphin/browser/theme/h;

    invoke-interface {v0}, Lcom/dolphin/browser/theme/h;->G()I

    move-result v0

    return v0
.end method

.method public a()Lcom/dolphin/browser/theme/c/f;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/dolphin/browser/theme/ak;->b:Lcom/dolphin/browser/theme/h;

    invoke-interface {v0}, Lcom/dolphin/browser/theme/h;->a()Lcom/dolphin/browser/theme/c/f;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/pm/PackageInfo;)Z
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/dolphin/browser/theme/ak;->b:Lcom/dolphin/browser/theme/h;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/theme/h;->a(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    return v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/dolphin/browser/theme/ak;->b:Lcom/dolphin/browser/theme/h;

    invoke-interface {v0}, Lcom/dolphin/browser/theme/h;->b()I

    move-result v0

    return v0
.end method

.method public c()Lcom/dolphin/browser/theme/d/b;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/dolphin/browser/theme/ak;->b:Lcom/dolphin/browser/theme/h;

    invoke-interface {v0}, Lcom/dolphin/browser/theme/h;->c()Lcom/dolphin/browser/theme/d/b;

    move-result-object v0

    return-object v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/dolphin/browser/theme/ak;->b:Lcom/dolphin/browser/theme/h;

    invoke-interface {v0}, Lcom/dolphin/browser/theme/h;->d()I

    move-result v0

    return v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/dolphin/browser/theme/ak;->b:Lcom/dolphin/browser/theme/h;

    invoke-interface {v0}, Lcom/dolphin/browser/theme/h;->e()I

    move-result v0

    return v0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/dolphin/browser/theme/ak;->b:Lcom/dolphin/browser/theme/h;

    invoke-interface {v0}, Lcom/dolphin/browser/theme/h;->f()I

    move-result v0

    return v0
.end method

.method public g()I
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/dolphin/browser/theme/ak;->b:Lcom/dolphin/browser/theme/h;

    invoke-interface {v0}, Lcom/dolphin/browser/theme/h;->g()I

    move-result v0

    return v0
.end method

.method public h()I
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/dolphin/browser/theme/ak;->b:Lcom/dolphin/browser/theme/h;

    invoke-interface {v0}, Lcom/dolphin/browser/theme/h;->h()I

    move-result v0

    return v0
.end method

.method public i()I
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/dolphin/browser/theme/ak;->b:Lcom/dolphin/browser/theme/h;

    invoke-interface {v0}, Lcom/dolphin/browser/theme/h;->i()I

    move-result v0

    return v0
.end method

.method public j()I
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/dolphin/browser/theme/ak;->b:Lcom/dolphin/browser/theme/h;

    invoke-interface {v0}, Lcom/dolphin/browser/theme/h;->j()I

    move-result v0

    return v0
.end method

.method public k()I
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/dolphin/browser/theme/ak;->b:Lcom/dolphin/browser/theme/h;

    invoke-interface {v0}, Lcom/dolphin/browser/theme/h;->k()I

    move-result v0

    return v0
.end method

.method public l()I
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/dolphin/browser/theme/ak;->b:Lcom/dolphin/browser/theme/h;

    invoke-interface {v0}, Lcom/dolphin/browser/theme/h;->l()I

    move-result v0

    return v0
.end method

.method public m()[I
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/dolphin/browser/theme/ak;->b:Lcom/dolphin/browser/theme/h;

    invoke-interface {v0}, Lcom/dolphin/browser/theme/h;->m()[I

    move-result-object v0

    return-object v0
.end method

.method public n()I
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/dolphin/browser/theme/ak;->b:Lcom/dolphin/browser/theme/h;

    invoke-interface {v0}, Lcom/dolphin/browser/theme/h;->n()I

    move-result v0

    return v0
.end method

.method public o()I
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/dolphin/browser/theme/ak;->b:Lcom/dolphin/browser/theme/h;

    invoke-interface {v0}, Lcom/dolphin/browser/theme/h;->o()I

    move-result v0

    return v0
.end method

.method public p()I
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/dolphin/browser/theme/ak;->b:Lcom/dolphin/browser/theme/h;

    invoke-interface {v0}, Lcom/dolphin/browser/theme/h;->p()I

    move-result v0

    return v0
.end method

.method public q()I
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/dolphin/browser/theme/ak;->b:Lcom/dolphin/browser/theme/h;

    invoke-interface {v0}, Lcom/dolphin/browser/theme/h;->q()I

    move-result v0

    return v0
.end method

.method public r()I
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/dolphin/browser/theme/ak;->b:Lcom/dolphin/browser/theme/h;

    invoke-interface {v0}, Lcom/dolphin/browser/theme/h;->r()I

    move-result v0

    return v0
.end method

.method public s()I
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/dolphin/browser/theme/ak;->b:Lcom/dolphin/browser/theme/h;

    invoke-interface {v0}, Lcom/dolphin/browser/theme/h;->s()I

    move-result v0

    return v0
.end method

.method public t()I
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/dolphin/browser/theme/ak;->b:Lcom/dolphin/browser/theme/h;

    invoke-interface {v0}, Lcom/dolphin/browser/theme/h;->t()I

    move-result v0

    return v0
.end method

.method public u()Z
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/dolphin/browser/theme/ak;->b:Lcom/dolphin/browser/theme/h;

    invoke-interface {v0}, Lcom/dolphin/browser/theme/h;->u()Z

    move-result v0

    return v0
.end method

.method public v()I
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/dolphin/browser/theme/ak;->b:Lcom/dolphin/browser/theme/h;

    invoke-interface {v0}, Lcom/dolphin/browser/theme/h;->v()I

    move-result v0

    return v0
.end method

.method public w()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/dolphin/browser/theme/ak;->b:Lcom/dolphin/browser/theme/h;

    invoke-interface {v0}, Lcom/dolphin/browser/theme/h;->w()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public x()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/dolphin/browser/theme/ak;->b:Lcom/dolphin/browser/theme/h;

    invoke-interface {v0}, Lcom/dolphin/browser/theme/h;->x()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public y()Z
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/dolphin/browser/theme/ak;->b:Lcom/dolphin/browser/theme/h;

    invoke-interface {v0}, Lcom/dolphin/browser/theme/h;->y()Z

    move-result v0

    return v0
.end method

.method public z()Z
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/dolphin/browser/theme/ak;->b:Lcom/dolphin/browser/theme/h;

    invoke-interface {v0}, Lcom/dolphin/browser/theme/h;->z()Z

    move-result v0

    return v0
.end method
