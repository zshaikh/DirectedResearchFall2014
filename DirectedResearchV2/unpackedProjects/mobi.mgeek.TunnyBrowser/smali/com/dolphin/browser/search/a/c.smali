.class public Lcom/dolphin/browser/search/a/c;
.super Ljava/util/Observable;
.source "SearchCategoryManager.java"


# static fields
.field private static volatile a:Lcom/dolphin/browser/search/a/c;


# instance fields
.field private b:Lcom/dolphin/browser/search/a/b;

.field private c:Lcom/dolphin/browser/search/a/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    sput-object v0, Lcom/dolphin/browser/search/a/c;->a:Lcom/dolphin/browser/search/a/c;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    .line 28
    new-instance v0, Lcom/dolphin/browser/search/a/d;

    invoke-direct {v0, p1}, Lcom/dolphin/browser/search/a/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dolphin/browser/search/a/c;->c:Lcom/dolphin/browser/search/a/d;

    .line 29
    new-instance v0, Lcom/dolphin/browser/search/a/b;

    invoke-direct {v0, p1}, Lcom/dolphin/browser/search/a/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dolphin/browser/search/a/c;->b:Lcom/dolphin/browser/search/a/b;

    .line 30
    return-void
.end method

.method public static a()Lcom/dolphin/browser/search/a/c;
    .locals 3

    .prologue
    .line 34
    sget-object v0, Lcom/dolphin/browser/search/a/c;->a:Lcom/dolphin/browser/search/a/c;

    if-nez v0, :cond_1

    .line 35
    const-class v1, Lcom/dolphin/browser/search/a/c;

    monitor-enter v1

    .line 36
    :try_start_0
    sget-object v0, Lcom/dolphin/browser/search/a/c;->a:Lcom/dolphin/browser/search/a/c;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Lcom/dolphin/browser/search/a/c;

    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/dolphin/browser/search/a/c;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/dolphin/browser/search/a/c;->a:Lcom/dolphin/browser/search/a/c;

    .line 39
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    :cond_1
    sget-object v0, Lcom/dolphin/browser/search/a/c;->a:Lcom/dolphin/browser/search/a/c;

    return-object v0

    .line 39
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private a(Ljava/util/List;I)Lcom/dolphin/browser/search/b/a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/search/b/a;",
            ">;I)",
            "Lcom/dolphin/browser/search/b/a;"
        }
    .end annotation

    .prologue
    .line 97
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/search/b/a;

    .line 98
    invoke-virtual {v0}, Lcom/dolphin/browser/search/b/a;->a()I

    move-result v2

    if-ne p2, v2, :cond_0

    .line 102
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Lcom/dolphin/browser/search/b/a;Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 218
    invoke-virtual {p1}, Lcom/dolphin/browser/search/b/a;->d()Ljava/util/Map;

    move-result-object v0

    .line 219
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 235
    :cond_0
    :goto_0
    return-void

    .line 222
    :cond_1
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/search/b/b;

    .line 223
    if-eqz v0, :cond_0

    .line 226
    if-eqz p3, :cond_2

    .line 227
    invoke-virtual {p1, v0}, Lcom/dolphin/browser/search/b/a;->a(Lcom/dolphin/browser/search/b/b;)V

    goto :goto_0

    .line 229
    :cond_2
    invoke-static {}, Lcom/dolphin/browser/search/i;->a()Lcom/dolphin/browser/search/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/search/i;->d()Z

    move-result v1

    if-nez v1, :cond_0

    .line 232
    invoke-virtual {p1, v0}, Lcom/dolphin/browser/search/b/a;->a(Lcom/dolphin/browser/search/b/b;)V

    goto :goto_0
.end method


# virtual methods
.method public a(I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/search/b/b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 69
    const/4 v0, 0x0

    .line 70
    invoke-virtual {p0}, Lcom/dolphin/browser/search/a/c;->b()Ljava/util/List;

    move-result-object v1

    .line 71
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 72
    invoke-direct {p0, v1, p1}, Lcom/dolphin/browser/search/a/c;->a(Ljava/util/List;I)Lcom/dolphin/browser/search/b/a;

    move-result-object v1

    .line 73
    if-eqz v1, :cond_0

    .line 74
    invoke-virtual {v1}, Lcom/dolphin/browser/search/b/a;->c()Ljava/util/List;

    move-result-object v0

    .line 77
    :cond_0
    return-object v0
.end method

.method public a(Lcom/dolphin/browser/search/b/b;)V
    .locals 3

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/dolphin/browser/search/a/c;->b()Ljava/util/List;

    move-result-object v0

    .line 108
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 109
    const/16 v1, 0x65

    invoke-direct {p0, v0, v1}, Lcom/dolphin/browser/search/a/c;->a(Ljava/util/List;I)Lcom/dolphin/browser/search/b/a;

    move-result-object v1

    .line 111
    if-eqz v1, :cond_0

    .line 112
    invoke-virtual {p1}, Lcom/dolphin/browser/search/b/b;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/search/b/a;->a(I)V

    .line 114
    :cond_0
    iget-object v1, p0, Lcom/dolphin/browser/search/a/c;->c:Lcom/dolphin/browser/search/a/d;

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/search/a/d;->a(Ljava/util/List;)Ljava/lang/String;

    .line 116
    :cond_1
    return-void
.end method

.method public a(Lcom/dolphin/browser/search/b/b;Ljava/lang/String;Z)V
    .locals 5

    .prologue
    .line 197
    iget-object v0, p0, Lcom/dolphin/browser/search/a/c;->c:Lcom/dolphin/browser/search/a/d;

    invoke-virtual {v0}, Lcom/dolphin/browser/search/a/d;->b()Ljava/util/List;

    move-result-object v0

    .line 198
    const/16 v1, 0x65

    invoke-direct {p0, v0, v1}, Lcom/dolphin/browser/search/a/c;->a(Ljava/util/List;I)Lcom/dolphin/browser/search/b/a;

    move-result-object v1

    .line 200
    if-nez v1, :cond_0

    .line 213
    :goto_0
    return-void

    .line 203
    :cond_0
    invoke-virtual {v1}, Lcom/dolphin/browser/search/b/a;->c()Ljava/util/List;

    move-result-object v2

    .line 204
    invoke-interface {v2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 205
    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 206
    invoke-interface {v2, v3, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 209
    :cond_1
    invoke-direct {p0, v1, p2, p3}, Lcom/dolphin/browser/search/a/c;->a(Lcom/dolphin/browser/search/b/a;Ljava/lang/String;Z)V

    .line 211
    invoke-virtual {v1}, Lcom/dolphin/browser/search/b/a;->a()I

    move-result v3

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/search/b/a;->b(Ljava/util/List;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p0, v0, v3, v1}, Lcom/dolphin/browser/search/a/c;->a(Ljava/util/List;ILorg/json/JSONObject;)V

    goto :goto_0
.end method

.method public a(Lcom/dolphin/browser/search/b/b;ZZ)V
    .locals 5

    .prologue
    .line 163
    iget-object v0, p0, Lcom/dolphin/browser/search/a/c;->c:Lcom/dolphin/browser/search/a/d;

    invoke-virtual {v0}, Lcom/dolphin/browser/search/a/d;->b()Ljava/util/List;

    move-result-object v0

    .line 164
    const/16 v1, 0x65

    invoke-direct {p0, v0, v1}, Lcom/dolphin/browser/search/a/c;->a(Ljava/util/List;I)Lcom/dolphin/browser/search/b/a;

    move-result-object v1

    .line 166
    if-nez v1, :cond_0

    .line 192
    :goto_0
    return-void

    .line 169
    :cond_0
    invoke-virtual {v1}, Lcom/dolphin/browser/search/b/a;->c()Ljava/util/List;

    move-result-object v2

    .line 171
    invoke-interface {v2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 173
    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    .line 174
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    :goto_1
    if-eqz p2, :cond_1

    .line 180
    if-eqz p3, :cond_3

    .line 181
    invoke-virtual {v1, p1}, Lcom/dolphin/browser/search/b/a;->a(Lcom/dolphin/browser/search/b/b;)V

    .line 189
    :cond_1
    :goto_2
    invoke-virtual {v1}, Lcom/dolphin/browser/search/b/a;->a()I

    move-result v3

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/search/b/a;->b(Ljava/util/List;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p0, v0, v3, v1}, Lcom/dolphin/browser/search/a/c;->a(Ljava/util/List;ILorg/json/JSONObject;)V

    goto :goto_0

    .line 176
    :cond_2
    invoke-interface {v2, v3, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 183
    :cond_3
    invoke-static {}, Lcom/dolphin/browser/search/i;->a()Lcom/dolphin/browser/search/i;

    move-result-object v3

    invoke-virtual {v3}, Lcom/dolphin/browser/search/i;->d()Z

    move-result v3

    if-nez v3, :cond_1

    .line 184
    invoke-virtual {v1, p1}, Lcom/dolphin/browser/search/b/a;->a(Lcom/dolphin/browser/search/b/b;)V

    goto :goto_2
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 239
    iget-object v0, p0, Lcom/dolphin/browser/search/a/c;->c:Lcom/dolphin/browser/search/a/d;

    invoke-virtual {v0}, Lcom/dolphin/browser/search/a/d;->b()Ljava/util/List;

    move-result-object v1

    .line 240
    const/16 v0, 0x65

    invoke-direct {p0, v1, v0}, Lcom/dolphin/browser/search/a/c;->a(Ljava/util/List;I)Lcom/dolphin/browser/search/b/a;

    move-result-object v2

    .line 242
    if-nez v2, :cond_1

    .line 275
    :cond_0
    :goto_0
    return-void

    .line 245
    :cond_1
    invoke-virtual {v2}, Lcom/dolphin/browser/search/b/a;->c()Ljava/util/List;

    move-result-object v3

    .line 247
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    const/4 v4, 0x1

    if-eq v0, v4, :cond_0

    .line 252
    invoke-virtual {v2}, Lcom/dolphin/browser/search/b/a;->d()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/search/b/b;

    .line 254
    if-eqz v0, :cond_0

    .line 258
    invoke-interface {v3, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 260
    invoke-virtual {v2}, Lcom/dolphin/browser/search/b/a;->b()Lcom/dolphin/browser/search/b/b;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/dolphin/browser/search/b/b;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 261
    if-eqz p2, :cond_3

    .line 262
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/search/b/b;

    invoke-virtual {v2, v0}, Lcom/dolphin/browser/search/b/a;->a(Lcom/dolphin/browser/search/b/b;)V

    .line 272
    :cond_2
    :goto_1
    invoke-virtual {v2}, Lcom/dolphin/browser/search/b/a;->a()I

    move-result v0

    invoke-virtual {v2, v3}, Lcom/dolphin/browser/search/b/a;->b(Ljava/util/List;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {p0, v1, v0, v2}, Lcom/dolphin/browser/search/a/c;->a(Ljava/util/List;ILorg/json/JSONObject;)V

    goto :goto_0

    .line 264
    :cond_3
    invoke-static {}, Lcom/dolphin/browser/search/i;->a()Lcom/dolphin/browser/search/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/search/i;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 267
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/search/b/b;

    invoke-virtual {v2, v0}, Lcom/dolphin/browser/search/b/a;->a(Lcom/dolphin/browser/search/b/b;)V

    goto :goto_1
.end method

.method public a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/search/b/b;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/dolphin/browser/search/a/c;->b()Ljava/util/List;

    move-result-object v0

    .line 126
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 127
    const/16 v1, 0x66

    invoke-direct {p0, v0, v1}, Lcom/dolphin/browser/search/a/c;->a(Ljava/util/List;I)Lcom/dolphin/browser/search/b/a;

    move-result-object v1

    .line 129
    if-eqz v1, :cond_0

    .line 130
    invoke-virtual {v1, p1}, Lcom/dolphin/browser/search/b/a;->a(Ljava/util/List;)V

    .line 132
    :cond_0
    iget-object v1, p0, Lcom/dolphin/browser/search/a/c;->c:Lcom/dolphin/browser/search/a/d;

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/search/a/d;->a(Ljava/util/List;)Ljava/lang/String;

    .line 134
    :cond_1
    return-void
.end method

.method public a(Ljava/util/List;ILorg/json/JSONObject;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/search/b/a;",
            ">;I",
            "Lorg/json/JSONObject;",
            ")V"
        }
    .end annotation

    .prologue
    .line 280
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 281
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/search/b/a;

    .line 282
    invoke-virtual {v0}, Lcom/dolphin/browser/search/b/a;->a()I

    move-result v3

    if-ne v3, p2, :cond_0

    .line 283
    invoke-virtual {v1, p3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 285
    :cond_0
    invoke-virtual {v0}, Lcom/dolphin/browser/search/b/a;->e()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 288
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/search/a/c;->c:Lcom/dolphin/browser/search/a/d;

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/search/a/d;->a(Ljava/lang/String;)Z

    .line 289
    return-void
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/search/b/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lcom/dolphin/browser/search/a/c;->c:Lcom/dolphin/browser/search/a/d;

    invoke-virtual {v0}, Lcom/dolphin/browser/search/a/d;->c()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/search/b/b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 59
    const/16 v0, 0x66

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/search/a/c;->a(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/search/b/b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 64
    const/16 v0, 0x65

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/search/a/c;->a(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public e()Lcom/dolphin/browser/search/b/b;
    .locals 3

    .prologue
    .line 82
    const/4 v0, 0x0

    .line 83
    invoke-virtual {p0}, Lcom/dolphin/browser/search/a/c;->b()Ljava/util/List;

    move-result-object v1

    .line 84
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 85
    const/16 v2, 0x65

    invoke-direct {p0, v1, v2}, Lcom/dolphin/browser/search/a/c;->a(Ljava/util/List;I)Lcom/dolphin/browser/search/b/a;

    move-result-object v1

    .line 87
    if-eqz v1, :cond_0

    .line 88
    invoke-virtual {v1}, Lcom/dolphin/browser/search/b/a;->b()Lcom/dolphin/browser/search/b/b;

    move-result-object v0

    .line 92
    :cond_0
    return-object v0
.end method

.method public f()Z
    .locals 2

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/dolphin/browser/search/a/c;->e()Lcom/dolphin/browser/search/b/b;

    move-result-object v0

    .line 120
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/dolphin/browser/search/b/b;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "google"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()V
    .locals 6

    .prologue
    .line 138
    iget-object v0, p0, Lcom/dolphin/browser/search/a/c;->b:Lcom/dolphin/browser/search/a/b;

    invoke-virtual {v0}, Lcom/dolphin/browser/search/a/b;->b()Ljava/lang/String;

    move-result-object v1

    .line 139
    invoke-virtual {p0}, Lcom/dolphin/browser/search/a/c;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/search/b/b;

    .line 140
    invoke-virtual {v0}, Lcom/dolphin/browser/search/b/b;->d()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 141
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/search/a/c;->a(Lcom/dolphin/browser/search/b/b;)V

    goto :goto_0

    .line 145
    :cond_1
    invoke-virtual {p0}, Lcom/dolphin/browser/search/a/c;->c()Ljava/util/List;

    move-result-object v1

    .line 146
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/search/b/b;

    .line 147
    iget-object v3, p0, Lcom/dolphin/browser/search/a/c;->b:Lcom/dolphin/browser/search/a/b;

    invoke-virtual {v0}, Lcom/dolphin/browser/search/b/b;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/dolphin/browser/search/b/b;->f()Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/dolphin/browser/search/a/b;->a(Ljava/lang/String;Z)Z

    move-result v3

    .line 149
    invoke-virtual {v0, v3}, Lcom/dolphin/browser/search/b/b;->a(Z)V

    goto :goto_1

    .line 151
    :cond_2
    invoke-virtual {p0, v1}, Lcom/dolphin/browser/search/a/c;->a(Ljava/util/List;)V

    .line 152
    return-void
.end method

.method public h()V
    .locals 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/dolphin/browser/search/a/c;->b:Lcom/dolphin/browser/search/a/b;

    invoke-virtual {v0}, Lcom/dolphin/browser/search/a/b;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/dolphin/browser/search/a/c;->b:Lcom/dolphin/browser/search/a/b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/search/a/b;->a(Z)V

    .line 159
    :cond_0
    return-void
.end method
