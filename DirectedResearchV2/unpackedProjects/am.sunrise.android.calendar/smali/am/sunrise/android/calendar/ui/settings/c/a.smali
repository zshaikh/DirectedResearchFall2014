.class public Lam/sunrise/android/calendar/ui/settings/c/a;
.super Ljava/lang/Object;
.source "PList.java"


# instance fields
.field private a:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method

.method public static a(Ljava/io/InputStream;)Lam/sunrise/android/calendar/ui/settings/c/a;
    .locals 11

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 72
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v6

    .line 73
    const-string v1, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    const/4 v3, 0x0

    invoke-interface {v6, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V

    .line 74
    const/4 v1, 0x0

    invoke-interface {v6, p0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 78
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 79
    new-instance v7, Ljava/util/Stack;

    invoke-direct {v7}, Ljava/util/Stack;-><init>()V

    move v3, v1

    move v4, v2

    move-object v1, v0

    move-object v2, v0

    .line 81
    :goto_0
    if-eq v3, v5, :cond_e

    .line 82
    packed-switch v3, :pswitch_data_0

    :cond_0
    move-object v3, v1

    move-object v1, v2

    .line 142
    :goto_1
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    move-object v10, v1

    move-object v1, v3

    move v3, v2

    move-object v2, v10

    goto :goto_0

    .line 84
    :pswitch_0
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 85
    const-string v8, "plist"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    move-object v3, v1

    move v4, v5

    move-object v1, v2

    .line 86
    goto :goto_1

    .line 88
    :cond_1
    if-nez v4, :cond_2

    .line 89
    const-string v1, "PList"

    const-string v2, "Invalid PList file"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lam/sunrise/android/calendar/b/i;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 155
    :goto_2
    return-object v0

    .line 92
    :cond_2
    const-string v8, "dict"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 93
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 94
    invoke-static {v7, v1, v3}, Lam/sunrise/android/calendar/ui/settings/c/a;->a(Ljava/util/Stack;Ljava/lang/String;Ljava/lang/Object;)V

    .line 95
    invoke-virtual {v7, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    :cond_3
    :goto_3
    if-nez v2, :cond_0

    .line 122
    invoke-virtual {v7}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v1

    move-object v1, v2

    goto :goto_1

    .line 96
    :cond_4
    const-string v8, "array"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 97
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 98
    invoke-static {v7, v1, v3}, Lam/sunrise/android/calendar/ui/settings/c/a;->a(Ljava/util/Stack;Ljava/lang/String;Ljava/lang/Object;)V

    .line 99
    invoke-virtual {v7, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_3

    .line 149
    :catch_0
    move-exception v1

    .line 150
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_2

    .line 100
    :cond_5
    :try_start_1
    const-string v8, "key"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 101
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 102
    :cond_6
    const-string v8, "integer"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 103
    new-instance v3, Ljava/lang/Integer;

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v8}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-static {v7, v1, v3}, Lam/sunrise/android/calendar/ui/settings/c/a;->a(Ljava/util/Stack;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    .line 151
    :catch_1
    move-exception v1

    .line 152
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 104
    :cond_7
    :try_start_2
    const-string v8, "string"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 105
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v1, v3}, Lam/sunrise/android/calendar/ui/settings/c/a;->a(Ljava/util/Stack;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3

    .line 106
    :cond_8
    const-string v8, "false"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 107
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v7, v1, v3}, Lam/sunrise/android/calendar/ui/settings/c/a;->a(Ljava/util/Stack;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3

    .line 108
    :cond_9
    const-string v8, "true"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 109
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v7, v1, v3}, Lam/sunrise/android/calendar/ui/settings/c/a;->a(Ljava/util/Stack;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3

    .line 110
    :cond_a
    const-string v8, "data"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 111
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 112
    invoke-static {v7, v1, v3}, Lam/sunrise/android/calendar/ui/settings/c/a;->a(Ljava/util/Stack;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 113
    :cond_b
    const-string v8, "date"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 114
    new-instance v3, Ljava/util/Date;

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Date;->parse(Ljava/lang/String;)J

    move-result-wide v8

    invoke-direct {v3, v8, v9}, Ljava/util/Date;-><init>(J)V

    .line 115
    invoke-static {v7, v1, v3}, Lam/sunrise/android/calendar/ui/settings/c/a;->a(Ljava/util/Stack;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 116
    :cond_c
    const-string v8, "real"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 117
    new-instance v3, Ljava/lang/Float;

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    invoke-direct {v3, v8}, Ljava/lang/Float;-><init>(F)V

    .line 118
    invoke-static {v7, v1, v3}, Lam/sunrise/android/calendar/ui/settings/c/a;->a(Ljava/util/Stack;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 130
    :pswitch_1
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 131
    const-string v8, "dict"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_d

    const-string v8, "array"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 132
    :cond_d
    invoke-virtual {v7}, Ljava/util/Stack;->empty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 133
    invoke-virtual {v7}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-object v3, v1

    move-object v1, v2

    goto/16 :goto_1

    .line 145
    :cond_e
    new-instance v1, Lam/sunrise/android/calendar/ui/settings/c/a;

    invoke-direct {v1}, Lam/sunrise/android/calendar/ui/settings/c/a;-><init>()V

    .line 146
    iput-object v2, v1, Lam/sunrise/android/calendar/ui/settings/c/a;->a:Ljava/lang/Object;
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-object v0, v1

    .line 147
    goto/16 :goto_2

    .line 82
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static a(Ljava/util/Stack;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 159
    invoke-virtual {p0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 160
    invoke-virtual {p0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    .line 161
    if-eqz v0, :cond_0

    .line 162
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/util/ArrayList;

    if-ne v1, v2, :cond_1

    .line 163
    check-cast v0, Ljava/util/ArrayList;

    .line 164
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 165
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/util/HashMap;

    if-ne v1, v2, :cond_0

    .line 166
    check-cast v0, Ljava/util/HashMap;

    .line 167
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 8

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 50
    const-string v2, "\\."

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 51
    invoke-static {v4}, Lam/sunrise/android/calendar/b/b;->a([Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 52
    const-string v2, "PLIST"

    const-string v3, "keyPath is invalid"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2, v3, v0}, Lam/sunrise/android/calendar/b/i;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    .line 67
    :cond_0
    :goto_0
    return-object v0

    .line 56
    :cond_1
    iget-object v2, p0, Lam/sunrise/android/calendar/ui/settings/c/a;->a:Ljava/lang/Object;

    .line 57
    array-length v5, v4

    move v7, v0

    move-object v0, v2

    move v2, v7

    :goto_1
    if-ge v2, v5, :cond_0

    aget-object v3, v4, v2

    .line 58
    instance-of v6, v0, Ljava/util/HashMap;

    if-nez v6, :cond_2

    move-object v0, v1

    .line 59
    goto :goto_0

    .line 61
    :cond_2
    check-cast v0, Ljava/util/HashMap;

    .line 62
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    move-object v0, v1

    .line 63
    goto :goto_0

    .line 65
    :cond_3
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 57
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move-object v0, v3

    goto :goto_1
.end method
