.class public Lcom/dolphin/browser/extensions/a/c;
.super Ljava/util/Observable;
.source "PromotedContentManager.java"

# interfaces
.implements Lcom/dolphin/browser/util/bg;


# static fields
.field private static final a:Ljava/lang/String;

.field private static e:Lcom/dolphin/browser/extensions/a/c;


# instance fields
.field private b:Lcom/dolphin/browser/extensions/a/e;

.field private c:Lcom/dolphin/browser/extensions/a/f;

.field private d:Lcom/dolphin/browser/extensions/a/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/dolphin/browser/extensions/a/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/extensions/a/c;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    .line 43
    new-instance v0, Lcom/dolphin/browser/extensions/a/e;

    invoke-direct {v0, p1}, Lcom/dolphin/browser/extensions/a/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dolphin/browser/extensions/a/c;->b:Lcom/dolphin/browser/extensions/a/e;

    .line 44
    invoke-static {}, Lcom/dolphin/browser/extensions/a/f;->a()Lcom/dolphin/browser/extensions/a/f;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/extensions/a/c;->c:Lcom/dolphin/browser/extensions/a/f;

    .line 45
    invoke-static {}, Lcom/dolphin/browser/util/ba;->a()Lcom/dolphin/browser/util/ba;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/dolphin/browser/util/be;->a(Landroid/content/Context;Lcom/dolphin/browser/util/bg;)Lcom/dolphin/browser/util/be;

    .line 46
    return-void
.end method

.method public static a()Lcom/dolphin/browser/extensions/a/c;
    .locals 2

    .prologue
    .line 36
    sget-object v0, Lcom/dolphin/browser/extensions/a/c;->e:Lcom/dolphin/browser/extensions/a/c;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Lcom/dolphin/browser/extensions/a/c;

    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/dolphin/browser/extensions/a/c;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/dolphin/browser/extensions/a/c;->e:Lcom/dolphin/browser/extensions/a/c;

    .line 39
    :cond_0
    sget-object v0, Lcom/dolphin/browser/extensions/a/c;->e:Lcom/dolphin/browser/extensions/a/c;

    return-object v0
.end method

.method private a(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/extensions/a/a;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 132
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 134
    if-nez p1, :cond_0

    move-object v0, v1

    .line 143
    :goto_0
    return-object v0

    .line 138
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/extensions/a/a;

    .line 139
    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/a/a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/a/a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 143
    goto :goto_0
.end method

.method private a(J)V
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/dolphin/browser/extensions/a/c;->b:Lcom/dolphin/browser/extensions/a/e;

    invoke-virtual {v0, p1, p2}, Lcom/dolphin/browser/extensions/a/e;->a(J)V

    .line 185
    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/extensions/a/c;)V
    .locals 0

    .prologue
    .line 21
    invoke-virtual {p0}, Lcom/dolphin/browser/extensions/a/c;->setChanged()V

    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/extensions/a/c;I)Z
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/dolphin/browser/extensions/a/c;->c(I)Z

    move-result v0

    return v0
.end method

.method private b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 162
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/dolphin/browser/extensions/a/c;->b:Lcom/dolphin/browser/extensions/a/e;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/extensions/a/e;->a(Ljava/lang/String;)V

    .line 165
    :cond_0
    return-void
.end method

.method private c(I)Z
    .locals 1

    .prologue
    .line 81
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/extensions/a/c;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/extensions/a/c;->b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    :cond_0
    const/4 v0, 0x1

    .line 84
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 152
    invoke-static {}, Lcom/dolphin/browser/util/be;->a()Lcom/dolphin/browser/util/be;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/util/be;->b(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/dolphin/browser/extensions/a/c;->b:Lcom/dolphin/browser/extensions/a/e;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/extensions/a/e;->a(Z)V

    .line 175
    return-void
.end method

.method public a(I)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 88
    and-int/lit8 v1, p1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/io/File;JZ)Z
    .locals 1

    .prologue
    .line 189
    invoke-static {p1, p2, p3, p4, p5}, Lcom/dolphin/browser/Network/l;->a(Ljava/lang/String;Ljava/io/File;JZ)Z

    move-result v0

    return v0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/dolphin/browser/extensions/a/c;->d:Lcom/dolphin/browser/extensions/a/d;

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Lcom/dolphin/browser/extensions/a/d;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/extensions/a/d;-><init>(Lcom/dolphin/browser/extensions/a/c;)V

    iput-object v0, p0, Lcom/dolphin/browser/extensions/a/c;->d:Lcom/dolphin/browser/extensions/a/d;

    .line 52
    iget-object v0, p0, Lcom/dolphin/browser/extensions/a/c;->d:Lcom/dolphin/browser/extensions/a/d;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/r;->a(Lcom/dolphin/browser/util/f;[Ljava/lang/Object;)Lcom/dolphin/browser/util/f;

    .line 55
    :cond_0
    return-void
.end method

.method public b(I)Z
    .locals 2

    .prologue
    .line 92
    and-int/lit8 v0, p1, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()I
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 96
    const/4 v0, 0x0

    .line 99
    :try_start_0
    iget-object v2, p0, Lcom/dolphin/browser/extensions/a/c;->c:Lcom/dolphin/browser/extensions/a/f;

    invoke-virtual {p0}, Lcom/dolphin/browser/extensions/a/c;->g()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/dolphin/browser/extensions/a/f;->a(J)Lcom/dolphin/browser/extensions/a/b;
    :try_end_0
    .catch Lcom/dolphin/browser/extensions/a/i; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 101
    if-nez v2, :cond_1

    .line 127
    :cond_0
    :goto_0
    return v0

    .line 107
    :cond_1
    :try_start_1
    invoke-virtual {v2}, Lcom/dolphin/browser/extensions/a/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/dolphin/browser/extensions/a/c;->b(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p0}, Lcom/dolphin/browser/extensions/a/c;->f()Z

    move-result v0

    if-nez v0, :cond_2

    .line 110
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/extensions/a/c;->a(Z)V
    :try_end_1
    .catch Lcom/dolphin/browser/extensions/a/i; {:try_start_1 .. :try_end_1} :catch_1

    .line 111
    const/4 v0, 0x3

    .line 114
    :goto_1
    :try_start_2
    invoke-virtual {v2}, Lcom/dolphin/browser/extensions/a/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dolphin/browser/extensions/a/a;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 116
    invoke-static {}, Lcom/dolphin/browser/util/be;->a()Lcom/dolphin/browser/util/be;

    move-result-object v3

    invoke-direct {p0, v1}, Lcom/dolphin/browser/extensions/a/c;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/dolphin/browser/util/be;->b(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 120
    invoke-virtual {v2}, Lcom/dolphin/browser/extensions/a/b;->b()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/dolphin/browser/extensions/a/c;->a(J)V
    :try_end_2
    .catch Lcom/dolphin/browser/extensions/a/i; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 122
    :catch_0
    move-exception v1

    .line 123
    :goto_2
    invoke-virtual {v1}, Lcom/dolphin/browser/extensions/a/i;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;)I

    goto :goto_0

    .line 122
    :catch_1
    move-exception v0

    move-object v5, v0

    move v0, v1

    move-object v1, v5

    goto :goto_2

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/dolphin/browser/extensions/a/c;->e()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/dolphin/browser/extensions/a/c;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/extensions/a/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 157
    iget-object v0, p0, Lcom/dolphin/browser/extensions/a/c;->b:Lcom/dolphin/browser/extensions/a/e;

    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/a/e;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/dolphin/browser/extensions/a/c;->b:Lcom/dolphin/browser/extensions/a/e;

    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/a/e;->c()Z

    move-result v0

    return v0
.end method

.method public g()J
    .locals 2

    .prologue
    .line 179
    iget-object v0, p0, Lcom/dolphin/browser/extensions/a/c;->b:Lcom/dolphin/browser/extensions/a/e;

    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/a/e;->b()J

    move-result-wide v0

    return-wide v0
.end method
