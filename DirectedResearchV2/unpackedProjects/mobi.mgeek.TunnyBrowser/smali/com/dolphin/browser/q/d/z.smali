.class public Lcom/dolphin/browser/q/d/z;
.super Lcom/dolphin/browser/share/r;
.source "TwitterFriendsCache.java"


# static fields
.field private static a:Lcom/dolphin/browser/q/d/z;


# instance fields
.field private b:Lorg/json/JSONArray;

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

.field private d:Ljava/util/List;
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
    .line 35
    invoke-direct {p0}, Lcom/dolphin/browser/share/r;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/q/d/z;->c:Ljava/util/List;

    .line 37
    return-void
.end method

.method public static final b()Lcom/dolphin/browser/q/d/z;
    .locals 2

    .prologue
    .line 25
    sget-object v0, Lcom/dolphin/browser/q/d/z;->a:Lcom/dolphin/browser/q/d/z;

    if-nez v0, :cond_1

    .line 26
    const-class v1, Lcom/dolphin/browser/q/d/z;

    monitor-enter v1

    .line 27
    :try_start_0
    sget-object v0, Lcom/dolphin/browser/q/d/z;->a:Lcom/dolphin/browser/q/d/z;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Lcom/dolphin/browser/q/d/z;

    invoke-direct {v0}, Lcom/dolphin/browser/q/d/z;-><init>()V

    sput-object v0, Lcom/dolphin/browser/q/d/z;->a:Lcom/dolphin/browser/q/d/z;

    .line 30
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    :cond_1
    sget-object v0, Lcom/dolphin/browser/q/d/z;->a:Lcom/dolphin/browser/q/d/z;

    return-object v0

    .line 30
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private c(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 80
    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/dolphin/browser/q/d/z;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/dolphin/browser/q/d/z;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/q/a;

    .line 82
    invoke-virtual {v0}, Lcom/dolphin/browser/q/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    const/4 v2, 0x1

    .line 87
    :cond_0
    return v2

    .line 80
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method


# virtual methods
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
    .line 100
    iget-object v0, p0, Lcom/dolphin/browser/q/d/z;->d:Ljava/util/List;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/dolphin/browser/q/d/z;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    :goto_0
    return-void

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/q/d/z;->d:Ljava/util/List;

    if-nez v0, :cond_1

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/q/d/z;->d:Ljava/util/List;

    .line 111
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/q/d/z;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 113
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 114
    iget-object v0, p0, Lcom/dolphin/browser/q/d/z;->c:Ljava/util/List;

    iput-object v0, p0, Lcom/dolphin/browser/q/d/z;->d:Ljava/util/List;

    .line 126
    :cond_2
    invoke-virtual {p0}, Lcom/dolphin/browser/q/d/z;->setChanged()V

    .line 127
    invoke-virtual {p0}, Lcom/dolphin/browser/q/d/z;->notifyObservers()V

    goto :goto_0

    .line 116
    :cond_3
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/dolphin/browser/q/d/z;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 117
    iget-object v0, p0, Lcom/dolphin/browser/q/d/z;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/q/a;

    .line 118
    invoke-virtual {v0}, Lcom/dolphin/browser/q/a;->b()Ljava/lang/String;

    move-result-object v2

    .line 119
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 121
    iget-object v2, p0, Lcom/dolphin/browser/q/d/z;->d:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method public a(Ljava/util/List;)V
    .locals 3
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
    .line 63
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 68
    :cond_1
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/q/a;

    .line 69
    iget-object v1, p0, Lcom/dolphin/browser/q/d/z;->c:Ljava/util/List;

    monitor-enter v1

    .line 70
    :try_start_0
    invoke-virtual {v0}, Lcom/dolphin/browser/q/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/dolphin/browser/q/d/z;->c(Ljava/lang/String;)Z

    move-result v0

    .line 71
    if-nez v0, :cond_2

    .line 72
    iget-object v0, p0, Lcom/dolphin/browser/q/d/z;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 74
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    const-string v0, "Twitter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mFriends size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dolphin/browser/q/d/z;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 74
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public a(Lorg/json/JSONArray;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/dolphin/browser/q/d/z;->b:Lorg/json/JSONArray;

    .line 51
    return-void
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 131
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 132
    const-string v0, "\\s+@([^\\s@]*)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 133
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 134
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 135
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    .line 136
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 137
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 141
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dolphin/browser/q/d/z;->b:Lorg/json/JSONArray;

    .line 41
    iget-object v0, p0, Lcom/dolphin/browser/q/d/z;->c:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/dolphin/browser/q/d/z;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/q/d/z;->d:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 45
    iget-object v0, p0, Lcom/dolphin/browser/q/d/z;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 47
    :cond_1
    return-void
.end method

.method public d()Lorg/json/JSONArray;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/dolphin/browser/q/d/z;->b:Lorg/json/JSONArray;

    return-object v0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/dolphin/browser/q/d/z;->c:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/q/d/z;->c:Ljava/util/List;

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
    .line 95
    iget-object v0, p0, Lcom/dolphin/browser/q/d/z;->d:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/q/d/z;->d:Ljava/util/List;

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
