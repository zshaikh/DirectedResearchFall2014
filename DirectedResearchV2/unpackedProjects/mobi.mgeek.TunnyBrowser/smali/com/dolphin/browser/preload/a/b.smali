.class public Lcom/dolphin/browser/preload/a/b;
.super Ljava/lang/Object;
.source "ConfigData.java"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/preload/a/a;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/preload/a/e;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/search/b/a;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/dolphin/browser/preload/a/c;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/preload/a/d;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Z

.field private o:Lcom/dolphin/browser/preload/a/f;

.field private p:Z

.field private q:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/dolphin/browser/preload/a/b;
    .locals 1

    .prologue
    .line 136
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/dolphin/browser/preload/a/b;->a(Lorg/json/JSONObject;Z)Lcom/dolphin/browser/preload/a/b;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lorg/json/JSONObject;Z)Lcom/dolphin/browser/preload/a/b;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 141
    if-nez p0, :cond_0

    .line 180
    :goto_0
    return-object v0

    .line 146
    :cond_0
    if-nez p1, :cond_1

    .line 147
    invoke-static {}, Lcom/dolphin/browser/preload/l;->c()Lcom/dolphin/browser/preload/a/b;

    move-result-object v0

    .line 150
    :cond_1
    new-instance v1, Lcom/dolphin/browser/preload/a/b;

    invoke-direct {v1}, Lcom/dolphin/browser/preload/a/b;-><init>()V

    .line 152
    const-string v2, "bookmarks"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-static {v2}, Lcom/dolphin/browser/preload/a/a;->a(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lcom/dolphin/browser/preload/a/b;->a:Ljava/util/List;

    .line 154
    const-string v2, "speeddials"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-static {v2}, Lcom/dolphin/browser/preload/a/e;->a(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lcom/dolphin/browser/preload/a/b;->b:Ljava/util/List;

    .line 156
    const-string v2, "search_engines"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-static {v2}, Lcom/dolphin/browser/search/a/d;->a(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lcom/dolphin/browser/preload/a/b;->c:Ljava/util/List;

    .line 159
    iget-object v2, v1, Lcom/dolphin/browser/preload/a/b;->c:Ljava/util/List;

    if-eqz v2, :cond_2

    iget-object v2, v1, Lcom/dolphin/browser/preload/a/b;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    if-eqz v0, :cond_3

    .line 160
    invoke-virtual {v0}, Lcom/dolphin/browser/preload/a/b;->b()Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lcom/dolphin/browser/preload/a/b;->c:Ljava/util/List;

    .line 163
    :cond_3
    const-string v0, "gesture"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/preload/a/c;->a(Lorg/json/JSONObject;)Lcom/dolphin/browser/preload/a/c;

    move-result-object v0

    iput-object v0, v1, Lcom/dolphin/browser/preload/a/b;->d:Lcom/dolphin/browser/preload/a/c;

    .line 164
    const-string v0, "home_page"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/dolphin/browser/preload/a/b;->e:Ljava/lang/String;

    .line 165
    const-string v0, "hotapps"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/dolphin/browser/preload/a/b;->f:Ljava/lang/String;

    .line 166
    const-string v0, "tutorial"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/dolphin/browser/preload/a/b;->g:Ljava/lang/String;

    .line 167
    const-string v0, "about"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/dolphin/browser/preload/a/b;->h:Ljava/lang/String;

    .line 168
    const-string v0, "launcher_shortcuts"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/preload/a/d;->a(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lcom/dolphin/browser/preload/a/b;->i:Ljava/util/List;

    .line 169
    const-string v0, "more_addon_link"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/dolphin/browser/preload/a/b;->j:Ljava/lang/String;

    .line 170
    const-string v0, "more_theme_link"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/dolphin/browser/preload/a/b;->k:Ljava/lang/String;

    .line 171
    const-string v0, "check_update_link"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/dolphin/browser/preload/a/b;->l:Ljava/lang/String;

    .line 172
    const-string v0, "rate_me_link"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/dolphin/browser/preload/a/b;->m:Ljava/lang/String;

    .line 173
    const-string v0, "show_download_translate"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/dolphin/browser/preload/a/b;->n:Z

    .line 175
    const-string v0, "strategy"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/preload/a/f;->a(Lorg/json/JSONObject;)Lcom/dolphin/browser/preload/a/f;

    move-result-object v0

    iput-object v0, v1, Lcom/dolphin/browser/preload/a/b;->o:Lcom/dolphin/browser/preload/a/f;

    .line 177
    const-string v0, "data_test"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/dolphin/browser/preload/a/b;->p:Z

    .line 178
    const-string v0, "id"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/dolphin/browser/preload/a/b;->q:Ljava/lang/String;

    move-object v0, v1

    .line 180
    goto/16 :goto_0
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/preload/a/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 51
    iget-object v0, p0, Lcom/dolphin/browser/preload/a/b;->a:Ljava/util/List;

    return-object v0
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
    .line 61
    iget-object v0, p0, Lcom/dolphin/browser/preload/a/b;->c:Ljava/util/List;

    return-object v0
.end method

.method public c()Lcom/dolphin/browser/preload/a/c;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/dolphin/browser/preload/a/b;->d:Lcom/dolphin/browser/preload/a/c;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/dolphin/browser/preload/a/b;->e:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/dolphin/browser/preload/a/b;->f:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/dolphin/browser/preload/a/b;->g:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/dolphin/browser/preload/a/b;->h:Ljava/lang/String;

    return-object v0
.end method

.method public h()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/preload/a/d;",
            ">;"
        }
    .end annotation

    .prologue
    .line 91
    iget-object v0, p0, Lcom/dolphin/browser/preload/a/b;->i:Ljava/util/List;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/dolphin/browser/preload/a/b;->j:Ljava/lang/String;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/dolphin/browser/preload/a/b;->k:Ljava/lang/String;

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/dolphin/browser/preload/a/b;->l:Ljava/lang/String;

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/dolphin/browser/preload/a/b;->m:Ljava/lang/String;

    return-object v0
.end method

.method public m()Z
    .locals 1

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/dolphin/browser/preload/a/b;->n:Z

    return v0
.end method

.method public n()Lcom/dolphin/browser/preload/a/f;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/dolphin/browser/preload/a/b;->o:Lcom/dolphin/browser/preload/a/f;

    return-object v0
.end method

.method public o()Z
    .locals 1

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/dolphin/browser/preload/a/b;->p:Z

    return v0
.end method

.method public p()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/dolphin/browser/preload/a/b;->q:Ljava/lang/String;

    return-object v0
.end method
