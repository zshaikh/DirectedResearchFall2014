.class public Lcom/dolphin/browser/share/facebook/a;
.super Lcom/dolphin/browser/share/r;
.source "FacebookFriendsCache.java"


# static fields
.field private static a:Lcom/dolphin/browser/share/facebook/a;


# instance fields
.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/q/a;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/q/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/dolphin/browser/share/r;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/share/facebook/a;->b:Ljava/util/List;

    .line 29
    return-void
.end method

.method public static final b()Lcom/dolphin/browser/share/facebook/a;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/dolphin/browser/share/facebook/a;->a:Lcom/dolphin/browser/share/facebook/a;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Lcom/dolphin/browser/share/facebook/a;

    invoke-direct {v0}, Lcom/dolphin/browser/share/facebook/a;-><init>()V

    sput-object v0, Lcom/dolphin/browser/share/facebook/a;->a:Lcom/dolphin/browser/share/facebook/a;

    .line 24
    :cond_0
    sget-object v0, Lcom/dolphin/browser/share/facebook/a;->a:Lcom/dolphin/browser/share/facebook/a;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 93
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 94
    const-string v0, "@([^\\s@]+)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 95
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 96
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    .line 98
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 99
    const-string v1, "@"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 103
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/q/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 58
    iget-object v0, p0, Lcom/dolphin/browser/share/facebook/a;->c:Ljava/util/List;

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/dolphin/browser/share/facebook/a;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 67
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/share/facebook/a;->c:Ljava/util/List;

    if-nez v0, :cond_2

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/share/facebook/a;->c:Ljava/util/List;

    .line 70
    :cond_2
    iget-object v0, p0, Lcom/dolphin/browser/share/facebook/a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 72
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 73
    iget-object v0, p0, Lcom/dolphin/browser/share/facebook/a;->b:Ljava/util/List;

    iput-object v0, p0, Lcom/dolphin/browser/share/facebook/a;->c:Ljava/util/List;

    .line 86
    :cond_3
    iget-object v0, p0, Lcom/dolphin/browser/share/facebook/a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 87
    invoke-virtual {p0}, Lcom/dolphin/browser/share/facebook/a;->setChanged()V

    .line 88
    invoke-virtual {p0}, Lcom/dolphin/browser/share/facebook/a;->notifyObservers()V

    goto :goto_0

    .line 75
    :cond_4
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/dolphin/browser/share/facebook/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 76
    iget-object v0, p0, Lcom/dolphin/browser/share/facebook/a;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/q/a;

    .line 77
    invoke-virtual {v0}, Lcom/dolphin/browser/q/a;->b()Ljava/lang/String;

    move-result-object v2

    .line 78
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {p2, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 81
    iget-object v2, p0, Lcom/dolphin/browser/share/facebook/a;->c:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    :cond_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/q/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 41
    iput-object p1, p0, Lcom/dolphin/browser/share/facebook/a;->b:Ljava/util/List;

    .line 42
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/dolphin/browser/share/facebook/a;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/dolphin/browser/share/facebook/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/share/facebook/a;->c:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 36
    iget-object v0, p0, Lcom/dolphin/browser/share/facebook/a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 38
    :cond_1
    return-void
.end method

.method public d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/q/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lcom/dolphin/browser/share/facebook/a;->b:Ljava/util/List;

    return-object v0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/dolphin/browser/share/facebook/a;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/share/facebook/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/dolphin/browser/share/facebook/a;->c:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/share/facebook/a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
