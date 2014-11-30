.class public Lcom/dolphin/browser/DolphinService/Account/a;
.super Ljava/lang/Object;
.source "Account.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z

.field private c:Z

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Z

.field private i:I

.field private j:Ljava/lang/String;

.field private k:Z

.field private l:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/dolphin/browser/DolphinService/Account/n;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/DolphinService/Account/a;->l:Ljava/util/Set;

    .line 73
    return-void
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/dolphin/browser/DolphinService/Account/a;
    .locals 1

    .prologue
    .line 76
    new-instance v0, Lcom/dolphin/browser/DolphinService/Account/a;

    invoke-direct {v0}, Lcom/dolphin/browser/DolphinService/Account/a;-><init>()V

    .line 77
    invoke-virtual {v0, p0}, Lcom/dolphin/browser/DolphinService/Account/a;->b(Lorg/json/JSONObject;)V

    .line 79
    return-object v0
.end method

.method public static a(Landroid/content/SharedPreferences;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 83
    const-string v0, "pref_last_username"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static a(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 92
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 93
    const-string v1, "pref_last_avatar_url"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 94
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 95
    return-void
.end method

.method public static b(Landroid/content/SharedPreferences;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 87
    const-string v0, "pref_last_avatar_url"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c(Landroid/content/SharedPreferences;)Lcom/dolphin/browser/DolphinService/Account/a;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x0

    .line 98
    const-string v1, "pref_username"

    const-string v2, ""

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 99
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 128
    :goto_0
    return-object v0

    .line 103
    :cond_0
    new-instance v1, Lcom/dolphin/browser/DolphinService/Account/a;

    invoke-direct {v1}, Lcom/dolphin/browser/DolphinService/Account/a;-><init>()V

    .line 104
    iput-object v2, v1, Lcom/dolphin/browser/DolphinService/Account/a;->a:Ljava/lang/String;

    .line 106
    const-string v2, "pref_active"

    invoke-interface {p0, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v1, Lcom/dolphin/browser/DolphinService/Account/a;->b:Z

    .line 107
    const-string v2, "pref_auto_created"

    invoke-interface {p0, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v1, Lcom/dolphin/browser/DolphinService/Account/a;->c:Z

    .line 108
    const-string v2, "prefs_region_domain"

    invoke-interface {p0, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/DolphinService/Account/a;->a(Ljava/lang/String;)V

    .line 109
    const-string v2, "pref_push_domain"

    invoke-interface {p0, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/DolphinService/Account/a;->b(Ljava/lang/String;)V

    .line 110
    const-string v2, "prefs_login_records"

    invoke-interface {p0, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 112
    if-eqz v2, :cond_1

    .line 113
    iget-object v3, v1, Lcom/dolphin/browser/DolphinService/Account/a;->l:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->clear()V

    .line 115
    :try_start_0
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 116
    invoke-virtual {v1, v3}, Lcom/dolphin/browser/DolphinService/Account/a;->a(Lorg/json/JSONArray;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :cond_1
    :goto_1
    const-string v2, "pref_email"

    invoke-interface {p0, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/dolphin/browser/DolphinService/Account/a;->f:Ljava/lang/String;

    .line 123
    const-string v2, "pref_verified"

    invoke-interface {p0, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v1, Lcom/dolphin/browser/DolphinService/Account/a;->h:Z

    .line 124
    const-string v2, "pref_login_type"

    const/4 v3, -0x1

    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/dolphin/browser/DolphinService/Account/a;->i:I

    .line 125
    const-string v2, "pref_nick_name"

    invoke-interface {p0, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/dolphin/browser/DolphinService/Account/a;->j:Ljava/lang/String;

    .line 126
    const-string v2, "pref_avatar_url"

    invoke-interface {p0, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/dolphin/browser/DolphinService/Account/a;->g:Ljava/lang/String;

    move-object v0, v1

    .line 128
    goto :goto_0

    .line 117
    :catch_0
    move-exception v2

    .line 118
    const-string v3, "Account"

    invoke-static {v3, v2}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 319
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 320
    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 321
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 322
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 325
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/Account/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 309
    iput p1, p0, Lcom/dolphin/browser/DolphinService/Account/a;->i:I

    .line 310
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 220
    iput-object p1, p0, Lcom/dolphin/browser/DolphinService/Account/a;->d:Ljava/lang/String;

    .line 221
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 222
    invoke-static {}, Lcom/dolphin/browser/DolphinService/WebService/g;->a()Lcom/dolphin/browser/DolphinService/WebService/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/DolphinService/WebService/g;->a(Ljava/lang/String;)V

    .line 224
    :cond_0
    return-void
.end method

.method a(Ljava/lang/String;Landroid/content/SharedPreferences;)V
    .locals 3

    .prologue
    .line 330
    iput-object p1, p0, Lcom/dolphin/browser/DolphinService/Account/a;->j:Ljava/lang/String;

    .line 331
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 332
    const-string v1, "pref_nick_name"

    invoke-virtual {p0}, Lcom/dolphin/browser/DolphinService/Account/a;->k()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 333
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 334
    return-void
.end method

.method public a(Lorg/json/JSONArray;)V
    .locals 3

    .prologue
    .line 253
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/Account/a;->l:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 255
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 256
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 257
    iget-object v2, p0, Lcom/dolphin/browser/DolphinService/Account/a;->l:Ljava/util/Set;

    invoke-static {v0}, Lcom/dolphin/browser/DolphinService/Account/n;->a(Lorg/json/JSONObject;)Lcom/dolphin/browser/DolphinService/Account/n;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 255
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 259
    :cond_0
    return-void
.end method

.method a(Z)V
    .locals 0

    .prologue
    .line 301
    iput-boolean p1, p0, Lcom/dolphin/browser/DolphinService/Account/a;->k:Z

    .line 302
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/Account/a;->g:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 231
    iput-object p1, p0, Lcom/dolphin/browser/DolphinService/Account/a;->e:Ljava/lang/String;

    .line 232
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 233
    invoke-static {}, Lcom/dolphin/browser/DolphinService/WebService/g;->a()Lcom/dolphin/browser/DolphinService/WebService/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/DolphinService/WebService/g;->b(Ljava/lang/String;)V

    .line 235
    :cond_0
    return-void
.end method

.method public b(Lorg/json/JSONObject;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 179
    const-string v0, "user_name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/DolphinService/Account/a;->a:Ljava/lang/String;

    .line 181
    const-string v0, "active"

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/dolphin/browser/DolphinService/Account/a;->b:Z

    .line 182
    const-string v0, "auto_created"

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/dolphin/browser/DolphinService/Account/a;->c:Z

    .line 183
    const-string v0, "picture"

    iget-object v3, p0, Lcom/dolphin/browser/DolphinService/Account/a;->g:Ljava/lang/String;

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/DolphinService/Account/a;->g:Ljava/lang/String;

    .line 184
    const-string v0, "region_domain"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/Account/a;->a(Ljava/lang/String;)V

    .line 185
    const-string v0, "email"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/DolphinService/Account/a;->f:Ljava/lang/String;

    .line 186
    const-string v0, "verified"

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_3

    :goto_2
    iput-boolean v1, p0, Lcom/dolphin/browser/DolphinService/Account/a;->h:Z

    .line 187
    const-string v0, "nick_name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/DolphinService/Account/a;->j:Ljava/lang/String;

    .line 188
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/Account/a;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/Account/a;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/dolphin/browser/DolphinService/Account/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/DolphinService/Account/a;->j:Ljava/lang/String;

    .line 191
    :cond_0
    const-string v0, "push_domain"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/Account/a;->b(Ljava/lang/String;)V

    .line 192
    return-void

    :cond_1
    move v0, v2

    .line 181
    goto :goto_0

    :cond_2
    move v0, v2

    .line 182
    goto :goto_1

    :cond_3
    move v1, v2

    .line 186
    goto :goto_2
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 208
    iget-boolean v0, p0, Lcom/dolphin/browser/DolphinService/Account/a;->b:Z

    return v0
.end method

.method public d(Landroid/content/SharedPreferences;)V
    .locals 4

    .prologue
    .line 132
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 133
    const-string v0, "pref_username"

    invoke-virtual {p0}, Lcom/dolphin/browser/DolphinService/Account/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 134
    const-string v0, "pref_last_username"

    invoke-virtual {p0}, Lcom/dolphin/browser/DolphinService/Account/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 136
    const-string v0, "pref_active"

    invoke-virtual {p0}, Lcom/dolphin/browser/DolphinService/Account/a;->c()Z

    move-result v2

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 137
    const-string v0, "pref_auto_created"

    invoke-virtual {p0}, Lcom/dolphin/browser/DolphinService/Account/a;->d()Z

    move-result v2

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 138
    const-string v0, "prefs_region_domain"

    invoke-virtual {p0}, Lcom/dolphin/browser/DolphinService/Account/a;->e()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 139
    const-string v0, "pref_push_domain"

    invoke-virtual {p0}, Lcom/dolphin/browser/DolphinService/Account/a;->f()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 141
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 142
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/Account/a;->l:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/DolphinService/Account/n;

    .line 143
    invoke-virtual {v0}, Lcom/dolphin/browser/DolphinService/Account/n;->a()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 147
    :catch_0
    move-exception v0

    .line 148
    const-string v2, "Account"

    invoke-static {v2, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 151
    :goto_1
    const-string v0, "pref_avatar_url"

    invoke-virtual {p0}, Lcom/dolphin/browser/DolphinService/Account/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 152
    const-string v0, "pref_email"

    invoke-virtual {p0}, Lcom/dolphin/browser/DolphinService/Account/a;->g()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 153
    const-string v0, "pref_verified"

    invoke-virtual {p0}, Lcom/dolphin/browser/DolphinService/Account/a;->h()Z

    move-result v2

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 154
    const-string v0, "pref_login_type"

    invoke-virtual {p0}, Lcom/dolphin/browser/DolphinService/Account/a;->j()I

    move-result v2

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 155
    const-string v0, "pref_nick_name"

    invoke-virtual {p0}, Lcom/dolphin/browser/DolphinService/Account/a;->k()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 157
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 158
    return-void

    .line 146
    :cond_0
    :try_start_1
    const-string v0, "prefs_login_records"

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 212
    iget-boolean v0, p0, Lcom/dolphin/browser/DolphinService/Account/a;->c:Z

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/Account/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public e(Landroid/content/SharedPreferences;)V
    .locals 2

    .prologue
    .line 161
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 162
    const-string v1, "pref_username"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 163
    const-string v1, "pref_expired_time"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 164
    const-string v1, "pref_active"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 165
    const-string v1, "pref_auto_created"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 166
    const-string v1, "prefs_login_records"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 167
    const-string v1, "prefs_region_domain"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 168
    const-string v1, "pref_push_domain"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 169
    const-string v1, "pref_email"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 170
    const-string v1, "pref_avatar_url"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 171
    const-string v1, "pref_verified"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 172
    const-string v1, "pref_login_type"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 173
    const-string v1, "pref_nick_name"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 174
    invoke-static {}, Lcom/dolphin/browser/DolphinService/WebService/g;->a()Lcom/dolphin/browser/DolphinService/WebService/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/DolphinService/WebService/g;->c()V

    .line 175
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 176
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/Account/a;->e:Ljava/lang/String;

    return-object v0
.end method

.method public f(Landroid/content/SharedPreferences;)Z
    .locals 1

    .prologue
    .line 290
    const-string v0, "pref_email"

    invoke-interface {p1, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "pref_verified"

    invoke-interface {p1, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 291
    :cond_0
    const/4 v0, 0x1

    .line 293
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/Account/a;->f:Ljava/lang/String;

    return-object v0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 286
    iget-boolean v0, p0, Lcom/dolphin/browser/DolphinService/Account/a;->h:Z

    return v0
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 297
    iget-boolean v0, p0, Lcom/dolphin/browser/DolphinService/Account/a;->k:Z

    return v0
.end method

.method public j()I
    .locals 1

    .prologue
    .line 305
    iget v0, p0, Lcom/dolphin/browser/DolphinService/Account/a;->i:I

    return v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/Account/a;->j:Ljava/lang/String;

    return-object v0
.end method
