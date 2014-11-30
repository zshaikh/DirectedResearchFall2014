.class public Lmobi/mgeek/TunnyBrowser/hq;
.super Ljava/lang/Object;
.source "UpgradeManager.java"


# static fields
.field private static a:Lmobi/mgeek/TunnyBrowser/hq;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    new-instance v0, Lmobi/mgeek/TunnyBrowser/hq;

    invoke-direct {v0}, Lmobi/mgeek/TunnyBrowser/hq;-><init>()V

    sput-object v0, Lmobi/mgeek/TunnyBrowser/hq;->a:Lmobi/mgeek/TunnyBrowser/hq;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    return-void
.end method

.method public static a()Lmobi/mgeek/TunnyBrowser/hq;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lmobi/mgeek/TunnyBrowser/hq;->a:Lmobi/mgeek/TunnyBrowser/hq;

    return-object v0
.end method

.method private a(Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 481
    invoke-static {p1}, Lcom/dolphin/browser/search/h;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 482
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 483
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 484
    const-string v3, "created"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 485
    const-string v3, "date"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 486
    const-string v3, "is_folder"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 487
    const-string v3, "_order"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 488
    const-string v0, "folder"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 489
    const-string v0, "title"

    const-string v1, "\u042f\u043d\u0434\u0435\u043a\u0441"

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    const-string v0, "url"

    const-string v1, "http://www.yandex.ru/?clid=1771222"

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    const-string v0, "is_build_in"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 494
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/AppContext;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 497
    :cond_0
    return-void
.end method

.method static synthetic a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 65
    invoke-static {p0, p1, p2}, Lmobi/mgeek/TunnyBrowser/hq;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Lmobi/mgeek/TunnyBrowser/BrowserActivity;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 391
    invoke-static {p1}, Ldolphin/preference/z;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 393
    const-string v1, "long_press_tab_tips_shown_count"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 394
    const-string v1, "long_press_tab_tips_shown_count"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Lcom/dolphin/browser/h/e;->a(I)V

    .line 398
    :cond_0
    const-string v1, "swipe_close_tab_tips_shown"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 399
    const-string v1, "swipe_close_tab_tips_shown"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Lcom/dolphin/browser/h/e;->a(Z)V

    .line 403
    :cond_1
    const-string v1, "swipe_dolphin_key_tips_shown"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 404
    const-string v1, "swipe_dolphin_key_tips_shown"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Lcom/dolphin/browser/h/e;->b(Z)V

    .line 408
    :cond_2
    const-string v1, "tablist_swipe_guide_shown"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 409
    const-string v1, "tablist_swipe_guide_shown"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Lcom/dolphin/browser/tablist/cc;->b(Z)V

    .line 413
    :cond_3
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "long_press_tab_tips_shown_count"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "swipe_close_tab_tips_shown"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "swipe_dolphin_key_tips_shown"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "tablist_swipe_guide_shown"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 417
    return-void
.end method

.method private a(Lmobi/mgeek/TunnyBrowser/BrowserActivity;I)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 474
    invoke-virtual {p1}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.dolphin.browser.android.jp"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x105

    if-lt p2, v1, :cond_1

    and-int/lit8 v1, p2, 0x1

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 422
    invoke-static {}, Lcom/dolphin/browser/f/e/b;->a()Lcom/dolphin/browser/f/e/b;

    move-result-object v0

    .line 424
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/dolphin/browser/f/e/b;->isShown()Z

    move-result v1

    if-nez v1, :cond_2

    .line 426
    :cond_0
    invoke-static {}, Lcom/dolphin/browser/util/df;->a()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lmobi/mgeek/TunnyBrowser/hs;

    invoke-direct {v1, p0, p1, p2}, Lmobi/mgeek/TunnyBrowser/hs;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 466
    :cond_1
    :goto_0
    return-void

    .line 437
    :cond_2
    new-instance v1, Lmobi/mgeek/TunnyBrowser/ht;

    invoke-direct {v1, p1}, Lmobi/mgeek/TunnyBrowser/ht;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/f/e/b;->a(Lcom/dolphin/browser/launcher/bv;)Ljava/util/List;

    move-result-object v1

    .line 452
    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 454
    :cond_3
    new-instance v1, Lcom/dolphin/browser/launcher/cl;

    invoke-direct {v1}, Lcom/dolphin/browser/launcher/cl;-><init>()V

    .line 455
    invoke-virtual {v1, p0}, Lcom/dolphin/browser/launcher/cl;->a(Ljava/lang/String;)V

    .line 456
    invoke-virtual {v1, p1}, Lcom/dolphin/browser/launcher/cl;->c(Ljava/lang/String;)V

    .line 457
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 458
    const/4 v2, 0x2

    invoke-virtual {v1, v2, p2}, Lcom/dolphin/browser/launcher/cl;->a(ILjava/lang/String;)V

    .line 464
    :goto_1
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/dolphin/browser/f/e/b;->a(Lcom/dolphin/browser/launcher/bi;Z)Z

    goto :goto_0

    .line 461
    :cond_4
    const/4 v2, 0x3

    invoke-virtual {v1, v2, p1}, Lcom/dolphin/browser/launcher/cl;->a(ILjava/lang/String;)V

    goto :goto_1
.end method

.method private c()V
    .locals 2

    .prologue
    .line 502
    :try_start_0
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->j()I

    move-result v0

    .line 504
    const/16 v1, 0xcb

    if-gt v0, v1, :cond_0

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_0

    .line 505
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/l/l;->a(Landroid/content/Context;)Lcom/dolphin/browser/l/l;

    move-result-object v0

    .line 507
    invoke-virtual {v0}, Lcom/dolphin/browser/l/l;->n()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 512
    :cond_0
    :goto_0
    return-void

    .line 509
    :catch_0
    move-exception v0

    .line 510
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public b()V
    .locals 15

    .prologue
    const/16 v11, 0xfb

    const/16 v10, 0xf9

    const-wide/16 v13, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 82
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    move-result-object v4

    .line 83
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v5

    .line 84
    invoke-virtual {v5}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->j()I

    move-result v6

    .line 85
    invoke-virtual {v5, v4}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->p(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    .line 86
    const-string v0, "UpgradeManager"

    const-string v3, "doUpgradeInit from %d"

    new-array v8, v1, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v2

    invoke-static {v0, v3, v8}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 88
    const/16 v0, 0x56

    if-ge v6, v0, :cond_0

    const/16 v0, 0x44

    if-le v6, v0, :cond_0

    .line 90
    new-instance v0, Lmobi/mgeek/TunnyBrowser/hr;

    invoke-direct {v0, p0, v4}, Lmobi/mgeek/TunnyBrowser/hr;-><init>(Lmobi/mgeek/TunnyBrowser/hq;Lmobi/mgeek/TunnyBrowser/BrowserActivity;)V

    new-array v3, v2, [Ljava/lang/Void;

    invoke-static {v0, v3}, Lcom/dolphin/browser/util/r;->a(Lcom/dolphin/browser/util/f;[Ljava/lang/Object;)Lcom/dolphin/browser/util/f;

    .line 120
    :cond_0
    const/16 v0, 0x60

    if-ge v6, v0, :cond_1

    .line 123
    :cond_1
    const/16 v0, 0x64

    if-gt v6, v0, :cond_2

    .line 124
    invoke-virtual {v5, v4}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->t(Landroid/content/Context;)V

    .line 128
    :cond_2
    const/16 v0, 0x84

    if-ge v6, v0, :cond_3

    invoke-virtual {v5}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->z()Z

    move-result v0

    if-nez v0, :cond_3

    .line 129
    invoke-virtual {v5, v4, v1}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->l(Landroid/content/Context;Z)V

    .line 133
    :cond_3
    const/16 v0, 0x85

    if-ge v6, v0, :cond_4

    .line 134
    invoke-static {}, Lcom/dolphin/browser/bookmark/bq;->a()Lcom/dolphin/browser/bookmark/bq;

    move-result-object v0

    invoke-virtual {v4}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v3, v13, v14}, Lcom/dolphin/browser/bookmark/bq;->a(Landroid/content/Context;J)V

    .line 138
    invoke-static {v1}, Lcom/dolphin/browser/sync/a/b;->a(I)Lcom/dolphin/browser/sync/a/a;

    move-result-object v0

    .line 140
    invoke-interface {v0}, Lcom/dolphin/browser/sync/a/a;->b()Z

    move-result v3

    if-nez v3, :cond_4

    .line 141
    const-wide/32 v8, 0x6ddd00

    invoke-interface {v0, v8, v9}, Lcom/dolphin/browser/sync/a/a;->a(J)V

    .line 146
    :cond_4
    const/16 v0, 0x86

    if-ge v6, v0, :cond_5

    .line 148
    invoke-static {v4}, Lcom/dolphin/browser/m/f;->b(Landroid/content/Context;)Lcom/dolphin/browser/m/f;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/m/f;->a(Z)V

    .line 151
    :cond_5
    const/16 v0, 0x8a

    if-ge v6, v0, :cond_6

    .line 155
    invoke-virtual {v5}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->U()V

    .line 170
    :cond_6
    const/16 v0, 0xa5

    if-ne v6, v0, :cond_14

    invoke-static {v4}, Lcom/dolphin/browser/l/l;->a(Landroid/content/Context;)Lcom/dolphin/browser/l/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/l/l;->l()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 173
    invoke-virtual {v5, v1}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->d(Z)V

    .line 178
    :goto_0
    const/16 v0, 0xb9

    if-ge v6, v0, :cond_7

    .line 179
    const-wide/16 v8, 0x2

    invoke-virtual {v5, v8, v9}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->a(J)V

    .line 182
    :cond_7
    const/16 v0, 0xd1

    if-ge v6, v0, :cond_8

    .line 183
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 184
    invoke-static {}, Lcom/dolphin/browser/search/i;->a()Lcom/dolphin/browser/search/i;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/dolphin/browser/search/i;->a(Ljava/lang/String;)V

    .line 185
    invoke-virtual {v5, v4, v0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 187
    invoke-direct {p0, v0}, Lmobi/mgeek/TunnyBrowser/hq;->a(Ljava/lang/String;)V

    .line 190
    :cond_8
    const/16 v0, 0xde

    if-ge v6, v0, :cond_9

    .line 191
    invoke-static {}, Lcom/dolphin/browser/f/d/d;->a()Lcom/dolphin/browser/f/d/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/f/d/d;->b()V

    .line 194
    :cond_9
    const/16 v0, 0xe0

    if-ge v6, v0, :cond_a

    .line 195
    invoke-static {}, Lcom/dolphin/browser/preload/m;->a()Lcom/dolphin/browser/preload/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/preload/m;->g()V

    .line 198
    :cond_a
    const/16 v0, 0xe4

    if-ge v6, v0, :cond_b

    .line 199
    invoke-static {}, Lcom/dolphin/browser/preload/c;->f()V

    .line 202
    :cond_b
    const/16 v0, 0xeb

    if-ge v6, v0, :cond_c

    .line 203
    invoke-static {}, Lcom/dolphin/browser/search/a/c;->a()Lcom/dolphin/browser/search/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/search/a/c;->g()V

    .line 205
    invoke-virtual {v5}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->u()V

    .line 208
    :cond_c
    if-ge v6, v10, :cond_e

    .line 209
    invoke-static {v4}, Lcom/dolphin/browser/l/l;->a(Landroid/content/Context;)Lcom/dolphin/browser/l/l;

    move-result-object v0

    .line 211
    invoke-virtual {v0}, Lcom/dolphin/browser/l/l;->f()V

    .line 213
    invoke-virtual {v0}, Lcom/dolphin/browser/l/l;->i()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 214
    sget-object v3, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v3, 0x7f0e0421

    invoke-virtual {v4, v3}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v8, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v8, 0x7f0e04ac

    invoke-virtual {v4, v8}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v9, 0x7f0e031f

    invoke-virtual {v4, v9}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v3, v8, v9}, Lcom/dolphin/browser/util/at;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 219
    invoke-virtual {v0}, Lcom/dolphin/browser/l/l;->j()V

    .line 224
    :cond_d
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(Z)Z

    .line 225
    invoke-virtual {v5, v4, v2}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->o(Landroid/content/Context;Z)V

    .line 227
    :cond_e
    if-ne v10, v6, :cond_f

    .line 228
    invoke-static {v4}, Lcom/dolphin/browser/l/l;->a(Landroid/content/Context;)Lcom/dolphin/browser/l/l;

    move-result-object v0

    .line 230
    invoke-virtual {v0}, Lcom/dolphin/browser/l/l;->k()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 231
    invoke-virtual {v0}, Lcom/dolphin/browser/l/l;->b()V

    .line 236
    :cond_f
    if-lt v11, v6, :cond_10

    .line 237
    invoke-virtual {v5, v4, v2}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->o(Landroid/content/Context;Z)V

    .line 242
    :cond_10
    const/16 v0, 0xff

    if-lt v0, v6, :cond_11

    .line 243
    if-le v6, v11, :cond_15

    move v0, v1

    .line 244
    :goto_1
    invoke-static {v0}, Lcom/dolphin/browser/util/dm;->a(Z)V

    .line 248
    :cond_11
    const/16 v0, 0xf8

    if-le v6, v0, :cond_12

    const/16 v0, 0x100

    if-ge v6, v0, :cond_12

    .line 249
    invoke-static {}, Lcom/dolphin/browser/util/ao;->a()Lcom/dolphin/browser/util/ao;

    move-result-object v0

    .line 250
    invoke-static {}, Lcom/dolphin/browser/analytics/e;->e()Lcom/dolphin/browser/analytics/e;

    move-result-object v3

    invoke-virtual {v0}, Lcom/dolphin/browser/util/ao;->b()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/dolphin/browser/analytics/e;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 252
    invoke-virtual {v0}, Lcom/dolphin/browser/util/ao;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/dolphin/browser/util/ao;->a(Ljava/lang/String;)V

    .line 257
    :cond_12
    const/16 v0, 0x106

    if-ge v6, v0, :cond_16

    .line 258
    const/4 v0, 0x4

    new-array v8, v0, [Ljava/lang/String;

    const-string v0, "bug_report.zip"

    aput-object v0, v8, v2

    const-string v0, "report.zip"

    aput-object v0, v8, v1

    const/4 v0, 0x2

    const-string v3, "traces.txt"

    aput-object v3, v8, v0

    const/4 v0, 0x3

    const-string v3, "minidump.dmp"

    aput-object v3, v8, v0

    .line 260
    invoke-virtual {v5}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getDownloadDir()Ljava/io/File;

    move-result-object v9

    .line 261
    invoke-virtual {v5}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->ab()Ljava/io/File;

    move-result-object v10

    move v0, v2

    .line 262
    :goto_2
    array-length v3, v8

    if-ge v0, v3, :cond_16

    .line 263
    new-instance v11, Ljava/io/File;

    aget-object v3, v8, v0

    invoke-direct {v11, v9, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 264
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-virtual {v11}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 266
    :try_start_0
    new-instance v3, Ljava/io/File;

    aget-object v12, v8, v0

    invoke-direct {v3, v10, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v11, v3}, Lcom/dolphin/browser/util/IOUtilities;->copyFile(Ljava/io/File;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 271
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    .line 262
    :cond_13
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 175
    :cond_14
    invoke-virtual {v5, v2}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->d(Z)V

    goto/16 :goto_0

    :cond_15
    move v0, v2

    .line 243
    goto :goto_1

    .line 268
    :catch_0
    move-exception v3

    .line 269
    :try_start_1
    invoke-static {v3}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 271
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    goto :goto_3

    :catchall_0
    move-exception v0

    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    throw v0

    .line 277
    :cond_16
    const/16 v0, 0x108

    if-ge v6, v0, :cond_17

    .line 279
    invoke-static {}, Lcom/dolphin/browser/push/ab;->a()Lcom/dolphin/browser/push/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/push/ab;->b()V

    .line 282
    :cond_17
    const/16 v0, 0x118

    if-ge v6, v0, :cond_18

    .line 284
    invoke-static {}, Lcom/dolphin/browser/search/f/e;->a()Lcom/dolphin/browser/search/f/e;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/search/f/e;->a(Z)V

    .line 286
    invoke-static {}, Lcom/dolphin/browser/search/c/c;->a()Lcom/dolphin/browser/search/c/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/search/c/c;->c()V

    .line 289
    :cond_18
    const/16 v0, 0x12c

    if-ge v6, v0, :cond_19

    .line 292
    invoke-static {}, Lcom/dolphin/browser/ui/a/a;->a()Lcom/dolphin/browser/ui/a/a;

    move-result-object v0

    .line 293
    invoke-virtual {v0}, Lcom/dolphin/browser/ui/a/a;->d()Lcom/dolphin/browser/ui/a/c;

    move-result-object v3

    sget-object v8, Lcom/dolphin/browser/ui/a/c;->b:Lcom/dolphin/browser/ui/a/c;

    if-ne v3, v8, :cond_19

    .line 294
    invoke-virtual {v0, v1}, Lcom/dolphin/browser/ui/a/a;->a(I)V

    .line 297
    invoke-static {v4}, Ldolphin/preference/z;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "times_of_close_tab_in_tablist"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 305
    :cond_19
    const/16 v0, 0x13c

    if-ge v6, v0, :cond_1a

    .line 310
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v0

    invoke-static {v0}, Ldolphin/preference/z;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 312
    const-string v3, "pref_desktop_last_sync_time"

    invoke-interface {v0, v3, v13, v14}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    .line 313
    cmp-long v0, v8, v13

    if-eqz v0, :cond_1a

    .line 314
    const/16 v0, 0xc0

    invoke-static {v0}, Lcom/dolphin/browser/sync/a/b;->a(I)Lcom/dolphin/browser/sync/a/a;

    move-result-object v0

    .line 317
    invoke-interface {v0, v8, v9}, Lcom/dolphin/browser/sync/a/a;->a(J)V

    .line 321
    :cond_1a
    const/16 v0, 0x13e

    if-ge v6, v0, :cond_1c

    .line 324
    invoke-static {}, Lcom/dolphin/browser/util/bn;->a()Lcom/dolphin/browser/util/bn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/util/bn;->c()Ljava/util/Locale;

    move-result-object v0

    .line 325
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    const-string v8, "ID"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1b

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v3, "in"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 327
    :cond_1b
    const-string v0, "Berita"

    const-string v3, "http://now.dolphin.com/id-id/"

    const-string v8, "http://opsen.dolphin-browser.com/resources/icon/news_speedDial-BETA2.png"

    invoke-static {v0, v3, v8}, Lmobi/mgeek/TunnyBrowser/hq;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    :cond_1c
    const/16 v0, 0x140

    if-ge v6, v0, :cond_1d

    .line 336
    invoke-static {v4}, Ldolphin/preference/z;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "pref_left_content_index"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "scrollable_left_state"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "need_show_bookmark_instructor"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "need_show_tabadded_instructor"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "need_show_tablist_instructor"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 345
    :cond_1d
    const/16 v0, 0x144

    if-ge v6, v0, :cond_1e

    .line 346
    invoke-direct {p0, v4}, Lmobi/mgeek/TunnyBrowser/hq;->a(Lmobi/mgeek/TunnyBrowser/BrowserActivity;)V

    .line 354
    :cond_1e
    invoke-static {}, Lcom/dolphin/browser/core/g;->a()Lcom/dolphin/browser/core/g;

    move-result-object v0

    .line 356
    invoke-direct {p0, v4, v6}, Lmobi/mgeek/TunnyBrowser/hq;->a(Lmobi/mgeek/TunnyBrowser/BrowserActivity;I)Z

    move-result v3

    .line 358
    invoke-virtual {v0, v7, v3}, Lcom/dolphin/browser/core/g;->a(ZZ)V

    .line 360
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/hq;->c()V

    .line 363
    invoke-static {}, Lcom/dolphin/browser/webkit/management/EngineStrategyManager;->a()Lcom/dolphin/browser/webkit/management/EngineStrategyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/webkit/management/EngineStrategyManager;->c()V

    .line 366
    new-instance v0, Lcom/dolphin/browser/preload/n;

    invoke-virtual {v4}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/dolphin/browser/preload/n;-><init>(Landroid/content/Context;)V

    .line 368
    invoke-virtual {v0, v1}, Lcom/dolphin/browser/preload/n;->b(Z)V

    .line 370
    invoke-virtual {v5}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->C()V

    .line 371
    invoke-virtual {v5, v4, v2}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->e(Landroid/content/Context;Z)V

    .line 372
    invoke-static {}, Lcom/dolphin/browser/core/g;->a()Lcom/dolphin/browser/core/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/g;->g()V

    .line 374
    invoke-static {v4}, Lcom/dolphin/browser/promoted/j;->e(Landroid/content/Context;)V

    .line 375
    invoke-virtual {v4}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->ae()V

    .line 376
    invoke-static {}, Lcom/dolphin/browser/m/d;->a()Lcom/dolphin/browser/m/d;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/dolphin/browser/m/d;->a(Z)V

    .line 377
    invoke-static {}, Lcom/dolphin/browser/m/d;->a()Lcom/dolphin/browser/m/d;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Lcom/dolphin/browser/m/d;->a(J)V

    .line 378
    invoke-static {}, Lcom/dolphin/browser/promoted/f;->a()Lcom/dolphin/browser/promoted/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/promoted/f;->c()V

    .line 380
    const/16 v0, 0x10e

    if-eq v6, v0, :cond_1f

    const/16 v0, 0x10f

    if-eq v6, v0, :cond_1f

    .line 381
    invoke-static {}, Lcom/dolphin/browser/preload/m;->a()Lcom/dolphin/browser/preload/m;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/dolphin/browser/preload/m;->b(Z)V

    .line 386
    :goto_4
    invoke-static {}, Lcom/dolphin/browser/update/f;->a()Lcom/dolphin/browser/update/f;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/update/f;->a(Z)V

    .line 387
    return-void

    .line 383
    :cond_1f
    new-instance v0, Lcom/dolphin/browser/preload/n;

    invoke-direct {v0, v4}, Lcom/dolphin/browser/preload/n;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/preload/n;->d(Z)V

    goto :goto_4
.end method
