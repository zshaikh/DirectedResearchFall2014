.class public Lcom/dolphin/browser/push/a/c;
.super Ljava/lang/Object;
.source "PushMessageFactory.java"


# static fields
.field private static final a:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-string v0, "((?:http|https)|(?:dolphin|fullscreen|dolphingame):\\/\\/)(.*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/push/a/c;->a:Ljava/util/regex/Pattern;

    return-void
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/dolphin/browser/push/v;
    .locals 10

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 25
    if-nez p0, :cond_0

    move-object v0, v3

    .line 131
    :goto_0
    return-object v0

    .line 29
    :cond_0
    const-string v2, "type"

    invoke-virtual {p0, v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    .line 30
    if-ne v5, v4, :cond_1

    move-object v0, v3

    .line 31
    goto :goto_0

    .line 34
    :cond_1
    const-string v2, "id"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    .line 36
    const-string v2, "data"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 39
    packed-switch v5, :pswitch_data_0

    move v0, v1

    move-object v1, v3

    .line 125
    :goto_1
    if-nez v0, :cond_b

    move-object v0, v3

    .line 126
    goto :goto_0

    .line 42
    :pswitch_0
    new-instance v2, Lcom/dolphin/browser/push/a/f;

    invoke-direct {v2, v7}, Lcom/dolphin/browser/push/a/f;-><init>(Lorg/json/JSONObject;)V

    .line 43
    invoke-virtual {v2}, Lcom/dolphin/browser/push/a/f;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    sget-object v4, Lcom/dolphin/browser/push/a/c;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v2}, Lcom/dolphin/browser/push/a/f;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v2}, Lcom/dolphin/browser/push/a/f;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    :goto_2
    move-object v1, v2

    .line 47
    goto :goto_1

    :cond_2
    move v0, v1

    .line 43
    goto :goto_2

    .line 51
    :pswitch_1
    new-instance v2, Lcom/dolphin/browser/push/a/f;

    invoke-direct {v2, v7}, Lcom/dolphin/browser/push/a/f;-><init>(Lorg/json/JSONObject;)V

    .line 52
    invoke-virtual {v2}, Lcom/dolphin/browser/push/a/f;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    sget-object v4, Lcom/dolphin/browser/push/a/c;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v2}, Lcom/dolphin/browser/push/a/f;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v2}, Lcom/dolphin/browser/push/a/f;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v2}, Lcom/dolphin/browser/push/a/f;->c()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v2}, Lcom/dolphin/browser/push/a/f;->d()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v2}, Lcom/dolphin/browser/push/a/f;->e()I

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    :goto_3
    move-object v1, v2

    .line 59
    goto :goto_1

    :cond_4
    move v0, v1

    .line 52
    goto :goto_3

    .line 63
    :pswitch_2
    new-instance v2, Lcom/dolphin/browser/push/a/f;

    invoke-direct {v2, v7}, Lcom/dolphin/browser/push/a/f;-><init>(Lorg/json/JSONObject;)V

    .line 64
    invoke-virtual {v2}, Lcom/dolphin/browser/push/a/f;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    sget-object v4, Lcom/dolphin/browser/push/a/c;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v2}, Lcom/dolphin/browser/push/a/f;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v2}, Lcom/dolphin/browser/push/a/f;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    :goto_4
    move-object v1, v2

    .line 68
    goto/16 :goto_1

    :cond_5
    move v0, v1

    .line 64
    goto :goto_4

    .line 72
    :pswitch_3
    new-instance v4, Lcom/dolphin/browser/push/a/e;

    invoke-direct {v4, v7}, Lcom/dolphin/browser/push/a/e;-><init>(Lorg/json/JSONObject;)V

    .line 74
    invoke-virtual {v4}, Lcom/dolphin/browser/push/a/e;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual {v4}, Lcom/dolphin/browser/push/a/e;->b()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_8

    move v2, v0

    .line 76
    :goto_5
    if-eqz v2, :cond_c

    .line 77
    invoke-virtual {v4}, Lcom/dolphin/browser/push/a/e;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/push/a/f;

    .line 78
    invoke-virtual {v0}, Lcom/dolphin/browser/push/a/f;->a()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_7

    sget-object v8, Lcom/dolphin/browser/push/a/c;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v0}, Lcom/dolphin/browser/push/a/f;->a()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-virtual {v0}, Lcom/dolphin/browser/push/a/f;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_7
    :goto_6
    move v0, v1

    move-object v1, v4

    .line 87
    goto/16 :goto_1

    :cond_8
    move v2, v1

    .line 74
    goto :goto_5

    .line 90
    :pswitch_4
    new-instance v2, Lcom/dolphin/browser/push/a/d;

    invoke-direct {v2, p0}, Lcom/dolphin/browser/push/a/d;-><init>(Lorg/json/JSONObject;)V

    .line 91
    invoke-virtual {v2}, Lcom/dolphin/browser/push/a/d;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9

    :goto_7
    move-object v1, v2

    .line 93
    goto/16 :goto_1

    :cond_9
    move v0, v1

    .line 91
    goto :goto_7

    .line 96
    :pswitch_5
    new-instance v2, Lcom/dolphin/browser/push/a/d;

    invoke-direct {v2, p0}, Lcom/dolphin/browser/push/a/d;-><init>(Lorg/json/JSONObject;)V

    .line 97
    invoke-virtual {v2}, Lcom/dolphin/browser/push/a/d;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_a

    :goto_8
    move-object v1, v2

    .line 99
    goto/16 :goto_1

    :cond_a
    move v0, v1

    .line 97
    goto :goto_8

    .line 104
    :pswitch_6
    new-instance v1, Lcom/dolphin/browser/push/a/b;

    invoke-direct {v1, v7}, Lcom/dolphin/browser/push/a/b;-><init>(Lorg/json/JSONObject;)V

    goto/16 :goto_1

    .line 112
    :pswitch_7
    :try_start_0
    const-string v1, "id"

    invoke-virtual {v7, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    :goto_9
    new-instance v1, Lcom/dolphin/browser/push/a/b;

    invoke-direct {v1, v7}, Lcom/dolphin/browser/push/a/b;-><init>(Lorg/json/JSONObject;)V

    goto/16 :goto_1

    .line 129
    :cond_b
    new-instance v0, Lcom/dolphin/browser/push/v;

    invoke-direct {v0, v6, v5, v1}, Lcom/dolphin/browser/push/v;-><init>(IILcom/dolphin/browser/push/a/a;)V

    goto/16 :goto_0

    .line 113
    :catch_0
    move-exception v1

    goto :goto_9

    :cond_c
    move v1, v2

    goto :goto_6

    .line 39
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method
