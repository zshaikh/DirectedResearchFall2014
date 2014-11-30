.class public Lcom/dolphin/browser/m/d;
.super Ljava/lang/Object;
.source "PopupManager.java"


# static fields
.field private static d:Z

.field private static e:Lcom/dolphin/browser/m/d;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/m/a;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/dolphin/browser/m/c;

.field private c:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/dolphin/browser/m/d;->c:Landroid/content/Context;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/m/d;->a:Ljava/util/List;

    .line 32
    iget-object v0, p0, Lcom/dolphin/browser/m/d;->a:Ljava/util/List;

    invoke-static {p1}, Lcom/dolphin/browser/m/e;->b(Landroid/content/Context;)Lcom/dolphin/browser/m/e;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    iget-object v0, p0, Lcom/dolphin/browser/m/d;->a:Ljava/util/List;

    invoke-static {p1}, Lcom/dolphin/browser/m/f;->b(Landroid/content/Context;)Lcom/dolphin/browser/m/f;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    new-instance v0, Lcom/dolphin/browser/m/c;

    invoke-direct {v0, p1}, Lcom/dolphin/browser/m/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dolphin/browser/m/d;->b:Lcom/dolphin/browser/m/c;

    .line 37
    return-void
.end method

.method public static a()Lcom/dolphin/browser/m/d;
    .locals 2

    .prologue
    .line 21
    sget-object v0, Lcom/dolphin/browser/m/d;->e:Lcom/dolphin/browser/m/d;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Lcom/dolphin/browser/m/d;

    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/dolphin/browser/m/d;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/dolphin/browser/m/d;->e:Lcom/dolphin/browser/m/d;

    .line 24
    :cond_0
    sget-object v0, Lcom/dolphin/browser/m/d;->e:Lcom/dolphin/browser/m/d;

    return-object v0
.end method

.method private a(Landroid/content/Context;Lcom/dolphin/browser/m/a;)V
    .locals 1

    .prologue
    .line 66
    sget-boolean v0, Lcom/dolphin/browser/m/d;->d:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/dolphin/browser/m/d;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    invoke-direct {p0, p2}, Lcom/dolphin/browser/m/d;->a(Lcom/dolphin/browser/m/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {p2, p1}, Lcom/dolphin/browser/m/a;->a(Landroid/content/Context;)V

    .line 72
    const/4 v0, 0x1

    sput-boolean v0, Lcom/dolphin/browser/m/d;->d:Z

    goto :goto_0
.end method

.method private a(Lcom/dolphin/browser/m/a;)Z
    .locals 4

    .prologue
    .line 40
    const/4 v1, 0x0

    .line 41
    iget-object v0, p0, Lcom/dolphin/browser/m/d;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/m/a;

    .line 42
    invoke-virtual {v0}, Lcom/dolphin/browser/m/a;->b()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 43
    invoke-virtual {p1}, Lcom/dolphin/browser/m/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/dolphin/browser/m/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 44
    const/4 v0, 0x1

    .line 50
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private c()Z
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public a(J)V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/dolphin/browser/m/d;->b:Lcom/dolphin/browser/m/c;

    invoke-virtual {v0, p1, p2}, Lcom/dolphin/browser/m/c;->b(J)V

    .line 104
    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/dolphin/browser/m/d;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/dolphin/browser/m/f;->b(Landroid/content/Context;)Lcom/dolphin/browser/m/f;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/dolphin/browser/m/d;->a(Landroid/content/Context;Lcom/dolphin/browser/m/a;)V

    .line 59
    return-void
.end method

.method public a(Z)V
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/dolphin/browser/m/d;->b:Lcom/dolphin/browser/m/c;

    invoke-virtual {v0}, Lcom/dolphin/browser/m/c;->a()V

    .line 78
    iget-object v0, p0, Lcom/dolphin/browser/m/d;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/m/a;

    .line 79
    invoke-virtual {v0, p1}, Lcom/dolphin/browser/m/a;->b(Z)V

    goto :goto_0

    .line 81
    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/dolphin/browser/m/d;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/m/a;

    .line 85
    invoke-virtual {v0}, Lcom/dolphin/browser/m/a;->c()V

    goto :goto_0

    .line 87
    :cond_0
    return-void
.end method
