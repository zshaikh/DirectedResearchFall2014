.class public Lcom/c/a/b/a/b;
.super Ljava/lang/Object;
.source "EvernoteSession.java"


# instance fields
.field private a:Lcom/c/a/a/a;

.field private b:Lcom/c/a/b/a/a;

.field private c:Landroid/content/SharedPreferences;

.field private d:Ljava/io/File;


# direct methods
.method public constructor <init>(Lcom/c/a/a/a;Ljava/io/File;Landroid/content/SharedPreferences;)V
    .locals 1

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p3, p0, Lcom/c/a/b/a/b;->c:Landroid/content/SharedPreferences;

    .line 90
    iput-object p1, p0, Lcom/c/a/b/a/b;->a:Lcom/c/a/a/a;

    .line 91
    iput-object p2, p0, Lcom/c/a/b/a/b;->d:Ljava/io/File;

    .line 92
    iget-object v0, p0, Lcom/c/a/b/a/b;->c:Landroid/content/SharedPreferences;

    invoke-direct {p0, v0}, Lcom/c/a/b/a/b;->a(Landroid/content/SharedPreferences;)Lcom/c/a/b/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/c/a/b/a/b;->b:Lcom/c/a/b/a/a;

    .line 93
    return-void
.end method

.method private a(Landroid/content/SharedPreferences;)Lcom/c/a/b/a/a;
    .locals 5

    .prologue
    .line 102
    const-string v0, "evernote.authToken"

    const-string v1, ""

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 103
    const-string v0, "evernote.notestoreUrl"

    const-string v2, ""

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 104
    const-string v0, "evernote.webApiUrlPrefix"

    const-string v3, ""

    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 105
    const-string v0, "evernote.userId"

    const/4 v4, -0x1

    invoke-interface {p1, v0, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 107
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    if-lez v4, :cond_0

    .line 109
    new-instance v0, Lcom/c/a/b/a/a;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/c/a/b/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 112
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Landroid/content/SharedPreferences$Editor;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .prologue
    .line 196
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    .line 197
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 201
    :goto_0
    return-void

    .line 199
    :cond_0
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method


# virtual methods
.method public a()Lcom/c/a/a/a;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/c/a/b/a/b;->a:Lcom/c/a/a/a;

    return-object v0
.end method

.method public a(Lcom/c/a/b/a;)V
    .locals 6

    .prologue
    .line 180
    iget-object v0, p0, Lcom/c/a/b/a/b;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 181
    new-instance v1, Lcom/c/a/b/a/a;

    invoke-virtual {p1}, Lcom/c/a/b/a;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/c/a/b/a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/c/a/b/a;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/c/a/b/a;->c()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/c/a/b/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/c/a/b/a/b;->b:Lcom/c/a/b/a/a;

    .line 187
    const-string v1, "evernote.authToken"

    invoke-virtual {p1}, Lcom/c/a/b/a;->d()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 188
    const-string v1, "evernote.notestoreUrl"

    invoke-virtual {p1}, Lcom/c/a/b/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 189
    const-string v1, "evernote.webApiUrlPrefix"

    invoke-virtual {p1}, Lcom/c/a/b/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 190
    const-string v1, "evernote.userId"

    invoke-virtual {p1}, Lcom/c/a/b/a;->c()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 191
    invoke-static {v0}, Lcom/c/a/b/a/b;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 192
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/c/a/b/a/b;->b:Lcom/c/a/b/a/a;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/c/a/b/a/b;->b:Lcom/c/a/b/a/a;

    .line 130
    iget-object v0, p0, Lcom/c/a/b/a/b;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 131
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 132
    invoke-static {v0}, Lcom/c/a/b/a/b;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 133
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/c/a/b/a/b;->b:Lcom/c/a/b/a/a;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/c/a/b/a/b;->b:Lcom/c/a/b/a/a;

    invoke-virtual {v0}, Lcom/c/a/b/a/a;->a()Ljava/lang/String;

    move-result-object v0

    .line 146
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()Lcom/c/a/b/a/a;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/c/a/b/a/b;->b:Lcom/c/a/b/a/a;

    return-object v0
.end method

.method public f()Lcom/c/b/b/b;
    .locals 4

    .prologue
    .line 169
    invoke-virtual {p0}, Lcom/c/a/b/a/b;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 170
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 172
    :cond_0
    new-instance v0, Lcom/c/a/a/a/b;

    iget-object v1, p0, Lcom/c/a/b/a/b;->b:Lcom/c/a/b/a/a;

    invoke-virtual {v1}, Lcom/c/a/b/a/a;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/c/a/b/a/b;->a:Lcom/c/a/a/a;

    invoke-virtual {v2}, Lcom/c/a/a/a;->b()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/c/a/b/a/b;->d:Ljava/io/File;

    invoke-direct {v0, v1, v2, v3}, Lcom/c/a/a/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    .line 175
    new-instance v1, Lorg/apache/c/b/a;

    invoke-direct {v1, v0}, Lorg/apache/c/b/a;-><init>(Lorg/apache/c/c/b;)V

    .line 176
    new-instance v0, Lcom/c/b/b/b;

    invoke-direct {v0, v1, v1}, Lcom/c/b/b/b;-><init>(Lorg/apache/c/b/f;Lorg/apache/c/b/f;)V

    return-object v0
.end method
