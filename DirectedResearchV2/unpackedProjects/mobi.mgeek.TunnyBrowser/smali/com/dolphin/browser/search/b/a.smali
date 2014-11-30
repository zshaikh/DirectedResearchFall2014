.class public Lcom/dolphin/browser/search/b/a;
.super Ljava/lang/Object;
.source "SearchCategory.java"


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:I

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/search/b/b;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/dolphin/browser/search/b/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dolphin/browser/search/b/a;->g:Lcom/dolphin/browser/search/b/b;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/search/b/a;->f:Ljava/util/List;

    .line 41
    return-void
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/dolphin/browser/search/b/a;
    .locals 7

    .prologue
    .line 131
    if-nez p0, :cond_1

    .line 132
    const/4 v0, 0x0

    .line 160
    :cond_0
    return-object v0

    .line 135
    :cond_1
    new-instance v0, Lcom/dolphin/browser/search/b/a;

    invoke-direct {v0}, Lcom/dolphin/browser/search/b/a;-><init>()V

    .line 136
    const-string v1, "layout"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/dolphin/browser/search/b/a;->a:I

    .line 137
    const-string v1, "order"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/dolphin/browser/search/b/a;->d:I

    .line 138
    const-string v1, "title"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/dolphin/browser/search/b/a;->b:Ljava/lang/String;

    .line 139
    const-string v1, "last_modified"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/dolphin/browser/search/b/a;->e:I

    .line 140
    const-string v1, "default_engine"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/dolphin/browser/search/b/a;->c:Ljava/lang/String;

    .line 142
    const-string v1, "searches"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 143
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 144
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    .line 145
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {v4}, Lcom/dolphin/browser/search/b/b;->a(Lorg/json/JSONObject;)Lcom/dolphin/browser/search/b/b;

    move-result-object v4

    .line 146
    if-eqz v4, :cond_2

    .line 148
    iget-object v5, v0, Lcom/dolphin/browser/search/b/a;->f:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    invoke-virtual {v4}, Lcom/dolphin/browser/search/b/b;->e()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 150
    iput-object v4, v0, Lcom/dolphin/browser/search/b/a;->g:Lcom/dolphin/browser/search/b/b;

    .line 151
    invoke-virtual {v4}, Lcom/dolphin/browser/search/b/b;->d()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/dolphin/browser/search/b/a;->c:Ljava/lang/String;

    .line 144
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 153
    :cond_3
    iget-object v5, v0, Lcom/dolphin/browser/search/b/a;->c:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/dolphin/browser/search/b/b;->d()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 154
    iput-object v4, v0, Lcom/dolphin/browser/search/b/a;->g:Lcom/dolphin/browser/search/b/b;

    goto :goto_1
.end method

.method private b(I)Z
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/dolphin/browser/search/b/a;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/search/b/b;

    .line 100
    invoke-virtual {v0}, Lcom/dolphin/browser/search/b/b;->a()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 101
    const/4 v0, 0x1

    .line 104
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/dolphin/browser/search/b/a;->a:I

    return v0
.end method

.method public a(I)V
    .locals 3

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/dolphin/browser/search/b/a;->b(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 95
    :cond_0
    return-void

    .line 88
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/search/b/a;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/search/b/b;

    .line 90
    invoke-virtual {v0}, Lcom/dolphin/browser/search/b/b;->a()I

    move-result v2

    if-ne v2, p1, :cond_2

    .line 91
    iput-object v0, p0, Lcom/dolphin/browser/search/b/a;->g:Lcom/dolphin/browser/search/b/b;

    .line 92
    invoke-virtual {v0}, Lcom/dolphin/browser/search/b/b;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/search/b/a;->c:Ljava/lang/String;

    goto :goto_0
.end method

.method public a(Lcom/dolphin/browser/search/b/b;)V
    .locals 1

    .prologue
    .line 75
    if-nez p1, :cond_0

    .line 80
    :goto_0
    return-void

    .line 78
    :cond_0
    iput-object p1, p0, Lcom/dolphin/browser/search/b/a;->g:Lcom/dolphin/browser/search/b/b;

    .line 79
    invoke-virtual {p1}, Lcom/dolphin/browser/search/b/b;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/search/b/a;->c:Ljava/lang/String;

    goto :goto_0
.end method

.method public a(Ljava/util/List;)V
    .locals 0
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
    .line 109
    iput-object p1, p0, Lcom/dolphin/browser/search/b/a;->f:Ljava/util/List;

    .line 110
    return-void
.end method

.method public b()Lcom/dolphin/browser/search/b/b;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/dolphin/browser/search/b/a;->g:Lcom/dolphin/browser/search/b/b;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/dolphin/browser/search/b/a;->g:Lcom/dolphin/browser/search/b/b;

    .line 69
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Ljava/util/List;)Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/search/b/b;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .prologue
    .line 170
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 172
    :try_start_0
    const-string v0, "layout"

    iget v2, p0, Lcom/dolphin/browser/search/b/a;->a:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 173
    const-string v0, "order"

    iget v2, p0, Lcom/dolphin/browser/search/b/a;->d:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 174
    const-string v0, "title"

    iget-object v2, p0, Lcom/dolphin/browser/search/b/a;->b:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 175
    const-string v0, "last_modified"

    iget v2, p0, Lcom/dolphin/browser/search/b/a;->e:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 176
    const-string v0, "default_engine"

    iget-object v2, p0, Lcom/dolphin/browser/search/b/a;->c:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 178
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 179
    if-eqz p1, :cond_0

    .line 180
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/search/b/b;

    .line 181
    invoke-virtual {v0}, Lcom/dolphin/browser/search/b/b;->i()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 186
    :catch_0
    move-exception v0

    .line 187
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    .line 190
    :goto_1
    return-object v1

    .line 184
    :cond_0
    :try_start_1
    const-string v0, "searches"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
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
    .line 114
    iget-object v0, p0, Lcom/dolphin/browser/search/b/a;->f:Ljava/util/List;

    return-object v0
.end method

.method public d()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/dolphin/browser/search/b/b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 119
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 120
    iget-object v0, p0, Lcom/dolphin/browser/search/b/a;->f:Ljava/util/List;

    if-nez v0, :cond_0

    move-object v0, v1

    .line 126
    :goto_0
    return-object v0

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/search/b/a;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/search/b/b;

    .line 124
    invoke-virtual {v0}, Lcom/dolphin/browser/search/b/b;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 126
    goto :goto_0
.end method

.method public e()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/dolphin/browser/search/b/a;->f:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/search/b/a;->b(Ljava/util/List;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method
