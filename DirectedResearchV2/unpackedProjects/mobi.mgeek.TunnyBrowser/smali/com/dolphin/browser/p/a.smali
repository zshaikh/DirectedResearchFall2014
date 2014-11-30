.class public Lcom/dolphin/browser/p/a;
.super Ljava/lang/Object;
.source "DolphinMoreSettings.java"


# static fields
.field private static a:Lcom/dolphin/browser/p/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    sput-object v0, Lcom/dolphin/browser/p/a;->a:Lcom/dolphin/browser/p/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method

.method public static a()Lcom/dolphin/browser/p/a;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/dolphin/browser/p/a;->a:Lcom/dolphin/browser/p/a;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Lcom/dolphin/browser/p/a;

    invoke-direct {v0}, Lcom/dolphin/browser/p/a;-><init>()V

    sput-object v0, Lcom/dolphin/browser/p/a;->a:Lcom/dolphin/browser/p/a;

    .line 39
    :cond_0
    sget-object v0, Lcom/dolphin/browser/p/a;->a:Lcom/dolphin/browser/p/a;

    return-object v0
.end method

.method private a(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dolphin/browser/p/b;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dolphin/browser/p/b;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 120
    if-nez p2, :cond_1

    .line 146
    :cond_0
    return-object p2

    .line 123
    :cond_1
    invoke-static {p1}, Ldolphin/preference/z;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    move v1, v2

    .line 124
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 125
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/p/b;

    .line 126
    iget v3, v0, Lcom/dolphin/browser/p/b;->e:I

    const/16 v5, 0xa

    if-ne v3, v5, :cond_3

    .line 127
    iget-object v3, v0, Lcom/dolphin/browser/p/b;->b:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 128
    iget-object v5, v0, Lcom/dolphin/browser/p/b;->a:Ljava/lang/String;

    invoke-interface {v4, v5, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 129
    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/dolphin/browser/p/b;->b:Ljava/lang/String;

    .line 124
    :cond_2
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 130
    :cond_3
    iget v3, v0, Lcom/dolphin/browser/p/b;->e:I

    const/16 v5, 0x14

    if-ne v3, v5, :cond_2

    .line 131
    iget-object v3, v0, Lcom/dolphin/browser/p/b;->b:Ljava/lang/String;

    .line 132
    iget-object v5, v0, Lcom/dolphin/browser/p/b;->a:Ljava/lang/String;

    invoke-interface {v4, v5, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 133
    invoke-static {v3, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, v0, Lcom/dolphin/browser/p/b;->f:[Lcom/dolphin/browser/p/b;

    if-eqz v3, :cond_2

    move v3, v2

    .line 136
    :goto_2
    iget-object v6, v0, Lcom/dolphin/browser/p/b;->f:[Lcom/dolphin/browser/p/b;

    array-length v6, v6

    if-ge v3, v6, :cond_2

    .line 137
    iget-object v6, v0, Lcom/dolphin/browser/p/b;->f:[Lcom/dolphin/browser/p/b;

    aget-object v6, v6, v3

    .line 138
    iget-object v7, v6, Lcom/dolphin/browser/p/b;->b:Ljava/lang/String;

    invoke-static {v7, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 139
    iget-object v3, v6, Lcom/dolphin/browser/p/b;->b:Ljava/lang/String;

    iput-object v3, v0, Lcom/dolphin/browser/p/b;->b:Ljava/lang/String;

    .line 140
    iget-object v3, v6, Lcom/dolphin/browser/p/b;->d:Ljava/lang/String;

    iput-object v3, v0, Lcom/dolphin/browser/p/b;->c:Ljava/lang/String;

    goto :goto_1

    .line 136
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/dolphin/browser/core/IWebSettings;)V
    .locals 5

    .prologue
    .line 57
    invoke-virtual {p0, p1, p2}, Lcom/dolphin/browser/p/a;->b(Landroid/content/Context;Lcom/dolphin/browser/core/IWebSettings;)Ljava/util/ArrayList;

    move-result-object v3

    .line 58
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 60
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/p/b;

    .line 61
    iget v2, v0, Lcom/dolphin/browser/p/b;->e:I

    const/16 v4, 0xa

    if-ne v2, v4, :cond_0

    .line 62
    iget-object v2, v0, Lcom/dolphin/browser/p/b;->a:Ljava/lang/String;

    iget-object v4, v0, Lcom/dolphin/browser/p/b;->b:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {p0, p1, v2, v4}, Lcom/dolphin/browser/p/a;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    .line 66
    :goto_1
    iget-object v0, v0, Lcom/dolphin/browser/p/b;->a:Ljava/lang/String;

    invoke-interface {p2, v0, v2}, Lcom/dolphin/browser/core/IWebSettings;->setSingleExpansionSetting(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 64
    :cond_0
    iget-object v2, v0, Lcom/dolphin/browser/p/b;->a:Ljava/lang/String;

    iget-object v4, v0, Lcom/dolphin/browser/p/b;->b:Ljava/lang/String;

    invoke-virtual {p0, p1, v2, v4}, Lcom/dolphin/browser/p/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 68
    :cond_1
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 150
    invoke-static {p1}, Ldolphin/preference/z;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 151
    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 152
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 153
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 162
    invoke-static {p1}, Ldolphin/preference/z;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 163
    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 164
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 165
    return-void
.end method

.method public b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    invoke-static {p1}, Ldolphin/preference/z;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 158
    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Landroid/content/Context;Lcom/dolphin/browser/core/IWebSettings;)Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/dolphin/browser/core/IWebSettings;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dolphin/browser/p/b;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 75
    if-nez p2, :cond_0

    .line 76
    invoke-static {p1}, Lcom/dolphin/browser/core/WebViewFactory;->newWebView(Landroid/content/Context;)Lcom/dolphin/browser/core/IWebView;

    move-result-object v0

    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebView;->getWebSettings()Lcom/dolphin/browser/core/IWebSettings;

    move-result-object p2

    .line 78
    :cond_0
    invoke-interface {p2}, Lcom/dolphin/browser/core/IWebSettings;->getExpansionSettings()Lorg/json/JSONObject;

    move-result-object v1

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 80
    if-nez v1, :cond_2

    .line 116
    :cond_1
    :goto_0
    return-object v0

    .line 84
    :cond_2
    :try_start_0
    const-string v3, "items"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 85
    if-eqz v4, :cond_1

    move v3, v2

    .line 88
    :goto_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v3, v1, :cond_5

    .line 89
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 90
    if-nez v1, :cond_3

    .line 88
    :goto_2
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1

    .line 93
    :cond_3
    new-instance v5, Lcom/dolphin/browser/p/b;

    invoke-direct {v5}, Lcom/dolphin/browser/p/b;-><init>()V

    .line 94
    const-string v6, "key"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/dolphin/browser/p/b;->a:Ljava/lang/String;

    .line 95
    const-string v6, "type"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v5, Lcom/dolphin/browser/p/b;->e:I

    .line 96
    const-string v6, "label"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/dolphin/browser/p/b;->d:Ljava/lang/String;

    .line 97
    const-string v6, "value"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/dolphin/browser/p/b;->b:Ljava/lang/String;

    .line 98
    iget v6, v5, Lcom/dolphin/browser/p/b;->e:I

    const/16 v7, 0x14

    if-ne v6, v7, :cond_4

    .line 99
    const-string v6, "value_label"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/dolphin/browser/p/b;->c:Ljava/lang/String;

    .line 100
    const-string v6, "expand"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 101
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_4

    .line 102
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v1

    new-array v1, v1, [Lcom/dolphin/browser/p/b;

    iput-object v1, v5, Lcom/dolphin/browser/p/b;->f:[Lcom/dolphin/browser/p/b;

    move v1, v2

    .line 103
    :goto_3
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v1, v7, :cond_4

    .line 104
    invoke-virtual {v6, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 105
    iget-object v8, v5, Lcom/dolphin/browser/p/b;->f:[Lcom/dolphin/browser/p/b;

    new-instance v9, Lcom/dolphin/browser/p/b;

    invoke-direct {v9}, Lcom/dolphin/browser/p/b;-><init>()V

    aput-object v9, v8, v1

    .line 106
    iget-object v8, v5, Lcom/dolphin/browser/p/b;->f:[Lcom/dolphin/browser/p/b;

    aget-object v8, v8, v1

    const-string v9, "value"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/dolphin/browser/p/b;->b:Ljava/lang/String;

    .line 107
    iget-object v8, v5, Lcom/dolphin/browser/p/b;->f:[Lcom/dolphin/browser/p/b;

    aget-object v8, v8, v1

    const-string v9, "label"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v8, Lcom/dolphin/browser/p/b;->d:Ljava/lang/String;

    .line 103
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 111
    :cond_4
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 113
    :catch_0
    move-exception v1

    .line 115
    :cond_5
    invoke-direct {p0, p1, v0}, Lcom/dolphin/browser/p/a;->a(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public b(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 1

    .prologue
    .line 169
    invoke-static {p1}, Ldolphin/preference/z;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 170
    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
