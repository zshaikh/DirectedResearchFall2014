.class public Lcom/dolphin/browser/extensions/a/a;
.super Ljava/lang/Object;
.source "PromotedAddon.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/dolphin/browser/extensions/a/a;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Z

.field private k:Z

.field private l:I

.field private m:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method

.method private static a(Lorg/json/JSONObject;)Lcom/dolphin/browser/extensions/a/a;
    .locals 2

    .prologue
    .line 157
    if-nez p0, :cond_0

    .line 158
    const/4 v0, 0x0

    .line 176
    :goto_0
    return-object v0

    .line 161
    :cond_0
    new-instance v0, Lcom/dolphin/browser/extensions/a/a;

    invoke-direct {v0}, Lcom/dolphin/browser/extensions/a/a;-><init>()V

    .line 163
    const-string v1, "id"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/dolphin/browser/extensions/a/a;->a:Ljava/lang/String;

    .line 164
    const-string v1, "name"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/dolphin/browser/extensions/a/a;->b:Ljava/lang/String;

    .line 165
    const-string v1, "download_url"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/dolphin/browser/extensions/a/a;->c:Ljava/lang/String;

    .line 166
    const-string v1, "application_name"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/dolphin/browser/extensions/a/a;->d:Ljava/lang/String;

    .line 167
    const-string v1, "package_name"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/dolphin/browser/extensions/a/a;->e:Ljava/lang/String;

    .line 168
    const-string v1, "icon_url"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/dolphin/browser/extensions/a/a;->f:Ljava/lang/String;

    .line 169
    const-string v1, "description"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/dolphin/browser/extensions/a/a;->g:Ljava/lang/String;

    .line 170
    const-string v1, "long_description"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/dolphin/browser/extensions/a/a;->h:Ljava/lang/String;

    .line 171
    const-string v1, "addon_bar_icon_url"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/dolphin/browser/extensions/a/a;->i:Ljava/lang/String;

    .line 172
    const-string v1, "show_in_addon_bar"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/dolphin/browser/extensions/a/a;->j:Z

    .line 173
    const-string v1, "is_text_selection_addon"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/dolphin/browser/extensions/a/a;->k:Z

    .line 174
    const-string v1, "order"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/dolphin/browser/extensions/a/a;->l:I

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/extensions/a/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 134
    const/4 v1, 0x0

    .line 136
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 137
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 138
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 139
    if-lez v3, :cond_2

    .line 140
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    .line 142
    :try_start_1
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {v4}, Lcom/dolphin/browser/extensions/a/a;->a(Lorg/json/JSONObject;)Lcom/dolphin/browser/extensions/a/a;

    move-result-object v4

    .line 143
    if-eqz v4, :cond_0

    .line 144
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 141
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 149
    :catch_0
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    .line 150
    :goto_1
    invoke-static {v1}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    .line 153
    :cond_1
    :goto_2
    return-object v0

    .line 149
    :catch_1
    move-exception v1

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_2
.end method

.method public static a(Ljava/util/List;)Lorg/json/JSONArray;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/extensions/a/a;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .prologue
    .line 208
    const/4 v0, 0x0

    .line 209
    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 210
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 211
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    .line 212
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_0

    .line 213
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/extensions/a/a;

    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/a/a;->e()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 212
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 216
    :cond_1
    return-object v0
.end method

.method public static b(Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/extensions/a/a;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 221
    invoke-static {p0}, Lcom/dolphin/browser/extensions/a/a;->a(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v0

    .line 222
    if-eqz v0, :cond_0

    .line 223
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    .line 225
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/dolphin/browser/extensions/a/a;)I
    .locals 2

    .prologue
    .line 182
    iget v0, p0, Lcom/dolphin/browser/extensions/a/a;->l:I

    iget v1, p1, Lcom/dolphin/browser/extensions/a/a;->l:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/dolphin/browser/extensions/a/a;->e:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/dolphin/browser/extensions/a/a;->f:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/dolphin/browser/extensions/a/a;->i:Ljava/lang/String;

    return-object v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 17
    check-cast p1, Lcom/dolphin/browser/extensions/a/a;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/extensions/a/a;->a(Lcom/dolphin/browser/extensions/a/a;)I

    move-result v0

    return v0
.end method

.method public d()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 116
    iget-object v0, p0, Lcom/dolphin/browser/extensions/a/a;->m:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 117
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/extensions/a/a;->m:Landroid/os/Bundle;

    .line 118
    iget-object v0, p0, Lcom/dolphin/browser/extensions/a/a;->m:Landroid/os/Bundle;

    const-string v1, "name"

    iget-object v2, p0, Lcom/dolphin/browser/extensions/a/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/dolphin/browser/extensions/a/a;->m:Landroid/os/Bundle;

    const-string v1, "download_url"

    iget-object v2, p0, Lcom/dolphin/browser/extensions/a/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/dolphin/browser/extensions/a/a;->m:Landroid/os/Bundle;

    const-string v1, "application_name"

    iget-object v2, p0, Lcom/dolphin/browser/extensions/a/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/dolphin/browser/extensions/a/a;->m:Landroid/os/Bundle;

    const-string v1, "package_name"

    iget-object v2, p0, Lcom/dolphin/browser/extensions/a/a;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcom/dolphin/browser/extensions/a/a;->m:Landroid/os/Bundle;

    const-string v1, "icon"

    iget-object v2, p0, Lcom/dolphin/browser/extensions/a/a;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/dolphin/browser/extensions/a/a;->m:Landroid/os/Bundle;

    const-string v1, "description"

    iget-object v2, p0, Lcom/dolphin/browser/extensions/a/a;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lcom/dolphin/browser/extensions/a/a;->m:Landroid/os/Bundle;

    const-string v1, "long_description"

    iget-object v2, p0, Lcom/dolphin/browser/extensions/a/a;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/dolphin/browser/extensions/a/a;->m:Landroid/os/Bundle;

    const-string v1, "addon_bar_icon"

    iget-object v2, p0, Lcom/dolphin/browser/extensions/a/a;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/dolphin/browser/extensions/a/a;->m:Landroid/os/Bundle;

    const-string v1, "show_in_addon_bar"

    iget-boolean v2, p0, Lcom/dolphin/browser/extensions/a/a;->j:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 127
    iget-object v0, p0, Lcom/dolphin/browser/extensions/a/a;->m:Landroid/os/Bundle;

    const-string v1, "is_text_selection_addon"

    iget-boolean v2, p0, Lcom/dolphin/browser/extensions/a/a;->k:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 128
    iget-object v0, p0, Lcom/dolphin/browser/extensions/a/a;->m:Landroid/os/Bundle;

    const-string v1, "order"

    iget v2, p0, Lcom/dolphin/browser/extensions/a/a;->l:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/extensions/a/a;->m:Landroid/os/Bundle;

    return-object v0
.end method

.method public e()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 186
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 188
    :try_start_0
    const-string v0, "id"

    iget-object v2, p0, Lcom/dolphin/browser/extensions/a/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 189
    const-string v0, "name"

    iget-object v2, p0, Lcom/dolphin/browser/extensions/a/a;->b:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 190
    const-string v0, "download_url"

    iget-object v2, p0, Lcom/dolphin/browser/extensions/a/a;->c:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 191
    const-string v0, "application_name"

    iget-object v2, p0, Lcom/dolphin/browser/extensions/a/a;->d:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 192
    const-string v0, "package_name"

    iget-object v2, p0, Lcom/dolphin/browser/extensions/a/a;->e:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 193
    const-string v0, "icon_url"

    iget-object v2, p0, Lcom/dolphin/browser/extensions/a/a;->f:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 194
    const-string v0, "description"

    iget-object v2, p0, Lcom/dolphin/browser/extensions/a/a;->g:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 195
    const-string v0, "long_description"

    iget-object v2, p0, Lcom/dolphin/browser/extensions/a/a;->h:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 196
    const-string v0, "addon_bar_icon_url"

    iget-object v2, p0, Lcom/dolphin/browser/extensions/a/a;->i:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 197
    const-string v0, "show_in_addon_bar"

    iget-boolean v2, p0, Lcom/dolphin/browser/extensions/a/a;->j:Z

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 198
    const-string v0, "is_text_selection_addon"

    iget-boolean v2, p0, Lcom/dolphin/browser/extensions/a/a;->k:Z

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 199
    const-string v0, "order"

    iget v2, p0, Lcom/dolphin/browser/extensions/a/a;->l:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    :goto_0
    return-object v1

    .line 200
    :catch_0
    move-exception v0

    .line 201
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public f()Z
    .locals 2

    .prologue
    .line 230
    invoke-static {}, Lcom/dolphin/browser/core/Configuration;->getInstance()Lcom/dolphin/browser/core/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/Configuration;->getPreInstallAppApplicationName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/extensions/a/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/dolphin/browser/core/Configuration;->getInstance()Lcom/dolphin/browser/core/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/Configuration;->getPromotedAppApplicationName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/extensions/a/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 232
    :cond_0
    const/4 v0, 0x1

    .line 234
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()Z
    .locals 2

    .prologue
    .line 238
    invoke-static {}, Lcom/dolphin/browser/core/Configuration;->getInstance()Lcom/dolphin/browser/core/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/Configuration;->getPreInstallAppApplicationName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/extensions/a/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/dolphin/browser/core/Configuration;->getInstance()Lcom/dolphin/browser/core/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/Configuration;->getPreInstallAddonApplicationName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/extensions/a/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 240
    :cond_0
    const/4 v0, 0x1

    .line 242
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
