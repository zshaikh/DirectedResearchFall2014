.class public Lcom/dolphin/browser/promoted/j;
.super Ljava/lang/Object;
.source "Promotion.java"


# static fields
.field private static a:Lcom/dolphin/browser/promoted/l;

.field private static b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dolphin/browser/promoted/m;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dolphin/browser/promoted/m;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static a()Lcom/dolphin/browser/promoted/l;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/dolphin/browser/promoted/j;->a:Lcom/dolphin/browser/promoted/l;

    return-object v0
.end method

.method private static a(Landroid/content/Context;Lorg/json/JSONObject;)Lcom/dolphin/browser/promoted/m;
    .locals 8

    .prologue
    .line 226
    const-string v0, "type"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 227
    const/4 v7, 0x0

    .line 230
    packed-switch v0, :pswitch_data_0

    :goto_0
    move-object v0, v7

    .line 262
    :goto_1
    return-object v0

    .line 232
    :pswitch_0
    :try_start_0
    new-instance v0, Lcom/dolphin/browser/promoted/m;

    const-string v1, "Url"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Title"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "last_modified"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "id"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/dolphin/browser/promoted/m;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 259
    :catch_0
    move-exception v0

    .line 260
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_0

    .line 236
    :pswitch_1
    :try_start_1
    new-instance v5, Lcom/dolphin/browser/promoted/d;

    invoke-direct {v5, p0}, Lcom/dolphin/browser/promoted/d;-><init>(Landroid/content/Context;)V

    .line 237
    new-instance v0, Lcom/dolphin/browser/promoted/m;

    invoke-interface {v5}, Lcom/dolphin/browser/promoted/t;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5}, Lcom/dolphin/browser/promoted/t;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    const-string v6, ""

    invoke-direct/range {v0 .. v6}, Lcom/dolphin/browser/promoted/m;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/dolphin/browser/promoted/t;Ljava/lang/String;)V

    goto :goto_1

    .line 241
    :pswitch_2
    new-instance v5, Lcom/dolphin/browser/promoted/u;

    invoke-direct {v5, p0}, Lcom/dolphin/browser/promoted/u;-><init>(Landroid/content/Context;)V

    .line 242
    new-instance v0, Lcom/dolphin/browser/promoted/m;

    invoke-interface {v5}, Lcom/dolphin/browser/promoted/t;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5}, Lcom/dolphin/browser/promoted/t;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    const-string v6, ""

    invoke-direct/range {v0 .. v6}, Lcom/dolphin/browser/promoted/m;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/dolphin/browser/promoted/t;Ljava/lang/String;)V

    goto :goto_1

    .line 246
    :pswitch_3
    new-instance v5, Lcom/dolphin/browser/promoted/s;

    invoke-direct {v5, p0}, Lcom/dolphin/browser/promoted/s;-><init>(Landroid/content/Context;)V

    .line 247
    new-instance v0, Lcom/dolphin/browser/promoted/m;

    invoke-interface {v5}, Lcom/dolphin/browser/promoted/t;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5}, Lcom/dolphin/browser/promoted/t;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    const-string v6, ""

    invoke-direct/range {v0 .. v6}, Lcom/dolphin/browser/promoted/m;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/dolphin/browser/promoted/t;Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_4
    move-object v0, v7

    .line 251
    goto/16 :goto_1

    .line 254
    :pswitch_5
    new-instance v5, Lcom/dolphin/browser/promoted/b;

    invoke-direct {v5, p0}, Lcom/dolphin/browser/promoted/b;-><init>(Landroid/content/Context;)V

    .line 255
    new-instance v0, Lcom/dolphin/browser/promoted/m;

    invoke-interface {v5}, Lcom/dolphin/browser/promoted/t;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5}, Lcom/dolphin/browser/promoted/t;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x6

    const-string v6, ""

    invoke-direct/range {v0 .. v6}, Lcom/dolphin/browser/promoted/m;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/dolphin/browser/promoted/t;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 230
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 139
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 140
    const-string v1, "promotion_cache"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 142
    :try_start_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 143
    invoke-static {v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 148
    :cond_0
    :goto_0
    return-object v0

    .line 145
    :catch_0
    move-exception v1

    .line 146
    invoke-static {v1}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static a(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dolphin/browser/promoted/m;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 284
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 285
    :cond_0
    const/4 v0, 0x0

    .line 301
    :goto_0
    return-object v0

    .line 287
    :cond_1
    const-wide/16 v0, 0x0

    .line 288
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-wide v1, v0

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/promoted/m;

    .line 289
    if-eqz v0, :cond_2

    .line 293
    :try_start_0
    iget-object v0, v0, Lcom/dolphin/browser/promoted/m;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v3

    .line 294
    cmp-long v0, v1, v3

    if-gtz v0, :cond_3

    move-wide v1, v3

    :cond_3
    move-wide v0, v1

    :goto_2
    move-wide v1, v0

    .line 299
    goto :goto_1

    .line 297
    :catch_0
    move-exception v0

    .line 298
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    move-wide v0, v1

    goto :goto_2

    .line 301
    :cond_4
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/dolphin/browser/promoted/k;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/dolphin/browser/promoted/k;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dolphin/browser/promoted/m;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 74
    .line 76
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/dolphin/browser/promoted/j;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "?vn="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/dolphin/browser/promoted/j;->a:Lcom/dolphin/browser/promoted/l;

    invoke-interface {v2}, Lcom/dolphin/browser/promoted/l;->b()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/dolphin/browser/promoted/j;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 83
    invoke-static {p0, v0}, Lcom/dolphin/browser/util/bs;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 84
    new-instance v2, Lcom/dolphin/browser/Network/h;

    invoke-direct {v2, v0}, Lcom/dolphin/browser/Network/h;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lcom/dolphin/browser/Network/h;->a([Lorg/apache/http/Header;)Lcom/dolphin/browser/Network/h;

    move-result-object v0

    const-string v2, "PromotionLink"

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/Network/h;->b(Ljava/lang/String;)Lcom/dolphin/browser/Network/h;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/Network/h;->a(Z)Lcom/dolphin/browser/Network/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/Network/h;->a()Lcom/dolphin/browser/Network/d;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/Network/d;->b(Z)Lcom/dolphin/browser/Network/n;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 91
    :try_start_1
    iget-object v0, v2, Lcom/dolphin/browser/Network/n;->b:Lorg/apache/http/StatusLine;

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    .line 92
    const/16 v3, 0xc8

    if-ne v3, v0, :cond_2

    .line 94
    if-eqz p1, :cond_0

    .line 95
    invoke-interface {p1}, Lcom/dolphin/browser/promoted/k;->a()V

    .line 97
    :cond_0
    iget-object v0, v2, Lcom/dolphin/browser/Network/n;->c:Lorg/apache/http/HttpEntity;

    invoke-static {v0}, Lcom/dolphin/browser/Network/l;->d(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v0

    .line 98
    if-eqz v0, :cond_1

    .line 99
    invoke-static {p0, v0}, Lcom/dolphin/browser/promoted/j;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 100
    invoke-static {v0}, Lcom/dolphin/browser/promoted/j;->a(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/dolphin/browser/promoted/j;->d(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 115
    invoke-static {v2}, Lcom/dolphin/browser/Network/l;->a(Lcom/dolphin/browser/Network/n;)V

    .line 118
    :goto_0
    return-object v0

    .line 115
    :cond_1
    invoke-static {v2}, Lcom/dolphin/browser/Network/l;->a(Lcom/dolphin/browser/Network/n;)V

    move-object v0, v1

    goto :goto_0

    .line 105
    :cond_2
    const/16 v3, 0x130

    if-ne v3, v0, :cond_3

    .line 115
    invoke-static {v2}, Lcom/dolphin/browser/Network/l;->a(Lcom/dolphin/browser/Network/n;)V

    move-object v0, v1

    goto :goto_0

    .line 110
    :cond_3
    :try_start_2
    const-string v3, "Promotion"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Server reply "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 115
    invoke-static {v2}, Lcom/dolphin/browser/Network/l;->a(Lcom/dolphin/browser/Network/n;)V

    :goto_1
    move-object v0, v1

    .line 118
    goto :goto_0

    .line 112
    :catch_0
    move-exception v0

    move-object v2, v1

    .line 113
    :goto_2
    :try_start_3
    const-string v3, "Promotion"

    invoke-static {v3, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 115
    invoke-static {v2}, Lcom/dolphin/browser/Network/l;->a(Lcom/dolphin/browser/Network/n;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    :goto_3
    invoke-static {v1}, Lcom/dolphin/browser/Network/l;->a(Lcom/dolphin/browser/Network/n;)V

    throw v0

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_3

    .line 112
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method public static final a(Landroid/content/Context;I)V
    .locals 3

    .prologue
    .line 193
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 194
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v1

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "delete_button_vis"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 195
    return-void
.end method

.method public static a(Landroid/content/Context;J)V
    .locals 3

    .prologue
    .line 178
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 179
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v1

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "promotion_last_deleted"

    invoke-interface {v0, v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 180
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 152
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 153
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v1

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "promotion_cache"

    invoke-static {p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 155
    return-void
.end method

.method public static a(Lcom/dolphin/browser/promoted/l;)V
    .locals 0

    .prologue
    .line 65
    sput-object p0, Lcom/dolphin/browser/promoted/j;->a:Lcom/dolphin/browser/promoted/l;

    .line 66
    return-void
.end method

.method private static b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    sget-object v0, Lcom/dolphin/browser/promoted/j;->a:Lcom/dolphin/browser/promoted/l;

    invoke-interface {v0}, Lcom/dolphin/browser/promoted/l;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 165
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 166
    const-string v1, "promotion_deletion_cache"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 168
    :try_start_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 169
    invoke-static {v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 174
    :cond_0
    :goto_0
    return-object v0

    .line 171
    :catch_0
    move-exception v1

    .line 172
    invoke-static {v1}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 159
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 160
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v1

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "promotion_deletion_cache"

    invoke-static {p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 162
    return-void
.end method

.method public static c(Landroid/content/Context;)J
    .locals 4

    .prologue
    .line 188
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 189
    const-string v1, "promotion_last_deleted"

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dolphin/browser/promoted/m;",
            ">;"
        }
    .end annotation

    .prologue
    .line 203
    const/4 v1, 0x0

    .line 205
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 207
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 208
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 209
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    .line 211
    :try_start_1
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 212
    invoke-static {p0, v4}, Lcom/dolphin/browser/promoted/j;->a(Landroid/content/Context;Lorg/json/JSONObject;)Lcom/dolphin/browser/promoted/m;

    move-result-object v4

    .line 213
    if-eqz v4, :cond_0

    .line 214
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 210
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 218
    :catch_0
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    .line 219
    :goto_1
    invoke-static {v1}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    .line 222
    :cond_1
    :goto_2
    return-object v0

    .line 218
    :catch_1
    move-exception v1

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_2
.end method

.method public static final d(Landroid/content/Context;)I
    .locals 3

    .prologue
    .line 198
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 199
    const-string v1, "delete_button_vis"

    const/16 v2, 0x8

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static d(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 133
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 134
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v1

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "promotion_last_update_time"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 136
    return-void
.end method

.method public static e(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 266
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 267
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v1

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "promotion_cache"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "promotion_last_update_time"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "promotion_deletion_cache"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "promotion_last_deleted"

    const-wide/16 v3, -0x1

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "delete_button_vis"

    const/16 v3, 0x8

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 273
    return-void
.end method

.method public static f(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 276
    const-string v0, ""

    .line 277
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&pn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&src="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/promoted/j;->a:Lcom/dolphin/browser/promoted/l;

    invoke-interface {v1}, Lcom/dolphin/browser/promoted/l;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 278
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&mt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/dolphin/browser/promoted/j;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&lc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&avn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 280
    return-object v0
.end method

.method public static g(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dolphin/browser/promoted/m;",
            ">;"
        }
    .end annotation

    .prologue
    .line 305
    sget-object v0, Lcom/dolphin/browser/promoted/j;->c:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    .line 306
    invoke-static {p0}, Lcom/dolphin/browser/promoted/j;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 307
    const/4 v0, 0x0

    .line 308
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 309
    invoke-static {p0, v1}, Lcom/dolphin/browser/promoted/j;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 311
    :cond_0
    if-nez v0, :cond_1

    .line 312
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 314
    :cond_1
    sput-object v0, Lcom/dolphin/browser/promoted/j;->c:Ljava/util/ArrayList;

    .line 316
    :cond_2
    sget-object v0, Lcom/dolphin/browser/promoted/j;->c:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static h(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dolphin/browser/promoted/m;",
            ">;"
        }
    .end annotation

    .prologue
    .line 320
    sget-object v0, Lcom/dolphin/browser/promoted/j;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    .line 321
    invoke-static {p0}, Lcom/dolphin/browser/promoted/j;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 322
    const/4 v0, 0x0

    .line 323
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 324
    invoke-static {p0, v1}, Lcom/dolphin/browser/promoted/j;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 326
    :cond_0
    if-nez v0, :cond_1

    .line 327
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 330
    :cond_1
    sput-object v0, Lcom/dolphin/browser/promoted/j;->b:Ljava/util/ArrayList;

    .line 333
    :cond_2
    sget-object v0, Lcom/dolphin/browser/promoted/j;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static i(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 337
    invoke-static {p0}, Lcom/dolphin/browser/promoted/j;->g(Landroid/content/Context;)Ljava/util/ArrayList;

    .line 338
    invoke-static {p0}, Lcom/dolphin/browser/promoted/j;->h(Landroid/content/Context;)Ljava/util/ArrayList;

    .line 339
    return-void
.end method

.method private static j(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 127
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 128
    const-string v1, "promotion_last_update_time"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 129
    return-object v0
.end method
