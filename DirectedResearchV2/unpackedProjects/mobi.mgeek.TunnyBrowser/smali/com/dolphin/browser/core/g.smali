.class public Lcom/dolphin/browser/core/g;
.super Ljava/lang/Object;
.source "DolphinWebkitToggler.java"


# static fields
.field private static a:Lcom/dolphin/browser/core/g;


# instance fields
.field private b:I

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:I

.field private g:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/dolphin/browser/core/g;
    .locals 2

    .prologue
    .line 41
    sget-object v0, Lcom/dolphin/browser/core/g;->a:Lcom/dolphin/browser/core/g;

    if-nez v0, :cond_0

    .line 43
    :try_start_0
    const-string v0, "mobi.mgeek.TunnyBrowser.eg"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 44
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 45
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 46
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/core/g;

    sput-object v0, Lcom/dolphin/browser/core/g;->a:Lcom/dolphin/browser/core/g;

    .line 47
    sget-object v0, Lcom/dolphin/browser/core/g;->a:Lcom/dolphin/browser/core/g;

    invoke-virtual {v0}, Lcom/dolphin/browser/core/g;->h()V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_5

    .line 63
    :cond_0
    sget-object v0, Lcom/dolphin/browser/core/g;->a:Lcom/dolphin/browser/core/g;

    return-object v0

    .line 48
    :catch_0
    move-exception v0

    .line 49
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 50
    :catch_1
    move-exception v0

    .line 51
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 52
    :catch_2
    move-exception v0

    .line 53
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 54
    :catch_3
    move-exception v0

    .line 55
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 56
    :catch_4
    move-exception v0

    .line 57
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 58
    :catch_5
    move-exception v0

    .line 59
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private a(Landroid/content/SharedPreferences;Z)V
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 116
    invoke-static {}, Lcom/dolphin/browser/util/bn;->a()Lcom/dolphin/browser/util/bn;

    move-result-object v2

    const-string v3, "jetpackState"

    invoke-virtual {v2, v3, v0}, Lcom/dolphin/browser/util/bn;->a(Ljava/lang/String;Z)Z

    move-result v2

    .line 117
    invoke-static {}, Lcom/dolphin/browser/core/DolphinWebkitManager;->a()Lcom/dolphin/browser/core/DolphinWebkitManager;

    move-result-object v3

    .line 118
    invoke-virtual {v3}, Lcom/dolphin/browser/core/DolphinWebkitManager;->i()Z

    move-result v3

    .line 119
    invoke-static {}, Lcom/dolphin/browser/core/DolphinWebkitManager;->b()Z

    move-result v4

    .line 120
    const-string v5, "use_dolphin_webkit"

    invoke-interface {p1, v5}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v5

    .line 121
    if-nez v5, :cond_2

    .line 126
    :goto_0
    if-eqz p2, :cond_0

    if-nez v3, :cond_1

    :cond_0
    if-eqz v4, :cond_3

    :cond_1
    if-eqz v2, :cond_3

    .line 127
    :goto_1
    invoke-virtual {p0, v0, v1}, Lcom/dolphin/browser/core/g;->b(ZZ)V

    .line 128
    return-void

    .line 124
    :cond_2
    const-string v5, "use_dolphin_webkit"

    invoke-interface {p1, v5, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    goto :goto_0

    :cond_3
    move v0, v1

    .line 126
    goto :goto_1
.end method

.method private j()V
    .locals 3

    .prologue
    .line 201
    invoke-direct {p0}, Lcom/dolphin/browser/core/g;->k()I

    move-result v0

    .line 202
    iget v1, p0, Lcom/dolphin/browser/core/g;->f:I

    if-le v0, v1, :cond_1

    .line 203
    invoke-virtual {p0}, Lcom/dolphin/browser/core/g;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 205
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/dolphin/browser/core/g;->b(ZZ)V

    .line 209
    :cond_0
    invoke-virtual {p0}, Lcom/dolphin/browser/core/g;->g()V

    .line 212
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/core/g;->a(I)V

    .line 214
    :cond_1
    return-void
.end method

.method private k()I
    .locals 2

    .prologue
    .line 217
    iget v0, p0, Lcom/dolphin/browser/core/g;->g:I

    if-nez v0, :cond_0

    .line 218
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v0

    const-string v1, "com.dolphin.browser.engine"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/bw;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/dolphin/browser/core/g;->g:I

    .line 221
    :cond_0
    iget v0, p0, Lcom/dolphin/browser/core/g;->g:I

    return v0
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .prologue
    .line 140
    iput p1, p0, Lcom/dolphin/browser/core/g;->f:I

    .line 141
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 142
    const-string v1, "dolphin_webkit_version"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 143
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 144
    return-void
.end method

.method public a(ZZ)V
    .locals 1

    .prologue
    .line 91
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 92
    invoke-direct {p0, v0, p2}, Lcom/dolphin/browser/core/g;->a(Landroid/content/SharedPreferences;Z)V

    .line 93
    return-void
.end method

.method public b(ZZ)V
    .locals 2

    .prologue
    .line 131
    iput-boolean p1, p0, Lcom/dolphin/browser/core/g;->c:Z

    .line 132
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 133
    const-string v1, "use_dolphin_webkit"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 134
    const-string v1, "dolphin_webkit_dbu"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 135
    invoke-virtual {p0}, Lcom/dolphin/browser/core/g;->i()V

    .line 136
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 137
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/dolphin/browser/core/g;->c:Z

    return v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/dolphin/browser/core/g;->c:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/dolphin/browser/core/g;->e:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/dolphin/browser/core/g;->c:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/dolphin/browser/core/g;->e:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 149
    const/4 v0, 0x0

    return v0
.end method

.method public f()V
    .locals 3

    .prologue
    .line 153
    iget v0, p0, Lcom/dolphin/browser/core/g;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/dolphin/browser/core/g;->b:I

    .line 154
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 155
    const-string v1, "engine_old_notify_times"

    iget v2, p0, Lcom/dolphin/browser/core/g;->b:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 156
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 157
    return-void
.end method

.method public g()V
    .locals 3

    .prologue
    .line 160
    const/4 v0, 0x0

    iput v0, p0, Lcom/dolphin/browser/core/g;->b:I

    .line 161
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 162
    const-string v1, "engine_old_notify_times"

    iget v2, p0, Lcom/dolphin/browser/core/g;->b:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 163
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 164
    return-void
.end method

.method public h()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 167
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 168
    const-string v1, "engine_old_notify_times"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/dolphin/browser/core/g;->b:I

    .line 169
    invoke-static {}, Lcom/dolphin/browser/util/bn;->a()Lcom/dolphin/browser/util/bn;

    move-result-object v1

    const-string v2, "jetpackState"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/dolphin/browser/util/bn;->a(Ljava/lang/String;Z)Z

    move-result v1

    .line 170
    const-string v2, "use_dolphin_webkit"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 171
    const-string v2, "use_dolphin_webkit"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/dolphin/browser/core/g;->d:Z

    .line 172
    iget-boolean v1, p0, Lcom/dolphin/browser/core/g;->d:Z

    iput-boolean v1, p0, Lcom/dolphin/browser/core/g;->c:Z

    .line 178
    :goto_0
    const-string v1, "dolphin_webkit_dbu"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/dolphin/browser/core/g;->e:Z

    .line 179
    const-string v1, "dolphin_webkit_version"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/dolphin/browser/core/g;->f:I

    .line 180
    invoke-direct {p0}, Lcom/dolphin/browser/core/g;->j()V

    .line 181
    return-void

    .line 174
    :cond_0
    iput-boolean v4, p0, Lcom/dolphin/browser/core/g;->d:Z

    .line 175
    iput-boolean v1, p0, Lcom/dolphin/browser/core/g;->c:Z

    goto :goto_0
.end method

.method public i()V
    .locals 4

    .prologue
    .line 185
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 187
    iget-boolean v1, p0, Lcom/dolphin/browser/core/g;->c:Z

    if-eqz v1, :cond_0

    const-string v1, "dolphin_webkit_lastversion_used"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 188
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v1

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "dolphin_webkit_lastversion_used"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 191
    :cond_0
    return-void
.end method
